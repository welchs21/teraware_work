package com.tera.groupware.attendance.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

//import com.tera.groupware.attendance.model.BoardVO;

@Mapper
@Repository
public interface BoardMapper {
	public List<Map<String, String>> getBoardListEx(Map<String, String> map);
}
