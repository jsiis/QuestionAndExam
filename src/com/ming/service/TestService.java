package com.ming.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ming.entity.TestPaperChoice;
import com.ming.entity.TestPaperComprehensive;
import com.ming.entity.TestPaperFill;
import com.ming.entity.TestPaperInfo;
import com.ming.entity.TestPaperTF;
import com.ming.util.AddQuestionParams;

@Service
public interface TestService {
	/**
	 * ���ݵ�ǰ��¼�û���ȡ�Ծ���Ϣ
	 * @return
	 */
	public List<TestPaperInfo> getTestPaperInfoByUser(Integer teacherId);
	
	/**
	 * �༭�Ծ��е�ѡ���⡢����⡢�ж��⡢�ۺ���ȡ�
	 * @param testPaperChoice
	 */
	public void setTestChoice(TestPaperChoice testPaperChoice);
	public void setTestFill(TestPaperFill testPaperFill);
	public void setTestTF(TestPaperTF testPaperTF);
	public void setTestComprehensive(TestPaperComprehensive testPaperComprehensive);
	/**
	 * ������߸����Ծ���Ϣ
	 * @param testPaperInfo
	 */
	public void testPaperSaveOrUpdate(TestPaperInfo testPaperInfo);
	/**
	 * ���ݲ�������ߵĲ������������⡣
	 * @param addQuestionParams
	 */
	public void moveQuestionsToTestPaper(AddQuestionParams addQuestionParams);

}
