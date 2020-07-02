package com.javaex.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.dao.PhoneDao;
import com.javaex.vo.PersonVo;

@Controller
@RequestMapping("/phone")
public class PhoneController {

	// 필드
	
	// 생성자 (현재 디폴트생성자 사용중)
	
	// 갯터 셋터
	
	// 메소드
	
//	@RequestMapping( value="/test") // 주소체계 명령어 : RequestMapping
//	public String test() {
//		System.out.println("test");
//		return "/WEB-INF/views/index.jsp";
//	}
	
	@RequestMapping(value="/list", method= {RequestMethod.GET, RequestMethod.POST})
	public String list(Model model) {
		// 따로 값을 받을 건 없음. DB셋팅 필요없고, Dao가 있으니까 Dao 를 불러오면 됨.
		PhoneDao phoneDao = new PhoneDao();	// 
		// phoneDao.getPersonList(); 이렇게 불러와서 받아줘야됨
		List<PersonVo> pList = phoneDao.getPersonList();
		// phoneList 잘 나오는지 테스트
		System.out.println(pList.toString());
		
		// 값을 담아보자.
		model.addAttribute("pList", pList);
		
		return "/WEB-INF/views/list.jsp";
	}
	

	
	@RequestMapping(value="/writeForm", method= {RequestMethod.GET, RequestMethod.POST})
	public String writeForm() {
		return "/WEB-INF/views/writeForm.jsp";
	}
	
//	@RequestMapping(value="/write", method=RequestMethod.GET)
//	public String write(@RequestParam("name") String name,
//						@RequestParam(value="hp", required=false, defaultValue="0") String hp, // hp 값이 없을 때는 0값으로 채워라. (예외처리)
//						@RequestParam("company") String company) {	// 파라미터에서 name, hp, company 를 꺼내서 String 변수 name, hp, company 에 넣어줘
//	
//		// String name, hp, company를 테스트해보자.
//		System.out.println("/phone.write()");
//		System.out.println(name + ',' + hp + ',' + company);
//		
//		// Vo 로 묶어보자.
//		PersonVo persVo = new PersonVo(name, hp, company);
//				
//		return "";
//	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String write(@ModelAttribute PersonVo persVo) {	// 파라미터에 있는 값을 PersonVo persVo 에 알아서 넣어줘. Model 은 데이터를 의미	
		// @ModelAttribute PersonVo가 실행되는 메커니즘은 PersonVo의 디폴트 생성자를 사용하므로, 디폴트 생성자가 없다면 에러가 발생한다. 
		// 어떤 데이터들이 있을지 모르므로 디폴트 생성자를 사용하는 것임, 그러므로 디폴트 생성자가 있어야지만 실행된다.
		
		// String name, hp, company를 테스트해보자.
		System.out.println("/phone.write()");
		System.out.println(persVo.toString());
		
		// Dao 에 넣어주삼
		PhoneDao phoneDao = new PhoneDao();
		phoneDao.personInsert(persVo);	// PersonVo를 이용하여 받은 값을 PhoneDao의 personInsert()메소드를 통하여 DB에 값 넣기.
		
		return "redirect:/phone/list";
	}
		
}
