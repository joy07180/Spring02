package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.JoMapper;
import vo.JoVO;

//** Service
//=> 요청클래스 와 DAO클래스 사이의 연결(완충지대) 역할
//=> 요청클래스(컨트롤러) 와 DAO클래스 사이에서 변경사항이 생기더라도 서로 영향 받지않도록해주는 역할
// 결합도는 낮추고, 응집도는 높인다

//** interface 자동완성 
//=> Alt + Shift + T  
//=> 또는 마우스우클릭 PopUp Menu 의  Refactor - Extract Interface...

@Service
public class JoServiceImpl implements JoService {
	
	/*
	 * @Autowired MemberMapper mapper;
	 */
	
	
	
	@Autowired
	JoMapper dao; // Mybatis 적용 후
	//	MemberDAO dao ; // Mybatis 적용 전
	// ** Mybatis interface 방식 적용
	// => MemberMapper 의 인스턴스를 스프링이 생성해주고 이를 주입받아 실행함
	//    단, 설정화일에 <mybatis-spring:scan base-package="mapperInterface"/> 반드시 추가해야함
	//    MemberDAO => mapperInterface 사용으로 MemberMapper 가 역할 대신함
	
	// ** selectList
	@Override
	public List<JoVO> selectList(){
		return dao.selectList();
	}
	
	// ** selectOne
	@Override
	public JoVO selectOne(JoVO vo) {
		return dao.selectOne(vo);
	}
	
	// ** Insert
	@Override
	public int insert(JoVO vo) {
		return dao.insert(vo);
	}
	
	// ** update
	@Override 
	public int update(JoVO vo) { 
		return dao.update(vo); 
		}
	
	// ** Delete
	@Override
	public int delete(JoVO vo) {
		return dao.delete(vo); 
	}

}
