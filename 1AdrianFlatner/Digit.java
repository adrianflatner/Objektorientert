package stateandbehavior;

public class Digit {

	int value = 0;
	int numberSystem;
	
	
	Digit(int numberSys) {
		numberSystem = numberSys;
		
	}
	
	int getValue() {
		return value;
	}
	
	boolean increment() {
		value += 1;
		if (value==numberSystem) {
			value = 0;
			return true;
		}
		else {
			return false;
		}
			
	}
	
	int getBase() {
		return numberSystem;
	}
	
	public String toString() {
		if (value == 10) {
			return ("A");
		}
		else if (value == 11) {
			return("B");
		}
		else if (value == 12) {
			return ("c");
		}
		else if (value == 13) {
			return ("D");
		}
		else if (value == 14) {
			return ("E");
		}
		else if (value == 15) {
			return ("F");
		}
		else {
			return Integer.toString(value);
		}
		
		
	}
	
	public static void main(String[] args) {
		Digit digit = new Digit(16);
		System.out.println(digit.increment());
		System.out.println("Number system: " + digit.getBase());
		System.out.println("Value: " + digit.getValue());
		System.out.println(digit.toString());
		
		
		
	}
}
