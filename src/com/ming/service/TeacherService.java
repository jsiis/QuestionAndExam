package com.ming.service;

import com.ming.entity.Teacher;

public interface TeacherService {
	/**
	 * ���ƻ�ȡ��ʦ������ɾ����
	 * @param name
	 * @return
	 */
	public Teacher getTeacherByName(String name);
	
	public Teacher setTeacherByName(Teacher teacher);
	public Teacher deleteTeacherByName(String name);
	public Teacher addTeacherByName(Teacher teacher);
}
