package dto;

import java.io.*;

public class Ecar implements Serializable {
	
	private static final long serialVersionUID =-4274700572038677000L;
	
	private String carType;
	private String carName;
	private int unitPrice;
	private String company;
	private String description;
	private long unitsInStock;
	private String releaseDate;
	private String condition;
	private String fileName;
	private int quantity;
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public Ecar() {
		super();
	}
	public Ecar(String carType, String carName, Integer unitPrice) {
		this.carType = carType;
		this.carName = carName;
		this.unitPrice = unitPrice;
	}
	public String getCarType() {
		return carType;
	}
	
	public void setCarType(String carType) {
		this.carType = carType;
	}
	
	public String getCarName() {
		return carName;
	}
	
	public void setCarName(String carName) {
		this.carName = carName;
	}
	
	public int getUnitPrice() {
		return unitPrice;
	}
	
	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}
	
	public String getCompany() {
		return company;
	}
	
	public void setCompany(String company) {
		this.company = company;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public long getUnitsInStock() {
		return unitsInStock;
	}
	
	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}
	
	public String getReleaseDate() {
		return releaseDate;
	}
	
	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}
	
	public String getCondition() {
		return condition;
	}
	
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	
}
