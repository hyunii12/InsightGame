package service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IRbrankingDao;
import model.Rbranking;

@Service("RbrankingService")
public class RbrankingServiceImpl implements IRbrankingService{

	@Autowired
	private IRbrankingDao rbrankingDao;
	
	@Override
	public List<Rbranking> get3dsList(String day) {
		
		List<Rbranking> list = new ArrayList<Rbranking>();
		list=rbrankingDao.select3dsRanking(day);
		System.out.println(list.size()+" "+0);
		for(int i=0; i<list.size();i++) {
			list.get(i).toString();
		}
		return rbrankingDao.select3dsRanking(day);
	}

	@Override
	public List<Rbranking> getmobileList(String day) {
		// TODO Auto-generated method stub
		return rbrankingDao.selectmoblieRanking(day);
	}

	@Override
	public List<Rbranking> getpcList(String day) {
		// TODO Auto-generated method stub
		return rbrankingDao.selectpcRanking(day);
	}

	@Override
	public List<Rbranking> getps4List(String day) {
		// TODO Auto-generated method stub
		return rbrankingDao.selectps4Ranking(day);
	}

	@Override
	public List<Rbranking> getpsvitaList(String day) {
		// TODO Auto-generated method stub
		return rbrankingDao.selectpsvitaRanking(day);
	}

	@Override
	public List<Rbranking> getswitchList(String day) {
		// TODO Auto-generated method stub
		return rbrankingDao.selectswitchRanking(day);
	}

	@Override
	public List<Rbranking> getxboxList(String day) {
		// TODO Auto-generated method stub
		return rbrankingDao.selectxboxRanking(day);
	}

}
