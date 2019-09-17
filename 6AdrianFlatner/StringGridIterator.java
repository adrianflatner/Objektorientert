package interfaces;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class StringGridIterator implements Iterator<String> {
	
	private StringGrid grid;
	private boolean rowMajor;
	private int rowIndex = 0;
	private int columnIndex = 0;
	
	StringGridIterator(StringGrid grid, boolean rowMajor){
		this.grid = grid;
		this.rowMajor = rowMajor;
	}
	
	
	@Override
	public boolean hasNext() {
		// TODO Auto-generated method stub
		if (rowIndex >= this.grid.getRowCount() && (columnIndex >= this.grid.getColumnCount()|| columnIndex == this.grid.getColumnCount() - 1)) {
			return false;
		}
		if(columnIndex >= this.grid.getColumnCount() && (rowIndex >= this.grid.getRowCount() || rowIndex == this.grid.getRowCount() - 1)) {
			return false;
		}
		return true;
	}

	@Override
	public String next() {
		// TODO Auto-generated method stub
		if (!hasNext()) {
			throw new NoSuchElementException();
		}
		if(rowMajor) {
			if (columnIndex >= this.grid.getColumnCount()) {
				rowIndex++;
				columnIndex = 0;
				
			}
			return this.grid.getElement(rowIndex,columnIndex++);
	}
		else {
			if (rowIndex >= this.grid.getRowCount()) {
				rowIndex = 0;
				columnIndex++;
				
			}
			return this.grid.getElement(rowIndex++,columnIndex);
			}
		
		
	}
	
	public void remove() {
		throw new UnsupportedOperationException("Not yet implemented");
	}
	
}


