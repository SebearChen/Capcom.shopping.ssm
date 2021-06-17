package com.capcom.domain;

public class Commodity {
	private int commodityid;
	private String commodityname;
	private double commodityprice;
	private String commoditytype;
	private String commodityintro;
	private String commodityphoto;
	private String pubdate;

	public int getCommodityid() {
		return commodityid;
	}

	public void setCommodityid(int commodityid) {
		this.commodityid = commodityid;
	}

	public String getCommodityname() {
		return commodityname;
	}

	public void setCommodityname(String commodityname) {
		this.commodityname = commodityname;
	}

	public double getCommodityprice() {
		return commodityprice;
	}

	public void setCommodityprice(double commodityprice) {
		this.commodityprice = commodityprice;
	}

	public String getCommoditytype() {
		return commoditytype;
	}

	public void setCommoditytype(String commoditytype) {
		this.commoditytype = commoditytype;
	}

	public String getCommodityintro() {
		return commodityintro;
	}

	public void setCommodityintro(String commodityintro) {
		this.commodityintro = commodityintro;
	}

	public String getCommodityphoto() {
		return commodityphoto;
	}

	public void setCommodityphoto(String commodityphoto) {
		this.commodityphoto = commodityphoto;
	}

	public String getPubdate() {
		return pubdate;
	}

	public void setPubdate(String pubdate) {
		this.pubdate = pubdate;
	}

	@Override
	public String toString() {
		return "Commodity [commodityid=" + commodityid + ", commodityname=" + commodityname + ", commodityprice="
				+ commodityprice + ", commoditytype=" + commoditytype + ", commodityintro=" + commodityintro
				+ ", commodityphoto=" + commodityphoto + ", pubdate=" + pubdate + "]";
	}
}