package com.tera.groupware.attendance.service;

import java.util.List;

import com.tera.groupware.attendance.model.BoardVO;

public interface BoardService {
	public List<BoardVO> getBoardList() throws Exception;
}
