package cart;

public class cartDTO {
	private int u_idx;
	private int p_idx;
	private int c_amount;
	private int c_size;
	
	
	
	public cartDTO(int u_idx, int p_idx, int c_amount, int c_size) {
		super();
		this.u_idx = u_idx;
		this.p_idx = p_idx;
		this.c_amount = c_amount;
		this.c_size = c_size;
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
	
}
