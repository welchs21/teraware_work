package com.tera.groupware.attendance.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tera.groupware.attendance.domain.BoardDTO;

@Mapper
public interface BoardMapper{
	public int insertBoard(BoardDTO params);

	public BoardDTO selectBoardDetail(Long idx);

	public int updateBoard(BoardDTO params);

	public int deleteBoard(Long idx);

	public List<BoardDTO> selectBoardList();

	public int selectBoardTotalCount();
}
