package interfaces;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;



public class StringGridImpl implements StringGrid {

	private List<List<String>> grid = new ArrayList();

	StringGridImpl(int rows, int columnCount){// konstruktør som tar inn antall rader som rows og antall kolonner som columnCount.
		for (int i=0; i<rows; i++) {
			grid.add(new ArrayList<String>());
			for (int j=0; j<columnCount; j++) {
				grid.get(i).add("");
			}
		}
	}
	
	
	@Override
	public int getRowCount() {
		// TODO Auto-generated method stub
		//(for(int i=0; i<grid.size())
		return grid.size();
	}

	@Override
	public int getColumnCount() {
		// TODO Auto-generated method stub
		return grid.get(0).size();
	}

	@Override
	public String getElement(int row, int column) {
		// TODO Auto-generated method stub
		if(row > getRowCount() || column > getColumnCount()) {
			throw new IllegalArgumentException("Out of range");
		}
		return grid.get(row).get(column);
			
	}

	@Override
	public void setElement(int row, int column, String element) {
		// TODO Auto-generated method stub
		if(row > getRowCount() || column > getColumnCount()) {
			throw new IllegalArgumentException("Out of range");
		}
		grid.get(row).set(column, element);
	}

	
	public static void main(String[] args) {
		StringGridImpl sGI = new StringGridImpl(2,2);
		//System.out.println(sGI.getColumnCount());
		sGI.setElement(0, 0, "Hei");
		sGI.setElement(0,1,"Halla");
		sGI.setElement(1, 0, "Lalal");
		sGI.setElement(1, 1, "salf");
		//System.out.println(sGI.getElement(0, 1));
		StringGridIterator iterator = new StringGridIterator(sGI,false);
		System.out.println(iterator.next());
		System.out.println(iterator.next());
		System.out.println(iterator.next());
		System.out.println(iterator.next());
		
		for(String s : sGI) {
			System.out.println(s);
		}
		
	}


	@Override
	public Iterator<String> iterator() {
		// TODO Auto-generated method stub
		StringGridImpl sGI = new StringGridImpl(2,2);
		sGI.setElement(0, 0, "Hei");
		sGI.setElement(0,1,"Halla");
		sGI.setElement(1, 0, "Lalal");
		sGI.setElement(1, 1, "salf");
		return new StringGridIterator(sGI,true);
	}
	
}





