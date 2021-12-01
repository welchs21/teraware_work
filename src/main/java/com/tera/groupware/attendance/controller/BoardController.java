package com.tera.groupware.attendance.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tera.groupware.attendance.service.BoardService;

//import com.example.demo.service.BoardService;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
	
//	@Inject
//	private BoardService boardService;
	
//	@RequestMapping(value = "/getBoardList", method = RequestMethod.GET)
//	public String getBoardList(Model model) throws Exception {
//		model.addAttribute("boardList", boardService.getBoardList());
//		return "board/index";
//	}
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "/getBoardList", method = RequestMethod.GET)
	public String getBoardList(Map<String, String> map, Model model) throws Exception {
		List<Map<String, String>> listMap =  boardService.getBoardListEx(map);
		
		model.addAttribute("boardList", listMap);
		return "board/index";
	}

}