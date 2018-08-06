package com.bs.vo;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	private int productId; // ��ǰ��ȣ
    private String productName; // ��ǰ�̸�
    private int productPrice; // ��ǰ����
    private String productDetail; // ��ǰ ������
    private String productUrl; // ��ǰ�̹��� ���
    private MultipartFile productPhoto; // ��ǰ�̹�������
    
    
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
