package com.panda.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.panda.domain.BoardVO;
import com.panda.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO dao;
	
	private static final Logger mylog 
			= LoggerFactory.getLogger(BoardServiceImpl.class);

	@Override
	public void insertBoard(BoardVO vo) throws Exception {
		
		dao.insertBoard(vo);
	}

}