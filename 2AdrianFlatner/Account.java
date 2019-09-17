package encapsulation;

public class Account {

	private double balance;
	private double interestRate;
	
	public Account(double initialValue, double interestRate ) {
		checkIfNegative(initialValue);
		checkIfNegative(interestRate);
		this.balance = balance + initialValue;
		this.interestRate = interestRate;
	}
	
	public void checkIfNegative(double value) {
		if(value < 0) {
			throw new IllegalArgumentException("Number can't be negative");
		}
	}
	
	public double getBalance() {
		return balance;
	}
	
	public double getInterestRate() {
		return interestRate;
	}
	
	
	public void deposit(double amount) {
		checkIfNegative(amount);
		balance += amount;
		
	}
	public void addInterest() {
		balance += (balance*(interestRate/100));
		
	}
	
	public void setInterestRate(double interest) {
		checkIfNegative(interest);
		interestRate = interest;
	}
	
	public void withdraw(double amount) {
		checkIfNegative(amount);
		checkIfNegative(this.balance - amount);
		this.balance -= amount;
	}
	
	public static void main(String[] args) {
		Account account = new Account(200.0, 0.4);
		System.out.println(account.getBalance());
		account.deposit(100.00);
		System.out.println(account.getBalance());
		account.setInterestRate(0.4);
		account.addInterest();
		System.out.println(account.getBalance());
		System.out.println(account.toString());
		account.withdraw(50);
		System.out.println(account.toString());
		
	}
	
	public String toString() {
		return Double.toString(balance);
		
	}
	
	
}


