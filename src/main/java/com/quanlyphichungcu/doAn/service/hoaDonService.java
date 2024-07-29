package com.quanlyphichungcu.doAn.service;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;

import com.quanlyphichungcu.doAn.entity.HoaDon;
import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.nhan_vien;
import com.quanlyphichungcu.doAn.repository.HoaDonRepository;

import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;


public class hoaDonService {
	@Autowired HoaDonRepository hoaDonRepository;
	
	List<HoaDon> findALL() {
		return hoaDonRepository.findAll();
	}
	
	private String ma_hoa_don;
	private String tenHoaDon;
	private can_ho maCanHo;
	private nhan_vien nhanVien;
	private String ngay_tao;
	private String ngay_dong_tien;
	private String tien_thang;
	private String tien_no;
	private List<Map<String, String>> chiTietDichVu;

	public HoaDonRepository getHoaDonRepository() {
		return hoaDonRepository;
	}
	public void setHoaDonRepository(HoaDonRepository hoaDonRepository) {
		this.hoaDonRepository = hoaDonRepository;
	}
	public String getMa_hoa_don() {
		return ma_hoa_don;
	}
	public void setMa_hoa_don(String ma_hoa_don) {
		this.ma_hoa_don = ma_hoa_don;
	}
	public String getTenHoaDon() {
		return tenHoaDon;
	}
	public void setTenHoaDon(String tenHoaDon) {
		this.tenHoaDon = tenHoaDon;
	}
	public can_ho getMaCanHo() {
		return maCanHo;
	}
	public void setMaCanHo(can_ho maCanHo) {
		this.maCanHo = maCanHo;
	}
	public nhan_vien getNhanVien() {
		return nhanVien;
	}
	public void setNhanVien(nhan_vien nhanVien) {
		this.nhanVien = nhanVien;
	}
	public String getNgay_tao() {
		return ngay_tao;
	}
	public void setNgay_tao(String ngay_tao) {
		this.ngay_tao = ngay_tao;
	}
	public String getNgay_dong_tien() {
		return ngay_dong_tien;
	}
	public void setNgay_dong_tien(String ngay_dong_tien) {
		this.ngay_dong_tien = ngay_dong_tien;
	}
	public String getTien_thang() {
		return tien_thang;
	}
	public void setTien_thang(String tien_thang) {
		this.tien_thang = tien_thang;
	}
	public String getTien_no() {
		return tien_no;
	}
	public void setTien_no(String tien_no) {
		this.tien_no = tien_no;
	}
	public List<Map<String, String>> getChiTietDichVu() {
		return chiTietDichVu;
	}
	public void setChiTietDichVu(List<Map<String, String>> chiTietDichVu) {
		this.chiTietDichVu = chiTietDichVu;
	}
	public hoaDonService() {
		super();
	}
	

	
}
