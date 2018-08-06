package com.bs.service;

import java.util.List;

import com.bs.vo.ProductVO;

public interface ProductService {

	public List<ProductVO> listProduct();
	public ProductVO detailProduct(int productId);
	public void updateProduct(ProductVO vo);
	public void deleteProduct(int productId);
}
