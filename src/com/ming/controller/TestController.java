package com.ming.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ming.entity.FilePaperChoice;
import com.ming.entity.FilePaperComprehensive;
import com.ming.entity.FilePaperFill;
import com.ming.entity.FilePaperTF;
import com.ming.entity.Teacher;
import com.ming.entity.TestPaperChoice;
import com.ming.entity.TestPaperComprehensive;
import com.ming.entity.TestPaperFill;
import com.ming.entity.TestPaperInfo;
import com.ming.entity.TestPaperTF;
import com.ming.service.impl.TestServiceImpl;
import com.ming.util.AddQuestionParams;

@Controller
@RequestMapping("/tests")
public class TestController {
	
	@Autowired
	TestServiceImpl testServiceImpl;
	
	/**
	 * ѧ���μӿ���
	 * @param testPaperId
	 * @param req
	 * @return
	 */
	@RequestMapping("attendTest")
	public String attendTest(@RequestParam(value="paperId",required=false) String testPaperId,HttpServletRequest req){
		//�����ĸ�����list��Ȼ��ŵ�request����ת
		List<TestPaperComprehensive> compreList=testServiceImpl.getTestCompre(testPaperId);
		List<TestPaperTF> TFList=testServiceImpl.getTestTF(testPaperId);
		List<TestPaperFill> fillList=testServiceImpl.getTestFill(testPaperId);
		List<TestPaperChoice> choiceList=testServiceImpl.getTestChoice(testPaperId);
		
		req.setAttribute("compreList", compreList);
		req.setAttribute("TFList", TFList);
		req.setAttribute("fillList", fillList);
		req.setAttribute("choiceList", choiceList);
		
		//��Ҫ�ĸ�model����
		FilePaperChoice choice=new FilePaperChoice();
		FilePaperFill	fill=new FilePaperFill();
		FilePaperTF paperTF=new FilePaperTF();
		FilePaperComprehensive comprehensive=new FilePaperComprehensive();
		req.setAttribute("choice", choice);
		req.setAttribute("fill", fill);
		req.setAttribute("paperTF", paperTF);
		req.setAttribute("comprehensive", comprehensive);
		
		return "testRelate/student_test";
	}
	/**
	 * ѧ��ȥ�Ծ�չʾҳ��
	 * @return
	 */
	@RequestMapping("tostudentTestInfo")
	public String tostudentTestInfo(HttpServletRequest req,@RequestParam(value="search",required=false) String id){
		if(id==null){
			id="-1";
		}
		List<TestPaperInfo> testPaperList= testServiceImpl.getTestPaperInfoByUser(Integer.parseInt(id));
		req.setAttribute("testPaperList", testPaperList);
		return "testRelate/student_test_show";
	}
	/**
	 * ȥ����չʾ�༭ҳ��
	 * @param testPaperId
	 */
	@RequestMapping("toEditTestPaper")
	public String toEditTestPaper(@RequestParam(value="paperId",required=false) String testPaperId,HttpServletRequest req){
		//�����ĸ�����list��Ȼ��ŵ�request����ת
		List<TestPaperComprehensive> compreList=testServiceImpl.getTestCompre(testPaperId);
		List<TestPaperTF> TFList=testServiceImpl.getTestTF(testPaperId);
		List<TestPaperFill> fillList=testServiceImpl.getTestFill(testPaperId);
		List<TestPaperChoice> choiceList=testServiceImpl.getTestChoice(testPaperId);
		
		req.setAttribute("compreList", compreList);
		req.setAttribute("TFList", TFList);
		req.setAttribute("fillList", fillList);
		req.setAttribute("choiceList", choiceList);
		
		//��Ҫ�ĸ�model����
		TestPaperChoice choice=new TestPaperChoice();
		TestPaperFill fill=new TestPaperFill();
		TestPaperTF paperTF=new TestPaperTF();
		TestPaperComprehensive comprehensive=new TestPaperComprehensive();
		req.setAttribute("choice", choice);
		req.setAttribute("fill", fill);
		req.setAttribute("paperTF", paperTF);
		req.setAttribute("comprehensive", comprehensive);
		
		return "testRelate/test_question_show";
	}
	
	/**
	 * ���ݲ�������ߵĲ������������⡣
	 * @param addQuestionParams
	 * @return
	 */
	@RequestMapping("/moveQuestions")
	public ModelAndView moveQuestionsToTestPaper(AddQuestionParams filladdQuestionParams){
		testServiceImpl.moveQuestionsToTestPaper(filladdQuestionParams);
		AddQuestionParams addQuestionParams=new AddQuestionParams();
		return new ModelAndView("add_test_questions").addObject(addQuestionParams);
	}
	/**
	 * �����Ծ���Ϣ����ת����ͨ��id�����ж���ת
	 * @param req
	 * @param testPaperInfo
	 * @return
	 */
	@RequestMapping("/testPaperSaveOrUpdate")
	public ModelAndView testPaperSaveOrUpdate(HttpServletRequest req,TestPaperInfo testPaperInfo){
		String page="testRelate/testpaper_show";//�޸�
		if(testPaperInfo.getTestPaperInfoId()==null)//���
			page="testRelate/add_test_questions";
		testServiceImpl.testPaperSaveOrUpdate(testPaperInfo);
		req.setAttribute("testPaperInfo", testPaperInfo);
		AddQuestionParams addQuestionParams=new AddQuestionParams();
		return new ModelAndView(page).addObject(addQuestionParams);
	}
	/**
	 * ��ת��ӽ���
	 * @return
	 */
	@RequestMapping("/toPaperAdd")
	public ModelAndView paperAdd(){
		TestPaperInfo testPaperInfo=new TestPaperInfo();
		return new ModelAndView("testRelate/testpaper_add").addObject(testPaperInfo);
	}
	
	/**
	 * ���ݵ�¼��Ϣ��ȡ�û���Ӧ���Ծ���Ϣ
	 * @return
	 */
	@RequestMapping("/getTestPaperInfos")
	public String getTestPaperInfos(HttpSession session,HttpServletRequest req){
		Teacher teacher=(Teacher) session.getAttribute("user");
		if(teacher==null)
			return "redirect:/htmlPage/login.html";
		List<TestPaperInfo> testPaperList= testServiceImpl.getTestPaperInfoByUser(teacher.getTeacherId());
		req.setAttribute("testPaperList", testPaperList);
		return "testRelate/testpaper_show";
	}
}

