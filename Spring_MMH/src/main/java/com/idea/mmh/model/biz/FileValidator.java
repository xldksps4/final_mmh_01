package com.idea.mmh.model.biz;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.idea.mmh.model.dto.UploadFile;

//미사용

@Service
public class FileValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// validator 사용 가능 여부 확인
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		UploadFile file = (UploadFile) target;
		
		if(file.getMpfile().getSize() == 0) {
			errors.rejectValue("mpfile", "fileNPE", "Please select a file");
			// mpfile(field)에 대한 errorCode return. default message 전달
		}
	}
}












