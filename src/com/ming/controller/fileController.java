package com.ming.controller;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ming.entity.FileInfo;
import com.ming.entity.FilePaperComprehensive;
import com.ming.entity.FilePaperFill;
import com.ming.entity.OperRecordate;
import com.ming.entity.Teacher;
import com.ming.service.impl.ScoreAndFileServiceImpl;

@Controller
@RequestMapping("file/")
public class fileController {
	
	@Autowired
	ScoreAndFileServiceImpl scoreAndFileServiceImpl;
	
	/**
	 * ��Ӳ�����¼
	 * @param type
	 */
	public void addCheckRecord(Integer type,Integer fileId,HttpSession session){
		OperRecordate operRecordate=new OperRecordate();
		operRecordate.setOdata(new Date());
		operRecordate.setOperateDeclare(type);
		operRecordate.setOperateUser(((Teacher)session.getAttribute("user")).getUserName());
		operRecordate.setFileId(fileId);
		operRecordate.setOperRecordateId(UUID.randomUUID().toString());
		scoreAndFileServiceImpl.saveOperRecordate(operRecordate);
	}
	
	/**
	 * ����ִ�и���
	 */
	@RequestMapping("upFileAction")
	public String upFileAction(FilePaperComprehensive filePaperComprehensive){
		scoreAndFileServiceImpl.saveFileCompre(filePaperComprehensive);
	
		return "redirect:/fileupdate";
	}
	@RequestMapping("filecheak")
	public String filecheak(@RequestParam(value="paperId",required=false) String testPaperId,
			HttpServletRequest req,
			HttpSession session){
		//�����ĸ�����list��Ȼ��ŵ�request����ת
		List<FilePaperFill> fillList=scoreAndFileServiceImpl.getFillByfileId(Integer.parseInt(testPaperId));
		List<FilePaperComprehensive> compreList=scoreAndFileServiceImpl.getCompreByfileId(Integer.parseInt(testPaperId));

		req.setAttribute("fillList", fillList);
		req.setAttribute("compreList", compreList);
		
		//��Ҫ����model����
		FilePaperFill	fill=new FilePaperFill();
		FilePaperComprehensive comprehensive=new FilePaperComprehensive();
		req.setAttribute("fill", fill);
		req.setAttribute("comprehensive", comprehensive);
		addCheckRecord(1,Integer.parseInt(testPaperId),session);
		return "scoreAndFile/check_file";
	}
	/**
	 * ����鿴ĳ������
	 */
	@RequestMapping("fileupdate")
	public String fileupdate(@RequestParam(value="paperId",required=false) String testPaperId,
			HttpServletRequest req,
			HttpSession session){
		//�����ĸ�����list��Ȼ��ŵ�request����ת
		List<FilePaperFill> fillList=scoreAndFileServiceImpl.getFillByfileId(Integer.parseInt(testPaperId));
		List<FilePaperComprehensive> compreList=scoreAndFileServiceImpl.getCompreByfileId(Integer.parseInt(testPaperId));

		req.setAttribute("fillList", fillList);
		req.setAttribute("compreList", compreList);
		
		//��Ҫ����model����
		FilePaperFill	fill=new FilePaperFill();
		FilePaperComprehensive comprehensive=new FilePaperComprehensive();
		req.setAttribute("fill", fill);
		req.setAttribute("comprehensive", comprehensive);
		addCheckRecord(1,Integer.parseInt(testPaperId),session);
		return "scoreAndFile/update_file";
	}
	/**
	 * ���ܲ鿴
	 * @param req
	 * @param id
	 * @param userId
	 * @return
	 */
	@RequestMapping("filesCheck")
	public String filesCheck(HttpServletRequest req,
			@RequestParam(value="search",required=false) String id,
			@RequestParam(value="userId",required=false) String userId){
		
		List<FileInfo> fileList= scoreAndFileServiceImpl.searchScoreByPaperIded(id,userId);
		req.setAttribute("fileList", fileList);
		return "scoreAndFile/check_files";
	}
	/**
	 * ��־չʾ����
	 * @param req
	 * @param id
	 * @param userId
	 * @return
	 */
	@RequestMapping("show")
	public String showblog(HttpServletRequest req,
			@RequestParam(value="search",required=false) String id,
			@RequestParam(value="userId",required=false) String time){
		
		List<OperRecordate> fileList= scoreAndFileServiceImpl.searchOperaByidOrTime(id,time);
		req.setAttribute("fileList", fileList);
		return "scoreAndFile/blog_show";
	}
	/**
	 * ���ĵ���,�б�
	 * @param req
	 * @param id
	 * @param userId
	 * @return
	 */
	@RequestMapping("filesUpdate")
	public String filesUpdate(HttpServletRequest req,
			@RequestParam(value="search",required=false) String id,
			@RequestParam(value="userId",required=false) String userId){
		
		List<FileInfo> fileList= scoreAndFileServiceImpl.searchScoreByPaperIded(id,userId);
		req.setAttribute("fileList", fileList);
		return "scoreAndFile/update_files";
	}
}
