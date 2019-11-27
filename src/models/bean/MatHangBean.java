package models.bean;

import java.text.NumberFormat;
import java.util.Locale;

public class MatHangBean {
	private int MaHang;
	private String TenHang;
	private String TenNhaCungCap;
	private int SoLuong;
	private long Gia;
	private String AnhMatHang;
	
	public MatHangBean() {
		// TODO Auto-generated constructor stub
	}

	public MatHangBean(int maHang, String tenHang, String tenNhaCungCap, int soLuong, long gia, String anhMatHang) {
		super();
		MaHang = maHang;
		TenHang = tenHang;
		TenNhaCungCap = tenNhaCungCap;
		SoLuong = soLuong;
		Gia = gia;
		AnhMatHang = anhMatHang;
	}

	public int getMaHang() {
		return MaHang;
	}

	public void setMaHang(int maHang) {
		MaHang = maHang;
	}

	public String getTenHang() {
		return TenHang;
	}

	public void setTenHang(String tenHang) {
		TenHang = tenHang;
	}

	public String getTenNhaCungCap() {
		return TenNhaCungCap;
	}

	public void setTenNhaCungCap(String tenNhaCungCap) {
		TenNhaCungCap = tenNhaCungCap;
	}

	public int getSoLuong() {
		return SoLuong;
	}

	public void setSoLuong(int soLuong) {
		SoLuong = soLuong;
	}

	public long getGia() {
		return Gia;
	}

	public void setGia(long gia) {
		Gia = gia;
	}

	public String getAnhMatHang() {
		return AnhMatHang;
	}

	public void setAnhMatHang(String anhMatHang) {
		AnhMatHang = anhMatHang;
	}
	
	public String getGiaFormat() {
		return NumberFormat.getCurrencyInstance(new Locale("vn", "VN")).format(Gia);
	}
}
