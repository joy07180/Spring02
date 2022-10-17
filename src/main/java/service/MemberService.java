package service;

import java.util.List;

import criTest.SearchCriteria;
import vo.MemberVO;

public interface MemberService {
	
	// ** SearchCriteria PageList
	List<MemberVO> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
		

	// ** selectList
	List<MemberVO> selectList();

	// ** selectOne
	MemberVO selectOne(MemberVO vo);

	// ** Insert
	int insert(MemberVO vo);

	// ** update
	int update(MemberVO vo);

	// ** delete
	int delete(MemberVO vo);

}