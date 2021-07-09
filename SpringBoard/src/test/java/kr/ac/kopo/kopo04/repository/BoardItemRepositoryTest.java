package kr.ac.kopo.kopo04.repository;

import java.util.ArrayList;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.hibernate.Hibernate;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import kr.ac.kopo.kopo04.domain.Board;
import kr.ac.kopo.kopo04.domain.BoardItem;

@SpringBootTest
class BoardItemRepositoryTest {
	
	@Autowired
	private BoardRepository boardRepository;
	
	@Autowired
	private BoardItemRepository boardItemRepository;
	
//	@Test         // 게시판(board)생성 메소드
	void create() {
		Board board1 = new Board();					// Board 객체 생성
		board1.setTitle("4번게시판");					// Board 게시글 제목을 title1으로 설정
		
		BoardItem boardItem1 = new BoardItem();		// BoardItem 객체 생성
		boardItem1.setTitle("boardItem1");			// 게시글 제목을 boardItem1로 설정
		boardItem1.setBoard(board1);				// 게시글의 게시판을 board1(title1)으로 설정
		
		BoardItem boardItem2 = new BoardItem();		
		boardItem2.setTitle("boardItem2");
		boardItem2.setBoard(board1);
		
		List<BoardItem> list = new ArrayList<>();	// BoardItem 리스트 객체 생성
		list.add(boardItem1);						// 리스트에 boardItem1 넣기
		list.add(boardItem2);						// 리스트에 boardItem2 넣기
		
		board1.setBoardItems(list);					// board의 boardItems를 리스트의 값으로 설정
		
		boardRepository.save(board1);				// CURD 메소드를 이용하여 board Insert 하기
													// --> board1이라는 게시글이 DB에 Insert되며
													// 	   게시판 제목은 title1
													//     게시글은 총 2개로 boardItem1과 boardItem2가 존재
	}
	
//	@Transactional
//	@Test
	void selectAll1() {
		Optional<Board> boardOptional = boardRepository.findById(18L);
		if (boardOptional.isPresent()) {
			Board board = boardOptional.get();
			Hibernate.initialize(board.getBoardItems());
			System.out.println(board.getTitle());
		}
	}
	
//	@Test
	void selectAll2() {
		List<BoardItem> boardItems = boardItemRepository.findAll();
		for(BoardItem boardItem: boardItems) {
			System.out.println(boardItem.getTitle());
		}
	}
	
	
	@Transactional
	@Test // 1번
	void selectOne1() {
		Optional<Board> boardOptional = boardRepository.findById(1L);
		if (boardOptional.isPresent()) {
			Board board = boardOptional.get();
			System.out.println(board.getTitle());
			List<BoardItem> boardItems = board.getBoardItems();
			for (BoardItem boardItem : boardItems) {
				System.out.println(boardItem.getId());
				System.out.println(boardItem.getTitle());
			}
		}
	}
	
//	@Test // 2번
	void selectOne2() {
		Optional<Board> boardOptional = boardRepository.findById(1L);
		if (boardOptional.isPresent()) {
			Board board = boardOptional.get();
			System.out.println(board.getTitle());
			List<BoardItem> boardItems = board.getBoardItems();
			if (boardItems.isEmpty()) {
				System.out.println("게시글이 존재하지 않습니다.");
			} else {
				for (BoardItem boardItem : boardItems) {
					System.out.println(boardItem.getId());
					System.out.println(boardItem.getTitle());
				}
			}
		}
	}
	
//	@Test // 3번
	void selectOne3() {
		Optional<BoardItem> boardItemOptional = boardItemRepository.findById(1L);
		if (boardItemOptional.isPresent()) {
			BoardItem boardItem = boardItemOptional.get();
			System.out.println(boardItem.getTitle());
			
			Board board = boardItem.getBoard();
			System.out.println(board.getId());
			System.out.println(board.getTitle());

		}
	}
//	
//	@Test // 4번
//	void deleteOne() {
//		boardRepository.deleteById(3L);
//	}
//	
	
	
	
	
	
	
	

	
//	//@Test
//	void selectAll3() {
//		List<BoardItem> boardItems = boardItemRepository.findAllByBoardId((long)1);
//		for (BoardItem boardItem : boardItems) {
//			System.out.println(boardItem.getTitle());
//		}
//	}

}














