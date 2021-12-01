package com.tera.groupware.attendance.service;

import java.util.List;
//import java.util.List;
import java.util.Map;

//import com.tera.groupware.attendance.model.BoardVO;

public interface BoardService {
//	public List<BoardVO> getBoardList() throws Exception;
	public List<Map<String, String>> getBoardListEx(Map<String, String> map) throws Exception;
}
