package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.IMemberService;
import service.IStreamerService;

@Controller
public class StreamerController {
	
	@Autowired
	private IStreamerService streamerService;
	
	
}
