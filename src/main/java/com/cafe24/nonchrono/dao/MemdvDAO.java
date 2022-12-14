package com.cafe24.nonchrono.dao;

import com.cafe24.nonchrono.dto.MemdvDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemdvDAO {
    
    public MemdvDAO() {
        System.out.println("-----MemdvDAO() 객체 생성됨");
    }

    @Autowired
    SqlSession sqlSession;

    public List<MemdvDTO> list(String mem_id) {
        return sqlSession.selectList("memdv.list", mem_id);
    }

    public void insert(MemdvDTO memdvDTO) {
        sqlSession.insert("memdv.insert", memdvDTO);
    }

    public MemdvDTO listDetail(int mem_dvnum) {
        return sqlSession.selectOne("memdv.listDetail", mem_dvnum);
    }

    public void update(MemdvDTO memdvDTO) {
        sqlSession.update("memdv.update", memdvDTO);
    }

    public int delete(int mem_dvnum) {
        return sqlSession.delete("memdv.delete", mem_dvnum);
    }

}
