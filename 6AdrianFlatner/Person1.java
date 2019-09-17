package interfaces;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import of8.Athlete;

public class Person1 implements Named {
	
	private String givenName;
	private String familyName;
	
	

	
	public Person1(String givenName, String familyName) {
		this.givenName = givenName;
		this.familyName = familyName;
	}
	
	
	@Override
	public void setGivenName(String name) {
		// TODO Auto-generated method stub
		this.givenName = name;
	}

	@Override
	public String getGivenName() {
		// TODO Auto-generated method stub
		return this.givenName;
	}

	@Override
	public void setFamilyName(String name) {
		// TODO Auto-generated method stub
		this.familyName = name;
	}

	@Override
	public String getFamilyName() {
		// TODO Auto-generated method stub
		return this.familyName;
	}

	@Override
	public void setFullName(String name) {
		// TODO Auto-generated method stub
		String nameParts[] = name.split(" ");
		this.givenName = nameParts[0];
		this.familyName = nameParts[1];
	}

	@Override
	public String getFullName() {
		// TODO Auto-generated method stub
		return this.givenName + " " + this.familyName;
	}
	
	public static void main(String[] args) {
		Person1 person = new Person1("Halvor", "Horge");
		
		//System.out.println(person.getFamilyName());
		person.setGivenName("Adrian");
		//System.out.println(person.getFullName());
		person.setFullName("Adrian Flatner");
		//System.out.println(person.getFamilyName());
		
		
		Person1 p1 = new Person1("Halvor", "Horge");
		Person1 p2 = new Person1("Adrian", "Flatner");
		List<Named> list = new ArrayList<>();
		NamedComparator nc = new NamedComparator();
		list.add(p1);
		list.add(p2);
		Collections.sort(list,nc);
		for(Named p : list) {
			System.out.println(p.getFullName());
		}
		
	}




}
