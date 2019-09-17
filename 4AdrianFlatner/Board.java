package game;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class Board {

	private String numbers = ".....2..38.273.45....6..87.9.8..5367..6...1..4513..9.8.84..3....79.512.62..8.....";
	
	private int rows, columns;
	
	private List<List<Cell>> board = new ArrayList();
	
	
	public Board() {
		this.rows = 9; 
		this.columns = 9; 
		
		for (int i=0; i<rows; i++) {
			board.add(new ArrayList<Cell>());
			for (int j=0; j<columns; j++) {
				String cellValue = " . ";//(int)(Math.random()*9);
				board.get(i).add(new Cell(cellValue));
				
			}
		}
		
		
	startBoard(this.numbers);
		
		
	}
	
	public boolean isConflict(int row, int column, String number) {
		
		List<String> arrList = new ArrayList();
		List<String> arrList2 = new ArrayList();
		List<String> arrList3 = new ArrayList();
		List<String> arrList4 = new ArrayList();
		List<String> arrList5 = new ArrayList();
		List<String> arrList6 = new ArrayList();
		List<String> arrList7 = new ArrayList();
		List<String> arrList8 = new ArrayList();
		List<String> arrList9 = new ArrayList();
		
		for (int i=0; i<3; i++) {
			for (int j=0; j<3; j++) {
				arrList.add(board.get(i).get(j).getValue());
				arrList2.add(board.get(i).get(j+3).getValue());
				arrList3.add(board.get(i).get(j+6).getValue());
				arrList4.add(board.get(i+3).get(j).getValue());
				arrList5.add(board.get(i+3).get(j+3).getValue());
				arrList6.add(board.get(i+3).get(j+6).getValue());
				arrList7.add(board.get(i+6).get(j).getValue());
				arrList8.add(board.get(i+6).get(j+3).getValue());
				arrList9.add(board.get(i+6).get(j+6).getValue());
			}
		}
		
		List<List> arrLists = new ArrayList();
		arrLists.add(arrList);
		arrLists.add(arrList2);
		arrLists.add(arrList3);
		arrLists.add(arrList4);
		arrLists.add(arrList5);
		arrLists.add(arrList6);
		arrLists.add(arrList7);
		arrLists.add(arrList8);
		arrLists.add(arrList9);
		
		
		
		Cell myCell = new Cell(number);
		
		
		for (int i=0; i<3; i++) {
			
			if((row == 0 || row == 1 || row == 2 ) && (column == 0 + i*3  || column == 1 + i*3 || column == 2 + i*3)) {
				if(!(arrLists.get(i).contains("("+myCell.getValue()+")"))&&(!(arrLists.get(i).contains(" "+myCell.getValue()+" ")))) {
					return true;
				}
			}
			
			if((row == 4 || row == 5 || row == 6 ) && (column == 0 + i*3  || column == 1 + i*3 || column == 2 + i*3)) {
				if(!(arrLists.get(i+3).contains("("+myCell.getValue()+")"))&&(!(arrLists.get(i+3).contains(" "+myCell.getValue()+" ")))) {
					return true;
				}
			}
			
			if((row == 7 || row == 8 || row == 9 ) && (column == 0 + i*3  || column == 1 + i*3 || column == 2 + i*3)) {
				if(!(arrLists.get(i+6).contains("("+myCell.getValue()+")"))&&(!(arrLists.get(i+6).contains(" "+myCell.getValue()+" ")))) {
					return true;
				}
			}
		
		}
	
		return false;
		

	}
	
	public boolean isConflictRowCol(int row, int column, String number) {
		Cell myCell = new Cell(number);
		for(int y=0; y<9; y++) {
			String valueB = board.get(row).get(y).getValue();
			String valueB2 = board.get(y).get(column).getValue();
			String valueC =("("+myCell.getValue()+")");
			if (valueB.equals(valueC) || valueB2.equals(valueC)) { 
				return true;
			}
		}
		return false;
	}
	
	
	public boolean isValidNumber(String number) {
		int number2 = Integer.parseInt(number);
		if(number2 > 9 || number2 <= 0) {
			return false;
		}
		return true;
	}
	
	public boolean isValidPlace(int row, int column) {
		
		if ((getString(row,column).equals("."))) {
			return true;
		}
		return false;
	}
	
	
	public boolean isValidMove(int row, int column) {	
		if(column > 8 || column < 0 || row > 8 || row < 0) {
			return false;
		}
		return true;
	}
	
	public boolean isGameOver() {
		for (int i=0; i<9; i++) {
			for (int j=0; j<9; j++) {
				if (board.get(i).get(j).getValue().equals(" . ") || board.get(i).get(j).getValue().contains("*")) {
					return false;
				}
			}
		}
		return true;
	}
		
	public void move(int row, int column, String number) {
		if(!(isValidMove(row, column))) {
			throw new SudokuBoardException("Ugyldig trekk!");
		}
		if (!(isValidNumber(number))) {
			throw new SudokuBoardException("Ugyldig tall!");
		}
		if (!(isValidPlace(row,column))) {
			throw new SudokuBoardException("Oups, her var det visst en fra før.");
		}
		
	}
	
	public void startBoard(String numbers) {
		
		
		String numb;
		int counter = 0;
		for(int x = 0; x < 9;x++) {
			for(int i = 0; i < 9; i++) {
					
					String value = Character.toString(numbers.charAt(counter));
					if(value.equals(".")) {
						numb = " " + value + " ";
					}
					else {
						numb = "(" + value + ")";
					}
					
					Cell myCell = new Cell(numb);	
					board.get(x).set(i,myCell);
					counter += 1;
					
				}
		}
		
	}

	
	
	public void playerMove(int row, int column, String number) {
		String star = "";
		Board myBoard = new Board();
		
		if(isConflict(row, column, number) && !( isConflictRowCol(row, column, number))) {
			star = " " + number + " ";
		}
		else {
			star = " " + number + "*";
			
		}
		
		myBoard.move(row,column,number);
		Cell myCell = new Cell(star);
		board.get(row).set(column, myCell);
	
	}
	
	
	private String getString(int row, int column) {
		String value = Character.toString(this.numbers.charAt((row*9)+column));
		return value;
	}
	
	
	private Cell getCell(int row, int column) {
		return board.get(row).get(column);
	}
	
	
	public String toString() {
			
			String tekst = "";
			for(int i=0; i<9; i++) {
				String line = " " + (i+1) + "  | ";
				if(i%3==0) {
					tekst +=  "    +-------------+-------------+-------------+" + "\n";
				}
				
				for(int j=0; j<3; j++) {
					line += board.get(i).get(j*3).getValue() + " ";
					line += board.get(i).get((j*3)+1).getValue() + " ";
					line += board.get(i).get((j*3)+2).getValue() + " ";
					line += "| ";
				}
				line += "\n";
				tekst += line;
				
			}
			tekst += "    +-------------+-------------+-------------+" + "\n";
			tekst += "       1   2   3     4   5   6     7   8   9" + "\n";
			
			if(isGameOver()) {
				tekst +=  "Spillet er over!";
			}
			
			return tekst;
			
			
		}
		
		
	//Første måten å skrive ut brett
		/*String out = ""; 
		for(int i=0; i<this.rows; i++) {
			for(int j=0; j<this.columns; j++) {
				out += getCell(i, j).getValue(); //Bruker intern innkapsling
			}
			out += "\n"; //linjeskift
		}
		if(isGameOver()) {
			out = "Spillet er over!";
		}
		return out;
	}*/
	
	
	
	
	public static void main(String[] args) {
		Board board = new Board();
		//System.out.println(board.getCell(1, 1));
		board.playerMove(4, 5, "1");
		System.out.println(board.toString());
		System.out.println(board.isConflictRowCol(0, 0, "3"));
		
		//Scanner hvis man skal kjøre i eclipse
		/*while(true){	
			Scanner scan = new Scanner(System.in);
			int row = scan.nextInt();
			int column = scan.nextInt();
			String s = scan.next();
			board.playerMove(row,column,s);
			System.out.println(board);
			}
		*/
		
		
	}
	
	public void getInput(String in) {
		String[] inputs = in.split(",");
		int row = Integer.parseInt(inputs[0]); 
		int column = Integer.parseInt(inputs[1]);
		String number = (inputs[2]);
		playerMove(row-1,column-1,number);
		toString();
	}
	
	
}