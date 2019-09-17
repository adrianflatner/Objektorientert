package game;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class SaveSudoku implements SaveGame {

	private String boardString = "";
	

	
	public static String load(String fileName) {
		String board = "";
		Scanner sc = null;
		try {
			sc = new Scanner(new FileReader(fileName));
			while(sc.hasNextLine()) {
				board = sc.nextLine();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (sc != null) {
				sc.close();
			}
		}		
		return board;
	}
	
	
	public static void save(String fileName, String board) {
		
		PrintWriter pw = null;
		try {
			pw = new PrintWriter(new File(fileName));
	;		pw.append(board);
			//pw.println(board);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} finally {
			pw.close();
		}
	}
	
	
	public String getBoardString(List<List<Cell>> board) {
		for(int x = 0; x < 9;x++) {
			for(int i = 0; i < 9; i++) {
				if(board.get(x).get(i).getValue().contains("*")) {
					throw new SudokuBoardException("Spillet kan ikke lagres i usikker tilstand!(*)");
				}
				this.boardString += board.get(x).get(i).getValue();
			}
		}	
		
		String newBoardString = boardString.replace(" ", "");
		newBoardString = newBoardString.replace("(", "");
		newBoardString = newBoardString.replace(")", "");
		return newBoardString;
	}

	public static void main(String[] args) {
		Board board = new Board();
		SaveSudoku SS = new SaveSudoku();
		//System.out.println(SS.getBoardString(board));
		//SaveSudoku.write("C:/Users/figo_/Documents/tdt4100-2018-master2/git/tdt4100-2018/ovinger/src/game/file.txt", SS.getBoardString(board));
		//System.out.println(SaveSudoku.read("C:/Users/figo_/Documents/tdt4100-2018-master2/git/tdt4100-2018/ovinger/src/game/file.txt"));
	}


}
