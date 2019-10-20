package evaluation;



public class EvaluationDTO {



	int evaluationID;

	String userID;

	String items;

	String size;

	String category;

	String PurchaseDate;

	String day;

	String evaluationTitle;

	String evaluationContent;

	String totalScore;

	String design;

	String priceScore;

	String itemsScore;

	int likeCount;

	





	public int getEvaluationID() {
		return evaluationID;
	}






	public void setEvaluationID(int evaluationID) {
		this.evaluationID = evaluationID;
	}






	public String getUserID() {
		return userID;
	}






	public void setUserID(String userID) {
		this.userID = userID;
	}






	public String getItems() {
		return items;
	}






	public void setItems(String items) {
		this.items = items;
	}






	public String getSize() {
		return size;
	}






	public void setSize(String size) {
		this.size = size;
	}






	public String getCategory() {
		return category;
	}






	public void setCategory(String category) {
		this.category = category;
	}






	public String getPurchaseDate() {
		return PurchaseDate;
	}






	public void setPurchaseDate(String purchaseDate) {
		PurchaseDate = purchaseDate;
	}






	public String getDay() {
		return day;
	}






	public void setDay(String day) {
		this.day = day;
	}






	public String getEvaluationTitle() {
		return evaluationTitle;
	}






	public void setEvaluationTitle(String evaluationTitle) {
		this.evaluationTitle = evaluationTitle;
	}






	public String getEvaluationContent() {
		return evaluationContent;
	}






	public void setEvaluationContent(String evaluationContent) {
		this.evaluationContent = evaluationContent;
	}






	public String getTotalScore() {
		return totalScore;
	}






	public void setTotalScore(String totalScore) {
		this.totalScore = totalScore;
	}






	public String getDesign() {
		return design;
	}






	public void setDesign(String design) {
		this.design = design;
	}






	public String getPriceScore() {
		return priceScore;
	}






	public void setPriceScore(String priceScore) {
		this.priceScore = priceScore;
	}






	public String getItemsScore() {
		return itemsScore;
	}






	public void setItemsScore(String itemsScore) {
		this.itemsScore = itemsScore;
	}






	public int getLikeCount() {
		return likeCount;
	}






	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}

	public EvaluationDTO(int evaluationID, String userID, String lectureName, String items, String size,

			String category, String PurchaseDate, String day, String evaluationContent,

			String totalScore, String design, String priceScore, String itemsScore, int likeCount) {

		super();

		this.evaluationID = evaluationID;

		this.userID = userID;

		this.items = items;

		this.size = size;

		this.category = category;

		this.PurchaseDate = PurchaseDate;

		this.day = day;

		this.evaluationTitle = evaluationTitle;

		this.evaluationContent = evaluationContent;

		this.totalScore = totalScore;

		this.design = design;

		this.priceScore = priceScore;

		this.itemsScore = itemsScore;

		this.likeCount = likeCount;

	}



}

