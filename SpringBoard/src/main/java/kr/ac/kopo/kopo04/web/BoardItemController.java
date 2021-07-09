package kr.ac.kopo.kopo04.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.kopo.kopo04.domain.Board;
import kr.ac.kopo.kopo04.domain.BoardItem;
import kr.ac.kopo.kopo04.paging.Criteria;
import kr.ac.kopo.kopo04.repository.BoardItemRepository;
import kr.ac.kopo.kopo04.repository.BoardRepository;
import kr.ac.kopo.kopo04.service.BoardItemService;


@Controller
public class BoardItemController {
	
	@Autowired
	BoardItemRepository boardItemRepository;
	@Autowired
	BoardRepository boardRepository;
	@Autowired
	BoardItemService boardItemService;
	
	@RequestMapping(value="/boardItem/{id}", method=RequestMethod.GET)
	public String selectBoardItem(@PathVariable(name = "id") Long boardId, Model model,
								  @PageableDefault (size = 10) Pageable pageable) {
		
		Page<BoardItem> boardItemPage = boardItemRepository.findAllByBoardIdAndParentIdIsNullOrderByIdDesc(boardId, pageable);
		Long boardItemAllCnt = boardItemPage.getTotalElements();
		Criteria criteria = new Criteria(boardItemPage);
		Optional<Board> boardOptional = boardRepository.findById(boardId);
		Board board = boardOptional.get();
		//List<BoardItem> boardItem = boardItemRepository.findAllByBoardIdAndParentIdIsNull(boardId);
		model.addAttribute("boardItemList", boardItemPage);
		model.addAttribute("boardId",board.getId());
		model.addAttribute("criteria", criteria);
		model.addAttribute("totalCount", boardItemAllCnt);
		model.addAttribute("board", board.getTitle());
		return "boardItem";
	}
	
	@RequestMapping(value="/boardItem/boardItemWrite/{boardId}", method= {RequestMethod.GET, RequestMethod.POST})
	public String writeBoardItem(@PathVariable(name = "boardId") Long boardId, Model model) {
		Optional<Board> boardOptional = boardRepository.findById(boardId);
		Board board = boardOptional.get();
		model.addAttribute("boardId", boardId);
		model.addAttribute("date", boardItemService.getDate());
		model.addAttribute("board", board.getTitle());
		return "boardItemWrite";
	}
	
	@RequestMapping(value="/boardItem/boardItemInsert/{boardId}", method= {RequestMethod.GET, RequestMethod.POST})
	public String insertBoardItem(	
									@PathVariable(name = "boardId") Long boardId,
									@RequestParam(name = "title") String title,
									@RequestParam(name = "content") String content,
									Model model) {
		
		Optional<Board> boardOptional = boardRepository.findById(boardId);
		Board board = boardOptional.get();
		
		String date = boardItemService.getDate();
		content = content.replaceAll("\n", "<br>");
		BoardItem boardItem = new BoardItem();
		boardItem.setTitle(title);
		boardItem.setContent(content);
		boardItem.setDate(date);
		boardItem.setBoard(board);
		
		List<BoardItem> list = new ArrayList<>();
		list.add(boardItem);
		board.setBoardItems(list);
		boardRepository.save(board);
		
		model.addAttribute("boardId", boardId);
		model.addAttribute("title", title);
		model.addAttribute("content", content);
		model.addAttribute("date", date);
		model.addAttribute("board", board.getTitle());
		return "boardItemInsertView";
	}
	
	@RequestMapping(value="/boardItem/boardItemSelectView/{boardId}/{id}/{count}", method= {RequestMethod.GET, RequestMethod.POST})
	public String selectView(@PathVariable(name = "boardId") Long boardId,
							 @PathVariable(name = "id") Long id,
							 @PathVariable(name = "count") int count,
							 Model model){
		
		Optional<BoardItem> boardItemOptional = boardItemRepository.findById(id);
		if (boardItemOptional.isPresent()) {
			BoardItem boardItem = boardItemOptional.get();
			Board board = boardItem.getBoard();
			model.addAttribute("count", count);
			model.addAttribute("boardId", boardId);
			model.addAttribute("id", id);
			model.addAttribute("title", boardItem.getTitle());
			model.addAttribute("date", boardItem.getDate());
			model.addAttribute("content", boardItem.getContent());
			model.addAttribute("board", board.getTitle());
			
		}
		
		List<BoardItem> boardItemComment = boardItemRepository.findAllByParentIdAndBoardId(id,boardId);
		model.addAttribute("commentList", boardItemComment);
		return "boardItemSelectView";
	}
	
