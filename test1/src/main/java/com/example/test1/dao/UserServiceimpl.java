package com.example.test1.dao;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.test1.mapper.UserMapper;
import com.example.test1.model.User;

@Service
public class UserServiceimpl implements UserService{

	@Autowired
	UserMapper userMapper;

	@Override
	public HashMap<String, Object> addUser(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
//		try {
//			userMapper.insertUser(map);
//			resultMap.put("result", "success");
//		} catch (Exception e) {
//			// TODO: handle exception
//			System.out.println(e.getMessage());
//			resultMap.put("result", "fail");
//		}
		return resultMap;
	}

	@Override
	public HashMap<String, Object> checkUser(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		User user = userMapper.selectUser(map);
		if(user == null) {
			resultMap.put("message", "사용 가능한 아이디입니다!");
			resultMap.put("result", "success");
		} else {
			resultMap.put("message", "중복된 아이디입니다!");
			resultMap.put("result", "fail");
		}
		return resultMap;
	}
	
}
