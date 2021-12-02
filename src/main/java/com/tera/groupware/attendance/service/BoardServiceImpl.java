package com.tera.groupware.attendance.service;

import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tera.groupware.attendance.mapper.BoardMapper;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	
	
	@Autowired
	private BoardMapper boardMapper;
	
	public List<Map<String, String>> getBoardList(Map<String, String> map) throws Exception {
		return boardMapper.getBoardList(map);
	}

}
