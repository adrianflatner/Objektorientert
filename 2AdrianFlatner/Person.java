package encapsulation;

import java.util.Arrays;
import java.util.Date;


public class Person {
	
	private String name;
	private String email;
	private Date birthday;
	private char gender;
	
	private String[] mail = {"ad", "ae", "af", "ag", "ai", "al", "am", "ao", "aq", "ar", "as", "at", "au", "aw", "ax", "az", "ba", "bb", "bd", "be", "bf", "bg", "bh", "bi", "bj", "bl", "bm", "bn", "bo", "bq", "br", "bs", "bt", "bv", "bw", "by", "bz", "ca", "cc", "cd", "cf", "cg", "ch", "ci", "ck", "cl", "cm", "cn", "co", "cr", "cu", "cv", "cw", "cx", "cy", "cz", "de", "dj", "dk", "dm", "do", "dz", "ec", "ee", "eg", "eh", "er", "es", "et", "fi", "fj", "fk", "fm", "fo", "fr", "ga", "gb", "gd", "ge", "gf", "gg", "gh", "gi", "gl", "gm", "gn", "gp", "gq", "gr", "gs", "gt", "gu", "gw", "gy", "hk", "hm", "hn", "hr", "ht", "hu", "id", "ie", "il", "im", "in", "io", "iq", "ir", "is", "it", "je", "jm", "jo", "jp", "ke", "kg", "kh", "ki", "km", "kn", "kp", "kr", "kw", "ky", "kz", "la", "lb", "lc", "li", "lk", "lr", "ls", "lt", "lu", "lv", "ly", "ma", "mc", "md", "me", "mf", "mg", "mh", "mk", "ml", "mm", "mn", "mo", "mp", "mq", "mr", "ms", "mt", "mu", "mv", "mw", "mx", "my", "mz", "na", "nc", "ne", "nf", "ng", "ni", "nl", "no", "np", "nr", "nu", "nz", "om", "pa", "pe", "pf", "pg", "ph", "pk", "pl", "pm", "pn", "pr", "ps", "pt", "pw", "py", "qa", "re", "ro", "rs", "ru", "rw", "sa", "sb", "sc", "sd", "se", "sg", "sh", "si", "sj", "sk", "sl", "sm", "sn", "so", "sr", "ss", "st", "sv", "sx", "sy", "sz", "tc", "td", "tf", "tg", "th", "tj", "tk", "tl", "tm", "tn", "to", "tr", "tt", "tv", "tw", "tz", "ua", "ug", "um", "us", "uy", "uz", "va", "vc", "ve", "vg", "vi", "vn", "vu", "wf", "ws", "ye", "yt", "za", "zm", "zw"};
	
	
	public String getName() {
		return name;
	}
	
	public boolean isAlpha(String name) {
		return name.matches("[a-z A-Z]+");
	}
	public void checkName(String name) {
		String[] parts = name.split(" ");
		
		if(parts.length < 2) {
			throw new IllegalArgumentException("Enter both names");
		}
		
		if(parts[0].length() < 2 || parts[1].length() < 2 || ! name.contains(" ") || !isAlpha(name) || parts.length > 2) {
			throw new IllegalArgumentException("Please enter valid name(F.name, space, L.name)");
		}
		
		
		
	}
	
	
	public void setName(String name) {
		checkName(name);
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		checkEmail(email);
		this.email = email;
	}
	
	public void checkEmail(String email) {
		
		email.toLowerCase();
		String name2 = this.name.toLowerCase();
		
		String[] parts = email.split("\\.");
		
		if (!(parts[1].contains("@"))) {
			throw new IllegalArgumentException("You are missing '@'");
		}
			
		String[] parts2 = parts[1].split("\\@");
		
		String[] parts3 = name2.split(" ");
		
		if(!(parts[0].equals(parts3[0])) || !(parts2[0].equals(parts3[1]))) {
			throw new IllegalArgumentException("Name must be the same in email");
		}
		
		if(parts.length != 3) {
			throw new IllegalArgumentException("You are missing some dots");
		}
		
		if(parts[0].length() < 2 || parts2[0].length() < 2 || ! (Arrays.asList(mail).contains(parts[2]))) {
			throw new IllegalArgumentException("Please write your email correctly!");
		}
		
	}
	
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date date) {
		checkBirthday(date);
		this.birthday = date;
	}
	
	public void checkBirthday(Date birthday) {
		Date today = new Date();
		
		if(today.before(birthday)) {
			throw new IllegalArgumentException("Invalid birthday date.");
		}
		
	}
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		checkGender(gender);
		this.gender = gender;
		
	}
	
	public void checkGender(char gender) {
		if(gender != 'M' &&  gender != 'F' &&  gender != '\0') {
			throw new IllegalArgumentException("Please type one of the following: M or F or \0");
		}
	}
		
	
	public static void main(String[] args) {
		Person person = new Person();
		person.setName("Ola Nordmann");
		System.out.println(person.getName());
		person.setGender('M');
		System.out.println(person.getGender());
		person.setEmail("Ola.Nordmann@ntnu.ad");
		System.out.println(person.getEmail());
		
	}
}
