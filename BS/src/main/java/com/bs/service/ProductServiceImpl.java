package com.bs.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bs.dao.ProductDAO;
import com.bs.vo.ProductVO;

@Service
public class ProductServiceImpl implements ProductService {

	@Inject
	ProductDAO productDao;
	
	@Override
	public java.util.List<ProductVO> listProduct() {
		// TODO Auto-generated method stub
		return productDao.listProduct();
	}

	@Override
	public ProductVO detailProduct(int productId) {
		// TODO Auto-generated method stub
		return productDao.detailProduct(productId);
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

