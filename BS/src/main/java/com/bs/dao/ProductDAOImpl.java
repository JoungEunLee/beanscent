package com.bs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bs.vo.ProductVO;

@Repository
public class ProductDAOImpl implements ProductDAO {

    @Inject
    SqlSession sqlSession;

	@Override
	public List<ProductVO> listProduct() {
        return sqlSession.selectList("listProduct");
    }

	@Override
	public ProductVO detailProduct(int productId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("detailProduct", productId);
	}

	@Override
	public void updateProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteProduct(int productId) {
		// TODO Auto-generated method stub
		
	}



}

