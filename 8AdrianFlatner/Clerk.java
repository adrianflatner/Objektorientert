package patterns.delegation.office;

import java.util.function.BinaryOperator;

public class Clerk implements Employee {

	private int resourceCount = 1; 
	private int taskCount;
	private Printer printer;

	
	public Clerk(Printer printer) {
		this.printer = printer;
	}
	
	@Override
	public double doCalculations(BinaryOperator<Double> operation, double value1, double value2) {
		// TODO Auto-generated method stub
		taskCount += 1;
		return operation.apply(value1, value2);
	}

	@Override
	public void printDocument(String document) {
		// TODO Auto-generated method stub
		taskCount += 1;
		this.printer.printDocument(document, this);
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
		adrian.printDocument("C:\\Users\\figo_\\Documents\\tdt4100-2018-master2\\git\\tdt4100-2018\\ovinger\\src\\patterns\\delegation\\office\\dokument1");
		adrian.printDocument("C:\\Users\\figo_\\Documents\\tdt4100-2018-master2\\git\\tdt4100-2018\\ovinger\\src\\patterns\\delegation\\office\\dokument2");
		ola.printDocument("C:\\Users\\figo_\\Documents\\tdt4100-2018-master2\\git\\tdt4100-2018\\ovinger\\src\\patterns\\delegation\\office\\dokument2");
		System.out.println(bjørn.getPrintHistory(adrian));
		System.out.println(bjørn.getPrintHistory(ola));
		BinaryOperator<Double> opSum = (t1,t2) -> (t1+t2);   
		System.out.println(adrian.doCalculations(opSum, 1, 2));
	}

}
