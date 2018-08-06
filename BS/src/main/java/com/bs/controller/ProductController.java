package com.bs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bs.service.ProductService;

@Controller
@RequestMapping("product/*")
public class ProductController {

	 @Inject
	    ProductService productService;
	 
	    // 1. 상품 전체 목록
	    @RequestMapping("product/blended.do")
	    public ModelAndView list(ModelAndView mav) {
	        mav.setViewName("/product/blended");
	        mav.addObject("list", productService.listProduct());
	        System.out.println("======================");
	        System.out.println("리스트 결과는 mav:"+mav);
	        System.out.println("======================");
	        
	        return mav;
	    }
	    // 2. 상품 상세보기
	    @RequestMapping("product/blendedDetail/{productId}")
	    public ModelAndView detail(@PathVariable("productId") int productId, ModelAndView mav){
	        mav.setViewName("/product/blendedDetail");
	        mav.addObject("vo", productService.detailProduct(productId));
	        return mav;
	    }
	}