package com.javaex.test;

import java.util.List;

import com.javaex.dao.GuestBookDao;
import com.javaex.vo.GuestBookVo;

public class GuestBookTest {
	public static void main(String[] args) {
		GuestBookDao dao = new GuestBookDao();
		GuestBookVo vo = new GuestBookVo("zizon","1234","hello world ! this is content");
		//dao.insert(vo);
		
		//dao.delete(2);
		
		List<GuestBookVo> gblist= dao.getlist();
		for(GuestBookVo str: gblist) {
			System.out.println(str);
		}
		
		
	}
}
