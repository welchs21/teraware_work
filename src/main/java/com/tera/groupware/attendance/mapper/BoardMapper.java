package com.tera.groupware.attendance.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Mapper
@Repository
public interface BoardMapper {
	public List<Map<String, String>> getBoardList(Map<String, String> map);
}
