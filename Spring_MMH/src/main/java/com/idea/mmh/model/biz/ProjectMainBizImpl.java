package com.idea.mmh.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idea.mmh.model.dao.ProjectMainDao;

@Service
public class ProjectMainBizImpl implements ProjectMainBiz {

	@Autowired
	private ProjectMainDao projectmaindao;
	
	@Override
	public int project() {
		return projectmaindao.project();
	}
}
