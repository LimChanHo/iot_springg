package com.iot.sp.test;

import java.util.Locale;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/test")
public class TestController {
	
	@RequestMapping(value = "/test1", method = RequestMethod.POST)
	public @ResponseBody ModelMap postTest(ModelMap map, @RequestBody Map hm) {
		map.put("test", "test");
		return map;
	}
	
	@RequestMapping(value = "/test1", method = RequestMethod.GET)
	public @ResponseBody ModelMap getTest(ModelMap map, @RequestParam(value="exam") String exam) {
		System.out.println(exam);
		map.put("test", exam);
		map.put("test11", "zzzzzzzzzzzzzzz");
		return map;
	}
	
	@RequestMapping("/t")
	public String home(Locale locale, Model model) {
		return "test";
	}
	@RequestMapping("/test")
	public @ResponseBody ModelMap test(ModelMap map, @RequestBody Map hm){
		map.put("test","test");
		return map;
	}
}
