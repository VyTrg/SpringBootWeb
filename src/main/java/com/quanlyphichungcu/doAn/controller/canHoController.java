package com.quanlyphichungcu.doAn.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quanlyphichungcu.doAn.entity.ChuSoHuu;
import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu;
import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho;
import com.quanlyphichungcu.doAn.repository.canHoRepository;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;
import com.quanlyphichungcu.doAn.repository.dichVuCanHoRepository;
import com.quanlyphichungcu.doAn.repository.dichVuRepository;

import jakarta.servlet.http.HttpServletRequest;


@Controller
public class canHoController {
	@Autowired
	private canHoRepository canho_repository;
	
	@Autowired
	private dichVuCanHoRepository dvch_repository;
	
	@Autowired 
	private dichVuRepository dv_repository;
	
	@Autowired 
	private chuSoHuuRepository csh_repository;
	
	
	@RequestMapping("/canho/{id}")
	public String getCTCanHo(Model model, @PathVariable("id") String id) {
		
		can_ho ch = canho_repository.findById(id).get();
		model.addAttribute("ch", ch);
		List<ChuSoHuu> csh = csh_repository.findAll();
		model.addAttribute("csh",csh);
		// du lieu dich vu
		List<dich_vu_can_ho> dichvudaco = dvch_repository.getDichVuByCanHo(id);
		model.addAttribute("dichvudaco",dichvudaco);
		List<dich_vu> tatcadichvu = dv_repository.findAll();
		List<dich_vu> dichvuchuaco = getDichVuChuaCo(dichvudaco,tatcadichvu);
		List<dich_vu_can_ho> dichvuchuathem = getDichVuChuaThem(dichvuchuaco,ch);
		model.addAttribute("dichvuchuathem",dichvuchuathem);

		return "admin/ctcanho";
	}
	
	@RequestMapping(value = "/canho/laythongtincsh", method = RequestMethod.POST)
	@ResponseBody
	public String getInfoCuDan(Model model,
			@RequestParam(name = "idcsh") String idcsh,
			@ModelAttribute("ch") can_ho canHo) {
		try {
			if (idcsh != "delete") {
				ChuSoHuu thongtincsh = csh_repository.findById(idcsh).get();
				return thongtincsh.getHo_ten();
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "khongcothongtin";
		
	}
	
	@RequestMapping(value = "/canho/suathongtin", method = RequestMethod.POST)
	public String editThongTinCanHo(Model model,@ModelAttribute("ch") can_ho canHo) {
		if (canHo.getChuSoHuu().getMa_chu_so_huu() == "") {
			canHo.setChuSoHuu(null);		
		}
		canho_repository.save(canHo);
		return "redirect:/canho/"+canHo.getMa_can_ho();
	}

	@PostMapping("/canho/themdichvu/{idCanHo}")
	@ResponseBody
	public ResponseEntity<String> getDichVuDaSua(Model model, @PathVariable("idCanHo") String idCanHo,
			@RequestBody String res,
			@RequestParam(name = "idService") String idService,
			@RequestParam(name = "countService") String countService) {
		String message = null;

		can_ho canho = canho_repository.findById(idCanHo).get();
		dich_vu dichvu = dv_repository.findById(idService).get();
		Date currentDate = new Date();
		dich_vu_can_ho dv_canho = new dich_vu_can_ho(canho, dichvu, Integer.parseInt(countService), currentDate,
				null);
		dvch_repository.save(dv_canho);
		message = "Them thanh cong";
			
		return ResponseEntity.ok(message);
	}
	
	@PostMapping("/canho/suadichvu/{idCanHo}")
	@ResponseBody
	public String getSuaDichVu(Model model, @PathVariable("idCanHo") String idCanHo,
			@RequestBody String res,
			@RequestParam(name = "idService") String idService,
			@RequestParam(name = "countService") String countService) {
		can_ho canho = canho_repository.findById(idCanHo).get();
		dich_vu dichvu = dv_repository.findById(idService).get();
		dich_vu_can_ho dv_canho = dvch_repository.getDichVuByDichVuCanHo(canho.getMa_can_ho(), dichvu.getMa_dich_vu());
		dv_canho.setSo_luong(Integer.parseInt(countService));

		dvch_repository.save(dv_canho);
		return "redirect:/canho/"+idCanHo;
	}
	
	@PostMapping("/canho/xoadichvu/{idCanHo}")
	@ResponseBody
	public String getXoaDichVu(Model model, @PathVariable("idCanHo") String idCanHo,
			@RequestBody String res,
			@RequestParam(name = "idService") String idService) {
		// lay dich vu cua can ho
		can_ho canho = canho_repository.findById(idCanHo).get();
		dich_vu dichvu = dv_repository.findById(idService).get();
		dich_vu_can_ho dv_canho = dvch_repository.getDichVuByDichVuCanHo(canho.getMa_can_ho(), dichvu.getMa_dich_vu());
		// set ngay lai
		Date currentDate = new Date();
		dv_canho.setNgay_ket_thuc(currentDate);
		// luu
		dvch_repository.delete(dv_canho);
		return "redirect:/canho/"+idCanHo;
	}

	private List<dich_vu> getDichVuChuaCo(List<dich_vu_can_ho> dichvudaco, List<dich_vu> tatcadichvu) {

		List<dich_vu> dichvuchuaco = new ArrayList<dich_vu>();
		Iterator<dich_vu_can_ho> it = dichvudaco.iterator();
		if (it.hasNext()) {
			dich_vu_can_ho equal = it.next();
			// lay cac dv chua co tim trong tat ca dich vu
			//[1,2,3,4,5]
			//[3,5]
			//->[1,2,5]
			//vi du lieu duoc sort san nen khong can sort lai
			for (dich_vu item: tatcadichvu) {
				if (it.hasNext()) {
					if (!item.getMa_dich_vu().equals(equal.getDich_vu().getMa_dich_vu())) {
						dichvuchuaco.add(item);
					} else {
						equal = it.next();
					}
				} else if (!item.getMa_dich_vu().equals(equal.getDich_vu().getMa_dich_vu()))
					dichvuchuaco.add(item);
			}
		} else {
			for (dich_vu item: tatcadichvu) {
				dichvuchuaco.add(item);
			}
		}
			
		return dichvuchuaco;
	}
	
	private List<dich_vu_can_ho> getDichVuChuaThem(List<dich_vu> dichvuchuaco, can_ho ch) {
		List<dich_vu_can_ho> dichvuchuathem = new ArrayList<dich_vu_can_ho>();
		for (dich_vu item: dichvuchuaco) {
			dich_vu_can_ho themDichVu = new dich_vu_can_ho();
			themDichVu.setCan_ho(ch);
			themDichVu.setDich_vu(item);
			themDichVu.setSo_luong(0);
			themDichVu.setNgay_bat_dau(new Date());
			dichvuchuathem.add(themDichVu);
		}
		return dichvuchuathem;
	}
	
	
}