	@RequestMapping(value ="/boardItem/boardItemUpdate/{boardId}/{id}/{count}",  method= {RequestMethod.GET, RequestMethod.POST})
	public String updateOne(@PathVariable(name = "boardId") Long boardId,
							@PathVariable(name = "id") Long id,
							@PathVariable(name = "count") int count,
							Model model) {
		Optional<BoardItem> boardItemOptional = boardItemRepository.findById(id);
		if (boardItemOptional.isPresent()) {
			BoardItem boardItem = boardItemOptional.get();
			Board board = boardItem.getBoard();
			model.addAttribute("count", count);
			model.addAttribute("boardId", boardId);
			model.addAttribute("id", id);
			model.addAttribute("title", boardItem.getTitle());
			model.addAttribute("date", boardItem.getDate());
			model.addAttribute("content", boardItem.getContent());
			model.addAttribute("board", board.getTitle());
		}
		
		return "boardItemUpdate";
	}
	
	@RequestMapping(value = "/boardItem/boardItemDelete/{boardId}/{id}", method = {RequestMethod.GET, RequestMethod.POST})
	public String deleteOne(@PathVariable(name = "boardId") Long boardId,
							@PathVariable(name = "id") Long id,
							Model model) {
		model.addAttribute("boardId", boardId);
		model.addAttribute("msg", "게시글이 삭제되었습니다");
		model.addAttribute("url", "boardItem/" + boardId);
		boardItemRepository.deleteById(id);
		
		return "boardItemDelete";
	}
	
	@RequestMapping(value = "/boardItem/boardItemUpdateView/{boardId}/{id}/{count}",
					method = {RequestMethod.GET, RequestMethod.POST})
	public String updateOneView(@PathVariable(name = "boardId") Long boardId,
								@PathVariable(name = "id") Long id,
								@PathVariable(name = "count") int count,
								@RequestParam(name = "title") String title,
								@RequestParam(name = "content") String content,
								Model model) {
		Optional<Board> boardOptional = boardRepository.findById(boardId);
		Board board = boardOptional.get();		
		model.addAttribute("msg", "게시글이 수정되었습니다");
		model.addAttribute("url", "boardItem/boardItemSelectView/" + boardId + "/" + id + "/" + count);
		
		Optional<BoardItem> boardItemOptional1 = boardItemRepository.findById(id);
		BoardItem boardItem1 = boardItemOptional1.get();
		String date = boardItemService.getDate();
		boardItem1.setBoard(board);
		boardItem1.setContent(content);
		boardItem1.setTitle(title);
		boardItem1.setDate(date);
		boardItemRepository.save(boardItem1);
		return "boardItemUpdateView";
	}
	
	@RequestMapping(value = "/boardItem/boardItemComment/{boardId}/{id}/{count}",
					method = {RequestMethod.GET, RequestMethod.POST})
	public String insertComment(@PathVariable(name = "boardId") Long boardId,
								@PathVariable(name = "id") Long id,
								@PathVariable(name = "count") int count,
								@RequestParam(name = "comment") String comment,
								Model model) {
		
		Optional<Board> boardOptional = boardRepository.findById(boardId);
		Board board = boardOptional.get();
		
		String date = boardItemService.getDate();
		comment = comment.replaceAll("\n", "<br>");
		BoardItem boardItem = new BoardItem();
		boardItem.setContent(comment);
		boardItem.setDate(date);
		boardItem.setBoard(board);
		boardItem.setParent_id(id);
		List<BoardItem> list = new ArrayList<>();
		list.add(boardItem);
		board.setBoardItems(list);
		boardRepository.save(board);
		
		model.addAttribute("boardId", boardId);
		model.addAttribute("id", id);
		model.addAttribute("count", count);
		model.addAttribute("url", "boardItem/boardItemSelectView/" + boardId + "/" + id + "/" + count);
		return "boardItemComment";
	}
	
	@RequestMapping(value = "/boardItem/boardItemSearched/{boardId}", method = {RequestMethod.GET, RequestMethod.POST})
	public String boardItemSearched(@PathVariable(name = "boardId") Long boardId,
									@RequestParam(name = "keyWord") String keyWord,
									Model model,
									@PageableDefault (size = 10) Pageable pageable) {
		if (keyWord.isEmpty() || keyWord == "") {
			boolean error = true;
			model.addAttribute("error", error);
			model.addAttribute("url", "boardItem/" + boardId);
			return "boardItemSearched";
		}
		Optional<Board> boardOptional = boardRepository.findById(boardId);
		Board board = boardOptional.get();
		Page<BoardItem> boardItemPage = boardItemRepository.findAllByBoardIdAndParentIdIsNullAndTitleContainsOrBoardIdAndParentIdIsNullAndContentContains(boardId, keyWord, boardId, keyWord, pageable);
		Long boardItemAllCnt = boardItemPage.getTotalElements();
		Criteria criteria = new Criteria(boardItemPage);
		//List<BoardItem> boardItemSearched = boardItemRepository.findAllByBoardIdAndParentIdIsNullAndTitleContainsOrBoardIdAndParentIdIsNullAndContentContains(boardId, keyWord, boardId, keyWord);
		model.addAttribute("boardItemListSearched", boardItemPage);
		model.addAttribute("boardId",board.getId());
		model.addAttribute("board",board.getTitle());
		model.addAttribute("totalCount", boardItemAllCnt);
		model.addAttribute("criteria", criteria);
		return "boardItemSearched";
	}
	
}
