package interfaces;

public class Person2 implements Named {

	
	private String fullName;
	String[] nameParts;
	
	public Person2(String fullName) {
		this.fullName = fullName;
		this.nameParts = fullName.split(" ");
		
	}
	
	
	@Override
	public void setGivenName(String name) {
		// TODO Auto-generated method stub
		 this.fullName = name + " " + nameParts[1];
		 nameParts[0] = name;
	}

	@Override
	public String getGivenName() {
		// TODO Auto-generated method stub
		return nameParts[0];
	}

	@Override
	public void setFamilyName(String name) {
		// TODO Auto-generated method stub
		this.fullName = nameParts[0] + " " + name;
		nameParts[1] = name;
	}

	@Override
	public String getFamilyName() {
		// TODO Auto-generated method stub
		return nameParts[1];
		
	}

	@Override
	public void setFullName(String name) {
		// TODO Auto-generated method stub
		this.fullName = name;
	}

	@Override
	public String getFullName() {
		// TODO Auto-generated method stub
		return this.fullName;
	}
	
	public static void main(String[] args) {
		Person2 person = new Person2("Halvor Horge");
		
		System.out.println(person.getFamilyName());
		person.setGivenName("Adrian");
		System.out.println(person.getFullName());
		
	}
	
}

