package kr.ac.kopo.kopo04.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;
import kr.ac.kopo.kopo04.domain.Board;
import kr.ac.kopo.kopo04.domain.BoardItem;

@Repository
public interface BoardRepository extends JpaRepository<Board, Long>, JpaSpecificationExecutor<Board>{
	
}
