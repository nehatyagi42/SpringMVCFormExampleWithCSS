package com.rtpl.controller;

import java.util.List;
import javax.validation.Valid;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rtpl.beans.Employee;
import com.rtpl.dao.EmpDao;


@Controller
public class EmpController {
@Autowired
EmpDao dao;//will inject dao from XML file  

/*It displays a form to input data, here "command" is a reserved request attribute  
 *which is used to display object data into form  
 */    
@RequestMapping("/empform")    
public String showform(Model model){    
    model.addAttribute("command", new Employee());  
    return "empform";   
}   


/*It saves object into database. The @ModelAttribute puts request data  
 *  into model object. You need to mention RequestMethod.POST method   
 *  because default request is GET*/   

 @RequestMapping( value="/save",method=RequestMethod.POST)
 public String save(@ModelAttribute("employee") Employee employee, BindingResult result) {
	 
	 dao.save(employee);
	 return "redirect:/viewemp";//will redirect to viewemp request mapping    
 }
 
 /*@RequestMapping(value="/save", method=RequestMethod.GET)
 public String showForm(Model model) {
     model.addAttribute("save",new Employee());
     return "redirect:/viewemp";
    
}*/
 

/* It provides list of employees in model object */ 
 
 @RequestMapping("/viewemp")
 public String viewemp(Model model) {
	List<Employee> list= dao.getEmployees();
	model.addAttribute("list", list);
	return "viewemp";   
 }
 /* It displays object data into form for the given id.   
  * The @PathVariable puts URL data into variable.*/    
 @RequestMapping(value="/editemp/{id}")    
 public String edit(@PathVariable int id, Model m){    
     Employee  emp=dao.getEmpById(id);    
     m.addAttribute("command",emp);  
     return "empeditform";    
 }    
 /* It updates model object. */    
 @RequestMapping(value="/editsave", method = RequestMethod.POST)    
 public String editsave(@Valid @ModelAttribute Employee employee, BindingResult result, ModelMap model){    
     dao.update(employee);    
     return "redirect:/viewemp";    
 }    
/* It deletes record for the given id in URL and redirects to /viewemp */    
@RequestMapping(value="/deleteemp/{id}",method = RequestMethod.GET)    
public String delete(@PathVariable int id){    
    dao.delete(id);    
    return "redirect:/viewemp";    
}     

@RequestMapping(value = "/showsuccess", method = RequestMethod.GET)
public String success(Model model) 
{
	return "redirect:/viewemp";  
}

@RequestMapping(value = "/showerror", method = RequestMethod.GET)
public String error(Model model) 
{
	return "redirect:/viewemp";  
}




@RequestMapping(value = "/", method = RequestMethod.GET)
public String login(ModelMap model) {
	return "login";
}





}

