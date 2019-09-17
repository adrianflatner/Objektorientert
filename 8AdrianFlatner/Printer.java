package patterns.delegation.office;


import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.stream.Collectors;
import java.util.stream.Stream;


public class Printer {
	Map<Employee, List<String>> printHistory = new HashMap<>();
	
	void printDocument(String document, Employee employee) { //- skriver documentet til konsollen og tar vare på dokumentet i employee sin historikk
		
		String text = "";
		Scanner sc = null;
		try {
			sc = new Scanner(new FileReader(document));
			while(sc.hasNextLine()) {
				text = sc.nextLine();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (sc != null) {
				sc.close();
			}
		}		
		System.out.println(text);
		List<String> documents = new ArrayList();
		documents.add(document);
		
		if(printHistory.containsKey(employee)) {
			documents = Stream.concat(getPrintHistory(employee).stream(), documents.stream())
            .collect(Collectors.toList());
		}
		printHistory.put(employee, documents);
		
	}

	List<String> getPrintHistory(Employee employee){ //- returnerer en List<String> med alle dokumentene som har blitt printet av employee i rekkefølgen de har blitt printet
		List<String> nullList = new ArrayList();
		if(printHistory.get(employee) == null) {
			return nullList;
		}
		List<String> newList = printHistory.get(employee);
		return newList;
		
	}
	

}
