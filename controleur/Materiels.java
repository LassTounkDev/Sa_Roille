package controleur;

public class Materiels {

	private int id_materiels;
	private String nom,marque,poids,capacite,taille, quantite;
	
	
	public Materiels(int id_materiels, String nom, String marque, String poids, String capacite, String taille, String quantite) {
		this.id_materiels = id_materiels;
		this.nom = nom;
		this.marque = marque;
		this.poids = poids;
		this.capacite = capacite;
		this.taille = taille;
		this.quantite = quantite;
	}
	
	public Materiels(String nom, String marque, String poids, String capacite, String taille, String quantite) {
		this.id_materiels = 0;
		this.nom = nom;
		this.marque = marque;
		this.poids = poids;
		this.capacite = capacite;
		this.quantite = quantite;
	}

	public int getId_materiels() {
		return id_materiels;
	}

	public void setId_materiels(int id_materiels) {
		this.id_materiels = id_materiels;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getMarque() {
		return marque;
	}

	public void setMarque(String marque) {
		this.marque = marque;
	}

	public String getPoids() {
		return poids;
	}

	public void setPoids(String poids) {
		this.poids = poids;
	}

	public String getCapacite() {
		return capacite;
	}

	public void setCapacite(String capacite) {
		this.capacite = capacite;
	}

	public String getTaille() {
		return taille;
	}

	public void setTaille(String taille) {
		this.taille = taille;
	}
	public String getQuantite() {
		return quantite;
	}

	public void setQuantite(String quantite) {
		this.quantite = quantite;
	}
	
	
}
