package kr.ac.kopo.kopo04.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.stereotype.Service;

@Service
public class BoardItemServiceImpl implements BoardItemService {

	@Override
	public String getDate() {
		// TODO Auto-generated method stub
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String today = sdt.format(cal.getTime());
		return today;
	}

//	@Override
//	public void test() {
//		// TODO Auto-generated method stub
//		System.out.println("BoardItemServiceImpl Test()");
//	}
//
//	@Override
//	public String testAop() {
//		// TODO Auto-generated method stub
//			String msg="BoardItemServiceImpl TestAop()";
//		return msg;
//	}




}
