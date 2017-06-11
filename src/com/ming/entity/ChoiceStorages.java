package com.ming.entity;

import javax.persistence.Column;

import org.hibernate.validator.constraints.NotEmpty;

public class ChoiceStorages {
	/**
	 * ����ID
		���ID
		����
		���
		ͼƬ
		ѡ��a
		ѡ��b
		ѡ��c
		ѡ��d
		��
		����
		�����½�
		�Ѷ�

	 */
	private Integer ChoiceStoragesId;
	private Integer stoId;
	private Integer category;
	@NotEmpty
	@Column(unique=true)
	private String topic;
	private String image;
	@NotEmpty
	private String optionA;
	@NotEmpty
	private String optionB;
	@NotEmpty
	private String optionC;
	private String optionD;
	@NotEmpty
	private String answer;
	private String analysis;
	private Integer section;
	private Integer difficulty;
	public Integer getChoiceStoragesId() {
		return ChoiceStoragesId;
	}
	public void setChoiceStoragesId(Integer choiceStoragesId) {
		ChoiceStoragesId = choiceStoragesId;
	}
	public Integer getStoId() {
		return stoId;
	}
	public void setStoId(Integer stoId) {
		this.stoId = stoId;
	}
	public Integer getCategory() {
		return category;
	}
	public void setCategory(Integer category) {
		this.category = category;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getOptionA() {
		return optionA;
	}
	public void setOptionA(String optionA) {
		this.optionA = optionA;
	}
	public String getOptionB() {
		return optionB;
	}
	public void setOptionB(String optionB) {
		this.optionB = optionB;
	}
	public String getOptionC() {
		return optionC;
	}
	public void setOptionC(String optionC) {
		this.optionC = optionC;
	}
	public String getOptionD() {
		return optionD;
	}
	public void setOptionD(String optionD) {
		this.optionD = optionD;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getAnalysis() {
		return analysis;
	}
	public void setAnalysis(String analysis) {
		this.analysis = analysis;
	}
	public Integer getSection() {
		return section;
	}
	public void setSection(Integer section) {
		this.section = section;
	}
	public Integer getDifficulty() {
		return difficulty;
	}
	public void setDifficulty(Integer difficulty) {
		this.difficulty = difficulty;
	}
	
	
}
