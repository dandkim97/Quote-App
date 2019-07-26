package myApp;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/home")
public class AppController {
	@Autowired
	QuoteDao dao; // will inject dao from xml beans file
	
	@GetMapping
	public String index(Model m) {
//		if(dao.getQuotes().size() == 0) {
//			add a quote if there is not quote to prevent err
//		}
		List<Quote> list = dao.getQuotes();
		Random rand = new Random();
		int num = rand.nextInt(list.size());
		m.addAttribute("num", num);
		m.addAttribute("list", list);
		return "home";
	}
	
	@RequestMapping("/quoteform")
	public String showform(Model m) {
		m.addAttribute("command", new Quote());
		return "quoteform";
	}
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String save(@ModelAttribute("quote") Quote quote) {
		dao.save(quote);
		return "redirect:/home/viewquote";
	}
	@RequestMapping("/viewquote")
	public String viewQuote(Model m) {
		List<Quote> list = dao.getQuotes();
		m.addAttribute("list", list);
		return "viewquote";
	}
	@RequestMapping("/editquote/{id}")
	public String edit(@PathVariable int id, Model m) {
		Quote quote = dao.getQuoteById(id);
		m.addAttribute("command", quote);
		return "quoteeditform";
	}
	@RequestMapping(value="/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("quote") Quote quote) {
		dao.update(quote);
		return "redirect:/home/viewquote";
	}
	@RequestMapping(value="/deletequote/{id}", method=RequestMethod.GET)
	public String delete(@PathVariable int id) {
		dao.delete(id);
		return "redirect:/home/viewquote";
	}
}
