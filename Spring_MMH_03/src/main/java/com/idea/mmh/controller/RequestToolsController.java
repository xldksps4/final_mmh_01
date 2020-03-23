package com.idea.mmh.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.idea.mmh.model.biz.MindBiz;
import com.idea.mmh.model.biz.NoteBiz;
import com.idea.mmh.model.biz.PoitBiz;
//restcontroller 어노테이션 쓰는건 결국 requestbody랑 responsebody를 사용한다는 거고
//그러면 viewresolver를 거치지 않고 페이지를 보여주는거기때문에
//그래서 뷰페이지에서도 아작스로 구성이 되있어야하나?
@RestController
@RequestMapping("/com/idea/mmh/controller/*")
public class RequestToolsController {

	private Logger logger = LoggerFactory.getLogger(RequestToolsController.class);

	@Autowired
	private MindBiz mindbiz;
	@Autowired
	private NoteBiz notebiz;
	@Autowired
	private PoitBiz poitbiz;
	
	@RequestMapping(value = "/requesttools", method = RequestMethod.POST)
	public Map<Object, Object> requestTools(Model model) {
		
		logger.info("controller�� requestTools form�Դϴ�.");
		
		Map<Object, Object> writeTools = new HashMap<Object, Object>();
		
		writeTools.put(mindbiz, mindbiz);
		writeTools.put(notebiz, notebiz);
		writeTools.put(poitbiz, poitbiz);
//		model.addAttribute(writeTools);
//		addObject : attribute와 달리 값을 보내는 메서드
	return writeTools;
	}
	
	/*
	 * @RequestBody  : request 객체를 통해 넘어오는 데이터를 java객체에 binding(dto저장)
	 * @ResponseBody : java 객체를 response 객체에 binding // viewResolver에 잡히지 않게 해주는 애
	 *   --
	 */
}
