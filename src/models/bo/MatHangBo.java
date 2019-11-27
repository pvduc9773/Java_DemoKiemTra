package models.bo;

import java.util.ArrayList;

import models.bean.MatHangBean;
import models.dao.MatHangDao;

public class MatHangBo {

	private MatHangDao matHangDao = new MatHangDao();
	
	public ArrayList<MatHangBean> getDanhSachMatHang() throws Exception {
		return matHangDao.getDanhSachMatHang();
	}
	
	public ArrayList<MatHangBean> searchDanhSachMatHang(String key) throws Exception {
		return matHangDao.searchDanhSachMatHang(key);
	}
	
	public MatHangBean getMatHangDetail(String id) throws Exception {
		return matHangDao.getMatHangDetail(id);
	}
	
}
