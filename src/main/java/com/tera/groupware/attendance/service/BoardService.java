package com.tera.groupware.attendance.service;

import java.util.List;
import java.util.Map;

public interface BoardService {
	public List<Map<String, String>> getBoardList(Map<String, String> map) throws Exception;
	
}
