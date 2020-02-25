package com.bit.hellopt.service.reviewboard;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bit.hellopt.data.RBoardMapper1;
import com.bit.hellopt.data.RBoardMapper2;
import com.bit.hellopt.vo.reviewboard.RBoardVO;
import com.bit.hellopt.vo.reviewboard.RFileVO;
import com.bit.hellopt.vo.user.User;


@Service
public class RBoardServiceImpl implements RBoardService {
	
	@Autowired
	RBoardMapper1 mapper;
	RBoardMapper2 mapper2;
	
	
	
	@Override
	public void insertBoard(RBoardVO vo) {
		mapper.insertRBoard(vo);
	}

	@Override
	public void updateBoard(RBoardVO vo) {
		mapper.updateRBoard(vo);
		
	}

	@Override
	public void deleteBoard(RBoardVO vo) {
		mapper.deleteRBoard(vo);
		
	}

	@Override
	public List<RBoardVO> getRBoardList() {
		return mapper.getRBoardList();
	}

	@Override
	public List<RBoardVO> selectUser(User vo) {
		return mapper2.join1(vo);
		
	}
	@Override
	public void uploadFile(String revFileOname, String saveFileName, long fileSize, int revIdx) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("revFileOname", revFileOname);
		hm.put("revFileSname", saveFileName);
		hm.put("revFileSize", fileSize);
		hm.put("revIdx", revIdx);
		System.out.println(hm);
		mapper.uploadFile(hm);
	}

	@Override
	public List<RBoardVO> selectFile(RFileVO fvo) {
		return mapper2.join2(fvo);
	}

	@Override
	public List<RFileVO> getFileList(int revIdx) {
		return mapper.getFileList(revIdx);
	}


}