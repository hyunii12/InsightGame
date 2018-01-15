//package test;
//
//import java.util.HashMap;
//import java.util.List;
//
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.GenericXmlApplicationContext;
//
//import model.Board;
//import service.IBoardService;
//
//public class Test {
//	public static void main(String[] args) {
//		ApplicationContext context = new GenericXmlApplicationContext("/test/applicationContext.xml");
//		IBoardService bService = context.getBean("boardService", IBoardService.class);
////		Board b = new Board();
////		b.setHeader("[배틀그라운드]");
////		b.setWriter("작성자1");
////		b.setContent("내용1");
////		b.setGroupId(0);
////		b.setGroupLevel(0);
////		b.setGroupSeq(0);
////		System.out.println("쓰기:::"+bService.writeBoard(b, 0));
//		
//		List<HashMap<String, Object>> boardList = (List<HashMap<String, Object>>) bService.getBoardList(1).get("boardList");
//		for(HashMap<String, Object> b: boardList)
//			System.out.println(b.toString());
//	}
//}
