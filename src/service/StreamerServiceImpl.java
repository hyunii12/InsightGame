package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IStreamerDao;
import model.Clip;
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

	@Override
	public List<Clip> getstreamerclip(String cp_display) {
		// TODO Auto-generated method stub
		return dao.selectstreamerclip(cp_display);
	}


}
