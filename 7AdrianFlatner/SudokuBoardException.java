package game;

@SuppressWarnings("serial")
//IndexOutOfBoundsException er en RuntimeException, trenger ikke throws, etc.
public class SudokuBoardException extends IndexOutOfBoundsException {
	
	public SudokuBoardException() {
		
	}
	
	public SudokuBoardException(String exceptionMessage) {
		super(exceptionMessage);
	}

}
