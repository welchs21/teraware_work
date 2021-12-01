package com.tera.groupware.attendance.service;

import java.util.List;
//import java.util.List;
import java.util.Map;

//import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//import com.tera.groupware.attendance.dao.BoardDAO;
import com.tera.groupware.attendance.mapper.BoardMapper;
//import com.tera.groupware.attendance.model.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	
//	@Inject
//	private BoardDAO boardDAO;
//	
//	public List<BoardVO> getBoardList() throws Exception {
//		return boardDAO.getBoardList();
//	}
	
	@Autowired
	private BoardMapper boardMapper;
	
	public List<Map<String, String>> getBoardListEx(Map<String, String> map) throws Exception {
		return boardMapper.getBoardListEx(map);
	}

}
