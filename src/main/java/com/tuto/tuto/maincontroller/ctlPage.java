package com.tuto.tuto.maincontroller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ctlPage {

	@RequestMapping("/")
    public String index(Model model) {
        List<String> myList = new ArrayList<>();
        myList.add("my Item 1");
        myList.add("my Item 2");
        myList.add("my Item 3");
        model.addAttribute("myList", myList);
        return "index";
    }
	
	
	@RequestMapping("/about")
    public String about(Model model) {
       
        return "about";
    }
	
	
	
}

