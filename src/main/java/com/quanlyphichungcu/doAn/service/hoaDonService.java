package com.quanlyphichungcu.doAn.service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Service;

import com.quanlyphichungcu.doAn.entity.HoaDon;
import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho;
import com.quanlyphichungcu.doAn.entity.nhan_vien;
import com.quanlyphichungcu.doAn.repository.HoaDonRepository;
import com.quanlyphichungcu.doAn.repository.dichVuCanHoRepository;

import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Service
public class hoaDonService {
	@Autowired HoaDonRepository hoaDonRepository;
	
	@Autowired dichVuCanHoRepository dichVuCanHoRepository;
	
	public List<HoaDon> findALL() {
		return hoaDonRepository.findAll();
	}
	
	public HoaDon findById(String ma_hoa_don) {
		return hoaDonRepository.findById(ma_hoa_don).get();
	}
	
	public List<HoaDon> findByCanHo(String ma_can_ho) {
		return hoaDonRepository.findByMaCanHo(ma_can_ho);
	}
	
	public HoaDon findByCanHoChuaThanhToan(String ma_can_ho) {
		return hoaDonRepository.findByMaCanHoChuaThanhToan(ma_can_ho);
	}
	
	public void add(HoaDon hoadon) {
		hoaDonRepository.save(hoadon);
	}
	
	public void update(HoaDon hoadon) {
		hoaDonRepository.save(hoadon);
	}
	
	public void remove(HoaDon hoadon) {
		hoaDonRepository.delete(hoadon);
	}
		
	public HoaDon laphoadon(int thang,int nam,nhan_vien nhanvien,can_ho canho,List<dich_vu_can_ho> dsDichVu) {
		try {
			if (dsDichVu.size() != 0) {
				LocalDate currentDate = LocalDate.now();
				HoaDon hoadon = new HoaDon();
				hoadon.setMa_hoa_don("***");
				hoadon.setThang(thang);
				hoadon.setNam(nam);
				hoadon.setNgay_tao(java.sql.Date.valueOf(currentDate));
				hoadon.setNhanVien(nhanvien);
				hoadon.setMaCanHo(canho);
				hoadon.setNgay_dong_tien(null);
				float tong = 0;
				for (dich_vu_can_ho item: dsDichVu) {
					if (item.getNgay_ket_thuc() == null) {
						int soluong,dongia,vat;
						soluong = item.getSo_luong();
						dongia = item.getDich_vu().getDon_gia();
						vat = item.getDich_vu().getVat();
						tong += (float) soluong*dongia*(1+(float)vat/100);
					} else {
						// dich vu tra sau
						if (item.getDich_vu().getTra_truoc() == 0) {
							if (thang-1 == currentDate.getMonthValue() && nam == currentDate.getYear()) {
								int soluong,dongia,vat;
								soluong = item.getSo_luong();
								dongia = item.getDich_vu().getDon_gia();
								vat = item.getDich_vu().getVat();
								tong += (float) soluong*dongia*(1+(float)vat/100);
							}
						}
					}
				}
				// xem hoa don truoc do co no hay khong
				HoaDon hoadonthangtruoc = findByCanHoChuaThanhToan(canho.getMa_can_ho());
				if (hoadonthangtruoc != null) {
						hoadon.setTien_no(hoadonthangtruoc.getTien_thang());
						tong += hoadonthangtruoc.getTien_thang();
						hoadonthangtruoc.setNgay_dong_tien(java.sql.Date.valueOf(currentDate));
						hoadonthangtruoc.setTien_thang(0);
				} else {
					hoadon.setTien_no(0);
				}
				hoadon.setTien_thang((int) tong);
				return hoadon;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
}
