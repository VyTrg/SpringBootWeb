package com.quanlyphichungcu.doAn.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.quanlyphichungcu.doAn.entity.ChuSoHuu;




import java.util.List;


import org.springframework.stereotype.Repository;



@Repository
public interface chuSoHuuRepository extends JpaRepository<ChuSoHuu, String> {
//	List<ChuSoHuu> findBySdt(String sdt);

}
