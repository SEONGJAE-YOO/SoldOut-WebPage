package cart;

public class cart1DTO {
	private int u_idx;
	private int p_idx;
	private int c_amount;
	private int c_size;
	private String p_name;
	private int p_price;
	private String p_img;
	private int p_amount;
	
	
	
	public cart1DTO(int u_idx, int p_idx, int c_amount, int c_size, String p_name, int p_price, String p_img) {
		super();
		this.u_idx = u_idx;
		this.p_idx = p_idx;
		this.c_amount = c_amount;
		this.c_size = c_size;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_img = p_img;
	}
	public cart1DTO(int u_idx, int p_idx, int c_amount, int c_size, String p_name, int p_price, String p_img,
			int p_amount) {
		super();
		this.u_idx = u_idx;
		this.p_idx = p_idx;
		this.c_amount = c_amount;
		this.c_size = c_size;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_img = p_img;
		this.p_amount = p_amount;
	}
	public int getU_idx() {
		return u_idx;
	}
	public void setU_idx(int u_idx) {
		this.u_idx = u_idx;
	}
	public int getP_idx() {
		return p_idx;
	}
	public void setP_idx(int p_idx) {
		this.p_idx = p_idx;
	}
	public int getC_amount() {
		return c_amount;
	}
	public void setC_amount(int c_amount) {
		this.c_amount = c_amount;
	}
	public int getC_size() {
		return c_size;
	}
	public void setC_size(int c_size) {
		this.c_size = c_size;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	public int getP_amount() {
		return p_amount;
	}
	public void setP_amount(int p_amount) {
		this.p_amount = p_amount;
	}
}
