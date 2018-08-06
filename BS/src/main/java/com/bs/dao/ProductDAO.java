package com.bs.dao;

import java.util.List;

import com.bs.vo.ProductVO;

public interface ProductDAO {

	public List<ProductVO> listProduct();
	public ProductVO detailProduct(int productId);
	public void updateProduct(ProductVO vo);
	public void deleteProduct(int productId);

}
