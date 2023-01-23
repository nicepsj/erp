package com.multi.erp.naver.clova;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class NaverClovaController {
	//파일업로드 되는 영수증에서 필요한 정보를 추출해서 리턴 - ocr서비스 사용후 결과를 뷰로 보내기
	@RequestMapping(value="/naverclova/ocr",produces = "application/text;charset=utf-8")
	@ResponseBody
	public String ocrtest(NCPCloverOcrDTO dto,Model model,HttpSession session) {
		System.out.println("test=>"+dto);
		return "commonjob/receiptjob";
	}
}
