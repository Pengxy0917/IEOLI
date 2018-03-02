package com.ieoli.Controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ieoli.service.ModelService;
@Controller
public class UploadModels {
	@Resource
	ModelService ms;
	@RequestMapping("/UploadModels")
	ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response,HttpSession session) throws Exception {
		String id = request.getParameter("modelid");
		String description  = request.getParameter("description");
		int mid = Integer.parseInt(id);
		if(mid==-1)
		{
			ms.insertModel(description);
		}else {
			ms.updateModel(mid, description);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/jsp/chakanModel.jsp");
		return mav;
	}
}
