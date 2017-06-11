package com.ming.service;

import java.util.List;

import com.ming.entity.ChoiceStorages;

/**
 * ����Ŀ�Ĳ���
 * @author ����
 *
 */
public interface QuestionsService {
	/**
	 * ����Ŀ������ѡ����
	 */
	public List<ChoiceStorages> getChoiceQuestionBySubject(Integer subjectId);
	/**
	 * ����Ŀ�����������
	 */
	public List<ChoiceStorages> getFillQuestionBySubject(String subjectId);
	/**
	 * ����Ŀ�������ж���
	 */
	public List<ChoiceStorages> getTFQuestionBySubject(String subjectId);
	/**
	 * ����Ŀ�������ۺ���
	 */
	public List<ChoiceStorages> getComprehensiveQuestionBySubject(String subjectId);

}
