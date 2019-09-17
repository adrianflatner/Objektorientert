package patterns.delegation.office;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.BinaryOperator;

public class Manager implements Employee {

	
	private Collection<Employee> employees = new ArrayList<Employee>();
	private int taskCount;
	private int resourceCount = 1;
	
	
	Manager (Collection<Employee> employees){ //- utløser et IllegalArgumentException dersom employees er tom
		if(employees.isEmpty()) {
			throw new IllegalArgumentException();
		}
		for (Employee employee : employees) {
			resourceCount += employee.getResourceCount();
		}
		this.employees = employees;
		
	}

	@Override
	public double doCalculations(BinaryOperator<Double> operation, double value1, double value2) {
		// TODO Auto-generated method stub
		taskCount += 1;
		Iterator<Employee> iterator = employees.iterator();
		double value;
		value = iterator.next().doCalculations(operation, value1, value2);
		return value;
		
		
		 
	}

	@Override
	public void printDocument(String document) {
		// TODO Auto-generated method stub
		taskCount += 1;
		Iterator<Employee> iterator = employees.iterator();
		iterator.next().printDocument(document);
	}

	@Override
	public int getTaskCount() {
		// TODO Auto-generated method stub
		return taskCount;
	}

	@Override
	public int getResourceCount() {
		// TODO Auto-generated method stub
		return resourceCount;
	}
	
	public static void main(String[] args) {
		Printer bjørn = new Printer();
		Clerk adrian = new Clerk(bjørn);
		Clerk ola = new Clerk(bjørn);
		Clerk hei = new Clerk(bjørn);
		Collection<Employee> resources = new ArrayList<Employee>();
		BinaryOperator<Double> opSum = (t1,t2) -> (t1+t2);   
		resources.add(adrian);
		resources.add(ola);
		Manager halvor = new Manager(resources);
		Collection<Employee> resources2 = new ArrayList<Employee>();
		resources2.add(hei);
		Manager mellomleder = new Manager(resources2);
		Collection<Employee> managers = new ArrayList<Employee>();
		managers.add(mellomleder);
		managers.add(halvor);
		Manager manager = new Manager(managers);
		//System.out.println(halvor.getResourceCount());
		halvor.printDocument("C:\\Users\\figo_\\Documents\\tdt4100-2018-master2\\git\\tdt4100-2018\\ovinger\\src\\patterns\\delegation\\office\\dokument1");
		//System.out.println(halvor.doCalculations(opSum, 1, 2));
		System.out.println(halvor.getResourceCount());
		System.out.println(manager.getResourceCount());
	}
	
}
