package service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IStreamerDao;
import model.Streamer;

@Service("streamerService")
public class StreamerServiceImpl implements IStreamerService{

	@Autowired
	private IStreamerDao dao;

	@Override
	public Streamer getStreamerByName(String strName) {
		// TODO Auto-generated method stub
		return dao.selectStreamerInfoByStrName(strName);
		//return null;
	}

}
