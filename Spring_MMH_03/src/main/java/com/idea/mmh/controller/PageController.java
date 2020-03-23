package com.idea.mmh.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.idea.mmh.model.biz.MindBiz;
import com.idea.mmh.model.biz.NoteBiz;
import com.idea.mmh.model.biz.PoitBiz;

@Controller
public class PageController {

	private Logger logger = LoggerFactory.getLogger(RequestToolsController.class);

	@Autowired
	private MindBiz mindbiz;
	@Autowired
	private NoteBiz notebiz;
	@Autowired
	private PoitBiz poitbiz;
	
	
}
