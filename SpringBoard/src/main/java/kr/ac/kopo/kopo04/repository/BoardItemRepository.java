package kr.ac.kopo.kopo04.repository;


import java.util.List;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.kopo04.domain.BoardItem;

@Repository
public interface BoardItemRepository extends JpaRepository<BoardItem, Long>, JpaSpecificationExecutor<BoardItem> {
	List<BoardItem> findAllByBoardIdAndParentIdIsNull(Long boardId);
	List<BoardItem> findAllByParentIdAndBoardId(Long parentId, Long boardId);
	//List<BoardItem> findAllByBoardIdAndParentIdIsNullAndTitleContainsOrBoardIdAndParentIdIsNullAndContentContains(Long boardId, String keyWord, Long boardId2, String keyWord2); 
	Page<BoardItem> findAllByBoardIdAndParentIdIsNullOrderByIdDesc(Long boardId, Pageable pageable);
	Page<BoardItem> findAllByBoardIdAndParentIdIsNullAndTitleContainsOrBoardIdAndParentIdIsNullAndContentContains(Long boardId, String keyWord, Long boardId2, String keyWord2, Pageable pageable);
}
