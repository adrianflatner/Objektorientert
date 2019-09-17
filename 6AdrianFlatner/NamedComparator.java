package interfaces;

import java.util.Comparator;


public class NamedComparator implements Comparator<Named> {


	@Override
	public int compare(Named person1, Named person2) {
		// TODO Auto-generated method stub
		String person1Given = person1.getGivenName();
		String person1Family = person1.getFamilyName();
		String person2Given = person2.getGivenName();
		String person2Family = person2.getFamilyName();
		
		int compareFamily = person1Family.compareTo(person2Family);
		if(compareFamily == 0) {
			return person1Given.compareTo(person2Given);
		}
		else {
			return compareFamily;
		}
	}

	
	public static void main(String[] args) {
		Person1 p1 = new Person1("Halvor", "Horge");
		Person2 p2 = new Person2("Adrian Flatner");
		
		NamedComparator nc = new NamedComparator();
		System.out.println(nc.compare(p1, p2));
		
	}
}
