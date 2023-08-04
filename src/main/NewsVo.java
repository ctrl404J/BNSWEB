package main;

public class NewsVo {

	private int id;
	private String title;
	private String detail;
	private String date;
	private int totalCount;

	public NewsVo() {

	}

	public NewsVo(String title, String detail, String date, int totalCount) {

		this.title = title;
		this.detail = detail;
		this.date = date;
		this.totalCount = totalCount;
	}

	public NewsVo(int id, String title, String detail, String date, int totalCount) {

		this.id = id;
		this.title = title;
		this.detail = detail;
		this.date = date;
		this.totalCount = totalCount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

}
