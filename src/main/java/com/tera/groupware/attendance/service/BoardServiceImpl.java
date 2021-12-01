package com.tera.groupware.attendance.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tera.groupware.attendance.dao.BoardDAO;
import com.tera.groupware.attendance.model.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Inject
	private BoardDAO boardDAO;
	
	public List<BoardVO> getBoardList() throws Exception {
		return boardDAO.getBoardList();
	}

}
