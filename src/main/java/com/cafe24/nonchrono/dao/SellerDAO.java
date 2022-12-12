package com.cafe24.nonchrono.dao;

import com.cafe24.nonchrono.dto.*;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class SellerDAO {

    @Autowired
    private SqlSession sqlSession;

    public SellerDAO() {
        System.out.println("------SellerDAO() 객체 생성");
    }//end

    public List<SellerDTO> list() {
        return sqlSession.selectList("seller.list");
    }
    public String login(String id, String pw) {
        SellerDTO dto = new SellerDTO();
        dto.setSl_id(id);
        dto.setSl_pw(pw);
        return sqlSession.selectOne("seller.login", dto);
    }//login() end

    public int sellerInsert(SellerDTO sellerDTO) {
        return sqlSession.insert("seller.insert", sellerDTO);
    }//sellerInsert() end

    public int dv_insert(DeliveryDTO deliveryDTO) {
        return sqlSession.insert("seller.dv_insert", deliveryDTO);
    } // insert() end

    public List<DeliveryDTO> dv_list() {
        return sqlSession.selectList("seller.dv_list");
    }



}//class end
