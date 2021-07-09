package kr.ac.kopo.kopo04.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.kopo04.domain.Board;
import kr.ac.kopo.kopo04.repository.BoardItemRepository;
import kr.ac.kopo.kopo04.repository.BoardRepository;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardRepository boardRepository;
	
	@Autowired
	private BoardItemRepository boardItemRepository;
	
	@Override
	public String testNoTransactional() {
		// TODO Auto-generated method stub
		Board board = boardRepository.findById(2L).get();
		board.setTitle("스포츠 게시판");
		boardRepository.save(board);
		throw new RuntimeException("Spring Boot No Transactional Test");
	}

	@Override
	@Transactional
	public String testTransactional() {
		// TODO Auto-generated method stub
		Board board = boardRepository.findById(2L).get();
		board.setTitle("스포츠 게시판");
		boardRepository.save(board);
		throw new RuntimeException("Spring boot Transcational Test");
	}


	
	
}
