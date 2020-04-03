package com.idea.mmh.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.WebUtils;

import com.idea.mmh.model.biz.FileValidator;
import com.idea.mmh.model.dto.UploadFile;

//미사용

@Controller
public class UpdownController {
	
	@Autowired
	private FileValidator fileValidator;

	@RequestMapping("/form.do")
	public String uploadForm() {
		return "upload";
	}

	//
	@RequestMapping(value="/upload.do" ,method = RequestMethod.POST)
	public String fileUpload(HttpServletRequest request, Model model,
							 UploadFile uploadFile, BindingResult result, String no) {
		
		fileValidator.validate(uploadFile, result);
		if(result.hasErrors()) {
			return "viewadmin";
		}
		
		//String no=(String) request.getAttribute("no");
		System.out.println("넘어온 no의 값은"+no);
		MultipartFile file = uploadFile.getMpfile();
		String name = no+".jpg";
		System.out.println("넘어온 name의 값은"+name);
		UploadFile fileObj = new UploadFile();
		fileObj.setName(name);
		fileObj.setDesc(uploadFile.getDesc());
		
		InputStream inputStream = null;
		OutputStream outputStream = null;
		
		try {
			inputStream = file.getInputStream();
			String path = WebUtils.getRealPath(
					request.getSession().getServletContext(),"/resources/img");		
			System.out.println("upload real path : " + path);
			
			File storage = new File(path);
			if(!storage.exists()) {
				storage.mkdir();
			}
			
			File newFile = new File(path + "/" + name);
//			if(!newFile.exists()) {
				newFile.createNewFile();
//			}
			
			outputStream = new FileOutputStream(newFile);
			
			int read = 0;
			byte[] b = new byte[(int)file.getSize()];
			while((read=inputStream.read(b)) != -1) {
				outputStream.write(b, 0, read);
			}
		
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				inputStream.close();
				outputStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		model.addAttribute("fileObj", fileObj);
		
		return "redirect:admin.do";
	}
	
	@RequestMapping("/download.do")
	@ResponseBody
	public byte[] fileDownload(HttpServletRequest request, HttpServletResponse response, 
							   String name) {
		
		byte[] down = null;
		
		try {
			String path = WebUtils.getRealPath(
					request.getSession().getServletContext(), "/storage");
			File file = new File(path + "/" + name);
		
			down = FileCopyUtils.copyToByteArray(file);
			String filename = new String(file.getName().getBytes(), "8859_1");
		
			response.setHeader("Content-Disposition", 
					"attachment; filename=\""+filename+"\""); 
			response.setContentLength(down.length);
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return down;
	}
	
	
}










