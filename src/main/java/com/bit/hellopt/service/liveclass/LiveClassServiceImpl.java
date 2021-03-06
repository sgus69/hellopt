package com.bit.hellopt.service.liveclass;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.hellopt.data.LiveClassMapper;
import com.bit.hellopt.vo.LiveClass;

@Service
public class LiveClassServiceImpl implements LiveClassService {
	
	@Autowired
	LiveClassMapper liveClassMapper;
	
	@Override
	public void insertClass(LiveClass liveClass) {
		liveClassMapper.insertClass(liveClass);
	}

	@Override
	public List<LiveClass> getLiveClass() {
		return liveClassMapper.getLiveClass();
	}

	@Override
	public LiveClass getClassDetail(int classIdx) {
		return liveClassMapper.getClassDetail(classIdx);
	}

	@Override
	public void deleteClass(int classIdx) {
		liveClassMapper.deleteClass(classIdx);
	}

}
