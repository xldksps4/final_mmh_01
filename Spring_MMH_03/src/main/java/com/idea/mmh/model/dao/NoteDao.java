package com.idea.mmh.model.dao;

import java.util.List;

import com.idea.mmh.model.dto.NoteDto;

public interface NoteDao {

String NAMESPACE = "note.";
	
	public List<NoteDto> selectList();
	public NoteDto selectOne(int opno);
	public int insert(NoteDto dto);
	public int update(NoteDto dto);
	public int delete(int opno);
	
	public String test();
	
	
	
/*	
	@Repository
	public interface WboardDao {

	   //전체 목록 조회 , id는 떠다닌는 애를 잡아다가 넣자 
	   @Select("select * from wboard where dgno = #{dgno}")
	   public List<WboardDto> boardListAll(int dgno);
	   
	   //연습용 
	   @Select("select * from wboard")
	   public List<WboardDto> boardList();
	   
	   //글 상세보기 
	   @Select("select wbtodono, wno, dno, dgno, mid, wbtodo, wbtitle,"
	         + "wbcontent, wfno_list, TO_CHAR(wbstartdate, 'YYYY-MM-DD') as wbstartdate , wbenddate, wbcolor from wboard where wbtodono = #{wbtodono}")
	   public WboardDto wSelectOne(int wbtodono);
	   
	   //써머노트  -게시글 작성 
	   @Insert("INSERT INTO wboard (wbtodono, mid, wbtitle, wbcontent,wno,dno, dgno, wbstartdate)"+
	         "VALUES (wboard_seq.NEXTVAL, #{mid}, #{wbtitle}, #{wbcontent},1,1,2,TO_DATE('20200501','YYYY-MM-DD'))")
	   //@SelectKey(statement = "SELECT SUMMERBOARD_SEQ.NEXTVAL FROM DUAL", keyProperty = "SUMMERBOARD_SEQ",resultType = Integer.class, before = true)
	   public int wbinsert(WboardDto dto);
	   
	   
	   //게시물 삭제 
	   @Delete("delete from wboard where wbtodono = #{wbtodono}")
	   public int wDelete(int wbtodono);
*/	   
}
