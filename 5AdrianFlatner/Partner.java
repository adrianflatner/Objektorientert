package objectstructures;

public class Partner {
	private String name;
	private Partner partner;
	
	public Partner(String name) {
		this.name = name;
	}
	
	public String getName() {
		return this.name;
	}
	
	public Partner getPartner() {
		return this.partner;
	}
	
	public void setPartner(Partner partner) {
		if(this.partner == partner) {
			return;
		}
		if(this.partner != null && partner != null) {
			this.partner.partner = null;
			this.partner = partner;
		}
		if(partner == null) {
			this.partner.partner = null;
			this.partner = null;
		}
		
		else {
			this.partner = partner;
			partner.setPartner(this);
		}
		
		
	}
	
	public String toString() {
		return getName();
	}
	
	public static void main(String[] args) {
		Partner partner = new Partner("Adrian");
		Partner partner2 = new Partner("Halvor");
		Partner partner3 = new Partner("Joakim");
		Partner partner4 = new Partner("Morten");
		partner.setPartner(partner2);
		partner3.setPartner(partner4);
		System.out.println(partner.getPartner());
		System.out.println(partner2.getPartner());
		System.out.println(partner3.getPartner());
		System.out.println(partner4.getPartner());
		partner.setPartner(partner3);
		System.out.println(partner.getPartner());
		System.out.println(partner2.getPartner());
		System.out.println(partner3.getPartner());
		System.out.println(partner4.getPartner());
		//System.out.println(partner2);
	}
	
	
}
