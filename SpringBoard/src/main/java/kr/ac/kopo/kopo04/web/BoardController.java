package kr.ac.kopo.kopo04.web;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.kopo04.repository.BoardRepository;

@Controller
public class BoardController {
	
	@Autowired
	private BoardRepository boardRepository;
	
	@RequestMapping(value = "/board")
	public String selectAll(Model model) {
		model.addAttribute("boardList", boardRepository.findAll());
		return "board";
	}
}
