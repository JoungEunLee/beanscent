package com.bs.vo;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	private int productId; // 상품번호
    private String productName; // 상품이름
    private int productPrice; // 상품가격
    private String productDetail; // 상품 상세정보
    private String productUrl; // 상품이미지 경로
    private MultipartFile productPhoto; // 상품이미지파일
    
    
    public int getId() {
		return productId;
	}

	public void setId(int productId) {
		this.productId = productId;
	}
	
	public String getName() {
		return productName;
	}

	public void setName(String productName) {
		this.productName = productName;
	}

	public int getPrice() {
		return productPrice;
	}

	public void setPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getDetail() {
		return productDetail;
	}

	public void setDetail(String productDetail) {
		this.productDetail = productDetail;
	}

	public String getUrl() {
		return productUrl;
	}

	public void setUrl(String productUrl) {
		this.productUrl = productUrl;
	}

	public MultipartFile getFile() {
		return productPhoto;
	}

	public void setFile(MultipartFile productPhoto) {
		this.productPhoto = productPhoto;
	}
    
    
}
