package bean;

public class ItemBean {
	private String DemandID,DemandName,DemandDesc,status;

	public String getDemandID() {
		return DemandID;
	}

	public void setDemandID(String demandID) {
		DemandID = demandID;
	}

	public String getDemandName() {
		return DemandName;
	}

	public void setDemandName(String demandName) {
		DemandName = demandName;
	}

	public String getDemandDesc() {
		return DemandDesc;
	}

	public void setDemandDesc(String demandDesc) {
		DemandDesc = demandDesc;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
