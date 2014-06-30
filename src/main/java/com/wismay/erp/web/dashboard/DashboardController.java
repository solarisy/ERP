package com.wismay.erp.web.dashboard;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 
 * @author Peter
 *
 * 2014年6月20日 上午10:39:06
 */
@Controller
@RequestMapping(value = "/dashboard")
public class DashboardController {
	private static Logger logger = LoggerFactory.getLogger(DashboardController.class);

	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model) {
		logger.info("index");
		return "index";
	}
}
