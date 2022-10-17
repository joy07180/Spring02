package mapperInterface;

import java.util.List;

import vo.JoVO;

public interface JoMapper {
	
	// ** selectList
	List<JoVO> selectList();
	// ** selectOne
	 JoVO selectOne(JoVO vo);
	//  Insert
	int insert(JoVO vo);
	// ** update
	int update(JoVO vo);
	// ** delete
	int delete(JoVO vo);

	
	
} //interface
