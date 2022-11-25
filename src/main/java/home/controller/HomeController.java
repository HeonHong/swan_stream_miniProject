package home.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
=======
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

>>>>>>> main

@Component
@Controller
@SessionAttributes("email")
public class HomeController { // this is a videoController
	
	@GetMapping(value="/home")
	public String index(Model model, HttpServletRequest request) {
		model.addAttribute("page", "video");
		if(model.getAttribute("email")!=null) {
			return "index";			
		} else {
			return "404Error";
		}
	}
	
	@GetMapping(value="/logout")
	public String logout(SessionStatus status) {
		status.setComplete();
		return "logout";
	}
	

}



/*
 * @GetMapping(value="/video/movie/basic_Contents") public String
 * movieBasicContents() {
 * 
 * return "video/movie/basic_Contents"; }
 */

/*
 * @GetMapping(value="/video/movie/category_Contents") public String
 * movieCategoryContents() {
 * 
 * return "video/movie/category_Contents"; }
 * 
 * @GetMapping(value="/video/tv_Program/basic_Contents") public String
 * tvBasicContents() {
 * 
 * return "video/tv_Program/basic_Contents"; }
 * 
 * @GetMapping(value="/video/tv_Program/category_Contents") public String
 * tvCategoryContents() {
 * 
 * return "video/tv_Program/category_Contents"; }
 * 
 * @GetMapping(value="/video/tv_Program/tvshow") public String tvshow() {
 * 
 * return "video/tv_Program/tvshow"; }
 */
