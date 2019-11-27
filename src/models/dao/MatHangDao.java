package models.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import controllers.ConnectionDatabase;
import models.bean.MatHangBean;

public class MatHangDao {
	private ConnectionDatabase cnn = new ConnectionDatabase();
	
	public ArrayList<MatHangBean> getDanhSachMatHang() throws Exception {
		ArrayList<MatHangBean> dsMatHang = new ArrayList<MatHangBean>();
		// Kết nối CSDL
		cnn.ConnectionDB();
		// Lấy CSDL
		String query = "SELECT * FROM MatHang";
		PreparedStatement cmd = cnn.connection.prepareStatement(query);
		ResultSet rs = cmd.executeQuery();        
		
		while (rs.next()) {
			int maHang = rs.getInt("MaHang");
			String tenHang = rs.getString("TenHang");
			String tenNhaCungCap = rs.getString("TenNhaCungCap");
			int soLuong = rs.getInt("SoLuong");
			long gia = rs.getLong("Gia");
			String anhMatHang = rs.getString("AnhMatHang");
			dsMatHang.add(new MatHangBean(maHang, tenHang, tenNhaCungCap, soLuong, gia, anhMatHang));
		}		
		// Đóng CSDL
		cnn.connection.close();
		return dsMatHang;
	}
	
	public ArrayList<MatHangBean> searchDanhSachMatHang(String key) throws Exception {
		ArrayList<MatHangBean> dsMatHang = new ArrayList<MatHangBean>();
		// Kết nối CSDL
		cnn.ConnectionDB();
		// Lấy CSDL
		String query = "SELECT * FROM MatHang WHERE TenHang LIKE CONCAT('%',?,'%')";
		PreparedStatement cmd = cnn.connection.prepareStatement(query);
		cmd.setString(1, key);
		ResultSet rs = cmd.executeQuery();        
		
		while (rs.next()) {
			int maHang = rs.getInt("MaHang");
			String tenHang = rs.getString("TenHang");
			String tenNhaCungCap = rs.getString("TenNhaCungCap");
			int soLuong = rs.getInt("SoLuong");
			long gia = rs.getLong("Gia");
			String anhMatHang = rs.getString("AnhMatHang");
			dsMatHang.add(new MatHangBean(maHang, tenHang, tenNhaCungCap, soLuong, gia, anhMatHang));
		}		
		// Đóng CSDL
		cnn.connection.close();
		return dsMatHang;
	}
	
	public MatHangBean getMatHangDetail(String id) throws Exception {
		MatHangBean matHang = null;
		// Kết nối CSDL
		cnn.ConnectionDB();
		// Lấy CSDL
		String query = "SELECT * FROM MatHang WHERE MaHang = ?";
		PreparedStatement cmd = cnn.connection.prepareStatement(query);
		cmd.setString(1, id);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			int maHang = rs.getInt("MaHang");
			String tenHang = rs.getString("TenHang");
			String tenNhaCungCap = rs.getString("TenNhaCungCap");
			int soLuong = rs.getInt("SoLuong");
			long gia = rs.getLong("Gia");
			String anhMatHang = rs.getString("AnhMatHang");
			matHang = new MatHangBean(maHang, tenHang, tenNhaCungCap, soLuong, gia, anhMatHang);
			break;
		}		
		// Đóng CSDL
		cnn.connection.close();
		return matHang;
	}

}
