package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public final class AdminPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Include_file.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"icon\" href=\"img1.JPG\"/>\n");
      out.write("        <title img src=\"images//img1.JPG\">Gaming Geeks</title> \n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("   \n");
      out.write("    <head>\n");
      out.write("         <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("       <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("       \n");
      out.write("       <link rel=\"Stylesheet\" href=\"Dcss/IncludeCss.css\"/>\n");
      out.write("       <link rel=\"Stylesheet\" href=\"Dcss/SearchCss.css\"/>\n");
      out.write("              <link rel=\"Stylesheet\" href=\"Dcss/SignIn.css\"/>\n");
      out.write("        <link rel=\"Stylesheet\" href=\"Dcss/Register.css\"/>\n");
      out.write("        \n");
      out.write("        <link rel=\"shortcut icon\" href=\"l.jpg\" />\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div class=\"above\">\n");
      out.write("            \n");
      out.write("           <div id=\"leftdiv\">\n");
      out.write("                \n");
      out.write("                    <a href=\"HomePage.jsp\" style=\"margin-left: 20px;\"> \n");
      out.write("                        <img src=\"images/GameLogo2.JPG\" style=\"margin-top: 20px;float: left;margin-left: 20px\"/>\n");
      out.write("                    </a>\n");
      out.write("                    \n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div id=\"middiv\">\n");
      out.write("               \n");
      out.write("                \n");
      out.write("                \n");
      out.write("\n");
      out.write("                <form autocomplete=\"off\" action=\"/ACM/Search\" id=\"search\">\n");
      out.write("                           <div class=\"autocomplete\" style=\"width:350px;height: 55px;float: left\">\n");
      out.write("                              <input id=\"myInput\" type=\"text\" name=\"srtext\" placeholder=\"Search Your Game Here...\">\n");
      out.write("                           </div>\n");
      out.write("                              <input id=\"submit\" type=\"submit\" name=\"Search\" value=\"Search\">\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("                <script>\n");
      out.write("                    function autocomplete(inp, arr)\n");
      out.write("                        {\n");
      out.write("                            var currentFocus;\n");
      out.write("                            inp.addEventListener(\"input\", function(e) \n");
      out.write("                                {\n");
      out.write("                                  var a, b, i, val = this.value;\n");
      out.write("                                  closeAllLists();\n");
      out.write("                                  if (!val) { return false;}\n");
      out.write("                                  currentFocus = -1;\n");
      out.write("                                     a = document.createElement(\"DIV\");\n");
      out.write("                                     a.setAttribute(\"id\", this.id + \"autocomplete-list\");\n");
      out.write("                                     a.setAttribute(\"class\", \"autocomplete-items\");\n");
      out.write("                                     this.parentNode.appendChild(a);\n");
      out.write("                                        for (i = 0; i < arr.length; i++)\n");
      out.write("                                            {\n");
      out.write("                                                 if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase())\n");
      out.write("                                                    {\n");
      out.write("                                                         b = document.createElement(\"DIV\");\n");
      out.write("          \n");
      out.write("                                                         b.innerHTML = \"<strong>\" + arr[i].substr(0, val.length) + \"</strong>\";\n");
      out.write("                                                         b.innerHTML += arr[i].substr(val.length);\n");
      out.write("         \n");
      out.write("                                                         b.innerHTML += \"<input type='hidden' value='\" + arr[i] + \"'>\";\n");
      out.write("          \n");
      out.write("                                                         b.addEventListener(\"click\", function(e) \n");
      out.write("                                                            {\n");
      out.write("              \n");
      out.write("                                                                 inp.value = this.getElementsByTagName(\"input\")[0].value;\n");
      out.write("              \n");
      out.write("                                                                 closeAllLists();\n");
      out.write("                                                            });\n");
      out.write("                                                         a.appendChild(b);\n");
      out.write("                                                    }\n");
      out.write("                                            }\n");
      out.write("                                    });\n");
      out.write("  /*execute a function presses a key on the keyboard:*/\n");
      out.write("  inp.addEventListener(\"keydown\", function(e) {\n");
      out.write("      var x = document.getElementById(this.id + \"autocomplete-list\");\n");
      out.write("      if (x) x = x.getElementsByTagName(\"div\");\n");
      out.write("      if (e.keyCode == 40) {\n");
      out.write("        /*If the arrow DOWN key is pressed,\n");
      out.write("        increase the currentFocus variable:*/\n");
      out.write("        currentFocus++;\n");
      out.write("        /*and and make the current item more visible:*/\n");
      out.write("        addActive(x);\n");
      out.write("      } else if (e.keyCode == 38) { //up\n");
      out.write("        /*If the arrow UP key is pressed,\n");
      out.write("        decrease the currentFocus variable:*/\n");
      out.write("        currentFocus--;\n");
      out.write("        /*and and make the current item more visible:*/\n");
      out.write("        addActive(x);\n");
      out.write("      } else if (e.keyCode == 13) {\n");
      out.write("        /*If the ENTER key is pressed, prevent the form from being submitted,*/\n");
      out.write("        e.preventDefault();\n");
      out.write("        if (currentFocus > -1) {\n");
      out.write("          /*and simulate a click on the \"active\" item:*/\n");
      out.write("          if (x) x[currentFocus].click();\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("  });\n");
      out.write("  function addActive(x) {\n");
      out.write("    /*a function to classify an item as \"active\":*/\n");
      out.write("    if (!x) return false;\n");
      out.write("    /*start by removing the \"active\" class on all items:*/\n");
      out.write("    removeActive(x);\n");
      out.write("    if (currentFocus >= x.length) currentFocus = 0;\n");
      out.write("    if (currentFocus < 0) currentFocus = (x.length - 1);\n");
      out.write("    /*add class \"autocomplete-active\":*/\n");
      out.write("    x[currentFocus].classList.add(\"autocomplete-active\");\n");
      out.write("  }\n");
      out.write("  function removeActive(x) {\n");
      out.write("    /*a function to remove the \"active\" class from all autocomplete items:*/\n");
      out.write("    for (var i = 0; i < x.length; i++) {\n");
      out.write("      x[i].classList.remove(\"autocomplete-active\");\n");
      out.write("    }\n");
      out.write("  }\n");
      out.write("  function closeAllLists(elmnt) {\n");
      out.write("    /*close all autocomplete lists in the document,\n");
      out.write("    except the one passed as an argument:*/\n");
      out.write("    var x = document.getElementsByClassName(\"autocomplete-items\");\n");
      out.write("    for (var i = 0; i < x.length; i++) {\n");
      out.write("      if (elmnt != x[i] && elmnt != inp) {\n");
      out.write("        x[i].parentNode.removeChild(x[i]);\n");
      out.write("      }\n");
      out.write("    }\n");
      out.write("  }\n");
      out.write("  /*execute a function when someone clicks in the document:*/\n");
      out.write("  document.addEventListener(\"click\", function (e) {\n");
      out.write("      closeAllLists(e.target);\n");
      out.write("      });\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("/*An array containing all the country names in the world:*/\n");
      out.write("var Games =[\"amnesia the dark descent\",\"assassins creed brotherhood\",\"assassins creed unity\",\"assassins creed rogue\",\"asphalt 8\",\"batman arkham city\",\"battlefield 1\",\"battlefield 2\",\"battlefield 3\",\"blur\",\"brothers a tale of two sons1\",\"call of duty ghosts1\",\"call of duty black ops\",\"call of duty modern warfare\",\"counter-strike global offensive\",\"counter-strike source\",\"company of heroes\",\"dirt rally\",\"dishonored\",\"dark souls\",\"deus ex\",\"far cry \",\"far cry 2\",\"far cry 3\",\"f1 challenge\",\"fallout\",\"fallout 2\",\"grim fandango\",\"grand theft auto v\",\"grand theft auto san andreas\",\"grand theft auto vice city\",\"gone home\",\"half life\",\"half life 2\",\"homefront\",\"homeworld\",\"mass effect\",\"medal of honor\",\"metal gear\",\"metal gear solid\",\"mark of the ninja\",\"overwatch\",\"out of the park baseball 17\",\"operation flashpoint\",\"paladins\",\"portal 2\",\"portal\",\"pillars of eternity\",\"rise of nations\",\"raw data\",\"system shock\",\"star war battlefront\",\"street fighter 5\",\"starcraft\",\"sid meier's starships\",\"sid meier's pirates\",\"total overdose\",\"the witcher\",\"the witcher 3 wild hunt\",\"the sims 4\",\"total war warhammer 2\",\"watch dogs\",\"watch dogs 2\",\"warframe\",\"world of warcraft\",\"wwe 2k17\"];\n");
      out.write("  \n");
      out.write("/*initiate the autocomplete function on the \"myInput\" element, and pass along the countries array as possible autocomplete values:*/\n");
      out.write("autocomplete(document.getElementById(\"myInput\"), Games);\n");
      out.write("</script>\n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <div id=\"rightdiv\">\n");
      out.write("                       ");

                          if(request.getCookies().length>1)
                             {
                                 Cookie cook1[]=request.getCookies();             
                                 if(cook1.length>1)
                                   {  
                                        String c=cook1[1].getValue();
                       
      out.write("\n");
      out.write("                       <h id=\"id01\" style=\"float: left;color: whitesmoke;font-size: 25px;font-family: comic sans ms;margin-top: 10px\" >Welcome! ");
      out.print(c);
      out.write("</h>\n");
      out.write("                             \n");
      out.write("                       ");

                 
                                   }
                             }
                          else
                             {
                             
      out.write("                      \n");
      out.write("                             <button onclick=\"document.getElementById('id01').style.display='block'\" style=\"width:90px; border-radius: 15%;background-color: lightslategrey\">Login</button>\n");
      out.write("                              ");
}
      out.write("  \n");
      out.write("           \n");
      out.write("<!--                      <button onclick=\"document.getElementById('id01').style.display='block'\" style=\"width:90px;\">Login</button>-->\n");
      out.write("\n");
      out.write("                      <div id=\"id01\" class=\"modal\">\n");
      out.write("  \n");
      out.write("                       <form class=\"modal-content animate\" action=\"/ACM/SignIn\" method=\"post\">\n");
      out.write("                               <div class=\"imgcontainer\">\n");
      out.write("                                  <span onclick=\"document.getElementById('id01').style.display='none'\" class=\"close\" title=\"Close Modal\">&times;</span>\n");
      out.write("                                  <img src=\"images//a.jpg\" alt=\"Avatar\" class=\"avatar\">\n");
      out.write("                               </div>\n");
      out.write("\n");
      out.write("                               <div class=\"container\">\n");
      out.write("                                    <label for=\"uname\"><b>Username</b></label>\n");
      out.write("                                    <input type=\"text\" placeholder=\"Enter Username\" name=\"uname\" required>\n");
      out.write("\n");
      out.write("                                     <label for=\"psw\"><b>Password</b></label>\n");
      out.write("                                     <input type=\"password\" placeholder=\"Enter Password\" name=\"psw\" required>\n");
      out.write("        \n");
      out.write("                                     <button type=\"submit\">Login</button>\n");
      out.write("                                     <label>\n");
      out.write("                                     <input type=\"checkbox\" checked=\"checked\" name=\"remember\"> Remember me\n");
      out.write("                                     </label>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"container\" style=\"background-color:#f1f1f1\">\n");
      out.write("                                     <button type=\"button\" onclick=\"document.getElementById('id01').style.display='none'\" class=\"cancelbtn\">Cancel</button>\n");
      out.write("                                     <span class=\"psw\">Forgot <a href=\"PasswordSetting.jsp\" id=\"pass\">password?</a></span>\n");
      out.write("                                </div>\n");
      out.write("                       </form>\n");
      out.write("                  </div>\n");
      out.write("\n");
      out.write("                  <script>\n");
      out.write("                  // Get the modal\n");
      out.write("                  var modal = document.getElementById('id01');\n");
      out.write("\n");
      out.write("                  // When the user clicks anywhere outside of the modal, close it\n");
      out.write("                  window.onclick = function(event) {\n");
      out.write("                  if (event.target == modal) {\n");
      out.write("                  modal.style.display = \"none\";\n");
      out.write("                       }\n");
      out.write("                      }\n");
      out.write("                  </script>\n");
      out.write("          \n");
      out.write("            <!--signin page ends here -->\n");
      out.write("            <!-- signup page-->\n");
      out.write("                 ");

                 if(request.getCookies().length>1)
                    {
                          Cookie cook1[]=request.getCookies();              
                         if(cook1.length>1)
                           {                 
                 
      out.write("\n");
      out.write("                 <form action=\"logout\">\n");
      out.write("                   <button id=\"id01\" style=\"width: 78px;float: left;margin-left: 120px ;padding: 15px;border-radius: 15%;background-color: lightslategrey\" >Logout</button>\n");
      out.write("                 </form>\n");
      out.write("                     ");

                 
                           }
                    }
                 else
                     {
                         
      out.write("                      \n");
      out.write("                      <button onclick=\"document.getElementById('id02').style.display='block'\" style=\"width:auto;margin-left: 120px;border-radius: 15%;background-color: lightslategrey\">Sign Up</button>\n");
      out.write("                      ");
}
      out.write(" \n");
      out.write("<!--                   <button onclick=\"document.getElementById('id02').style.display='block'\" style=\"width:auto;margin-left: 120px\">Sign Up</button>-->\n");
      out.write("\n");
      out.write("                   <div id=\"id02\" class=\"modalb\">\n");
      out.write("                        <span onclick=\"document.getElementById('id02').style.display='none'\" class=\"close\" title=\"Close Modal\">&times;</span>\n");
      out.write("                        <form class=\"modalb-content\" action=\"SignUp\">\n");
      out.write("                            <div class=\"containerb\">\n");
      out.write("                                  <h1>Sign Up</h1>\n");
      out.write("                                  <p>Please fill in this form to create an account.</p>\n");
      out.write("                                  <hr>\n");
      out.write("                                  <label for=\"text\"><b>Full Name</b></label>\n");
      out.write("                                  <input type=\"text\" placeholder=\"Enter Full Name\" name=\"Name\" required>\n");
      out.write("                                  \n");
      out.write("                                  <label for=\"text\"><b>UserName</b></label>\n");
      out.write("                                  <input type=\"text\" placeholder=\"Enter User Name\" name=\"uname\" required>\n");
      out.write("                                  \n");
      out.write("                                  <label for=\"email\"><b>Email</b></label>\n");
      out.write("                                  <input type=\"email\" placeholder=\"Enter Email\" name=\"email\" required>\n");
      out.write("\n");
      out.write("                                  <label for=\"psw\"><b>Password</b></label>\n");
      out.write("                                  <input type=\"password\" placeholder=\"Enter Password\" name=\"psw\" required>\n");
      out.write("\n");
      out.write("                                  <label for=\"psw-repeat\"><b>Confirm Password</b></label>\n");
      out.write("                                  <input type=\"password\" placeholder=\"Repeat Password\" name=\"psw-repeat\" required>\n");
      out.write("      \n");
      out.write("                                   \n");
      out.write("\n");
      out.write("                                  <p>By creating an account you agree to our <a href=\"Terms.jsp\" style=\"color:dodgerblue\">Terms & Privacy</a>.</p>\n");
      out.write("\n");
      out.write("                                          <div class=\"clearfixb\">\n");
      out.write("                                               <button type=\"button\" onclick=\"document.getElementById('id02').style.display='none'\" class=\"cancelbtnb\">Cancel</button>\n");
      out.write("                                               <button type=\"submit\" class=\"signupbtnb\">Sign Up</button>\n");
      out.write("                                          </div>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                   </div>\n");
      out.write("\n");
      out.write("                   \n");
      out.write("                </form> \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("       \n");
      out.write("        <div class=\"left\">\n");
      out.write("            \n");
      out.write("             <ul>\n");
      out.write("                <a href=\"HomePage.jsp\"><li id=\"leftlist\">Home</li><hr style=\"margin: -1px;\">\n");
      out.write("                <a href=\"Check_Configuration.jsp\"><li id=\"leftlist\">Check Configuration</li><hr style=\"margin: -1px;\">\n");
      out.write("                <a href=\"UpcomingGames\"><li id=\"leftlist\">Upcoming Games</li><hr style=\"margin: -1px;\">\n");
      out.write("                <a href=\"review.jsp\"><li id=\"leftlist\">reviews</li><hr style=\"margin: -1px;\">\n");
      out.write("                <a href=\"NewsSearch\"><li id=\"leftlist\">News</li><hr style=\"margin: -1px;\">\n");
      out.write("                <a href=\"Feedback.jsp\"><li id=\"leftlist\">feedback</li><hr style=\"margin: -1px;\">\n");
      out.write("                    <li id=\"leftslist\">\n");
      out.write("                        <a href=\"about.jsp\" style=\"padding-left: 42%\">about</a><br>\n");
      out.write("                        <a href=\"Contact.jsp\" style=\"padding-left: 35%\">contact us</a><br>\n");
      out.write("                        <a href=\"Terms.jsp\" style=\"padding-left: 22%\">Terms & Condition</a><br><br>\n");
      out.write("                        <img src=\"images/GameLogo2.JPG\" style=\"margin-left: 40px;\">\n");
      out.write("                        <p style=\"margin-left: 30%;color: rgb(242,238,247);\">ACM- © 2018</p>\n");
      out.write("                        <p style=\"margin-left: 30%;color: rgb(242,238,247);\">Version-0.0.7</p>\n");
      out.write("                        \n");
      out.write("                    </li>\n");
      out.write("                \n");
      out.write("                </ul>\n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("    \n");
      out.write("</html>\n");
      out.write("\n");
      out.write("       <link rel=\"Stylesheet\" href=\"Dcss/AdminPage.css\">\n");
      out.write("         \n");
      out.write("    </head>\n");
      out.write("    <body style=\"overflow-x: hidden; \">\n");
      out.write("        <div id=\"m4\">\n");
      out.write("            <h id=\"h1\">ADD NEWS</h>\n");
      out.write("            <form action=\"AdminPage\">\n");
      out.write("              <p id=\"names\"> News Id: <input id=\"txt1\" type=\"text\" name=\"newsid\" placeholder=\"Enter News Id here..\"/> </p> \n");
      out.write("               <p id=\"names\">News Heading: <input id=\"txt1\" type=\"text\" name=\"newsheading\" placeholder=\"Enter News Heading here..\"/> </p> \n");
      out.write("                <p id=\"names\"> News Description: <textarea  name=\"newsdesc\" placeholder=\"Enter News Description here..\" style=\"height:100px ;width: 500px;\"></textarea> </p> <br>\n");
      out.write("                 <p id=\"names\">News Link: <input id=\"txt1\" type=\"text\" name=\"newslink\" placeholder=\"Enter News Link here..\"/> </p> \n");
      out.write("                  <p id=\"names\">News Pic. address: <input id=\"txt1\" type=\"text\" name=\"newsimage\" placeholder=\"Enter Address here..\"/>  </p> \n");
      out.write("                  <input id=\"s1\" type=\"submit\" value=\"submit\"/>\n");
      out.write("                \n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
