package game;

public class SudokuAction {
	private int row, column;
	private String value; 
	
	public SudokuAction(String input) {
		String values[] = input.split(",");
		row = Integer.parseInt(values[0]); 
		column = Integer.parseInt(values[1]);
		value = values[2];
	}
	
	public int getRow() {
		return row;
	}

	public int getColumn() {
		return column;
	}

	public String getValue() {
		return value;
	}
	
}
