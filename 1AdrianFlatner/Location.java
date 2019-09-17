package stateandbehavior;

public class Location {

	
	int xPos = 0;
	int yPos = 0;
	
	
	
	void up() {
		yPos -= 1;
	}
	void down() {
		yPos += 1;
	}
	void right() {
		xPos += 1;
	}
	void left() {
		xPos -= 1;
	}
	int getX() {
		return xPos;
	}
	int getY() {
		return yPos;
	}
	
	public String toString(int pos) {
		return Integer.toString(pos);
	}
	
	public static void main(String[] args) {
		Location location = new Location();
		location.right();
		location.up();
		location.up();
		System.out.println("x posisjon: " + location.getX());
		System.out.println("y posisjon: " +  location.getY());
		System.out.println("x pos: " + location.toString(location.getX()));
		System.out.println("y pos: " + location.toString(location.getY()));
		
		
	}
	
	
}
