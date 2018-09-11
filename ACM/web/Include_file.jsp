<%-- 
    Document   : Include_file
    Created on : 6 Mar, 2018, 10:26:03 PM
    Author     : rahul
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
       <link rel="Stylesheet" href="Dcss/IncludeCss.css"/>
       <link rel="Stylesheet" href="Dcss/SearchCss.css"/>
              <link rel="Stylesheet" href="Dcss/SignIn.css"/>
        <link rel="Stylesheet" href="Dcss/Register.css"/>
        
        <link rel="shortcut icon" href="l.jpg" />
    </head>
    
    
    <body>
        
        <div class="above">
            
           <div id="leftdiv">
                
                    <a href="HomePage.jsp" style="margin-left: 20px;"> 
                        <img src="images/GameLogo2.JPG" style="margin-top: 20px;float: left;margin-left: 20px"/>
                    </a>
                    
                
            </div>
            
            <div id="middiv">
               
                
                

                <form autocomplete="off" action="/ACM/Search" id="search">
                           <div class="autocomplete" style="width:350px;height: 55px;float: left">
                              <input id="myInput" type="text" name="srtext" placeholder="Search Your Game Here...">
                           </div>
                              <input id="submit" type="submit" name="Search" value="Search">
                </form>

                <script>
                    function autocomplete(inp, arr)
                        {
                            var currentFocus;
                            inp.addEventListener("input", function(e) 
                                {
                                  var a, b, i, val = this.value;
                                  closeAllLists();
                                  if (!val) { return false;}
                                  currentFocus = -1;
                                     a = document.createElement("DIV");
                                     a.setAttribute("id", this.id + "autocomplete-list");
                                     a.setAttribute("class", "autocomplete-items");
                                     this.parentNode.appendChild(a);
                                        for (i = 0; i < arr.length; i++)
                                            {
                                                 if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase())
                                                    {
                                                         b = document.createElement("DIV");
          
                                                         b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
                                                         b.innerHTML += arr[i].substr(val.length);
         
                                                         b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
          
                                                         b.addEventListener("click", function(e) 
                                                            {
              
                                                                 inp.value = this.getElementsByTagName("input")[0].value;
              
                                                                 closeAllLists();
                                                            });
                                                         a.appendChild(b);
                                                    }
                                            }
                                    });
  /*execute a function presses a key on the keyboard:*/
  inp.addEventListener("keydown", function(e) {
      var x = document.getElementById(this.id + "autocomplete-list");
      if (x) x = x.getElementsByTagName("div");
      if (e.keyCode == 40) {
        /*If the arrow DOWN key is pressed,
        increase the currentFocus variable:*/
        currentFocus++;
        /*and and make the current item more visible:*/
        addActive(x);
      } else if (e.keyCode == 38) { //up
        /*If the arrow UP key is pressed,
        decrease the currentFocus variable:*/
        currentFocus--;
        /*and and make the current item more visible:*/
        addActive(x);
      } else if (e.keyCode == 13) {
        /*If the ENTER key is pressed, prevent the form from being submitted,*/
        e.preventDefault();
        if (currentFocus > -1) {
          /*and simulate a click on the "active" item:*/
          if (x) x[currentFocus].click();
        }
      }
  });
  function addActive(x) {
    /*a function to classify an item as "active":*/
    if (!x) return false;
    /*start by removing the "active" class on all items:*/
    removeActive(x);
    if (currentFocus >= x.length) currentFocus = 0;
    if (currentFocus < 0) currentFocus = (x.length - 1);
    /*add class "autocomplete-active":*/
    x[currentFocus].classList.add("autocomplete-active");
  }
  function removeActive(x) {
    /*a function to remove the "active" class from all autocomplete items:*/
    for (var i = 0; i < x.length; i++) {
      x[i].classList.remove("autocomplete-active");
    }
  }
  function closeAllLists(elmnt) {
    /*close all autocomplete lists in the document,
    except the one passed as an argument:*/
    var x = document.getElementsByClassName("autocomplete-items");
    for (var i = 0; i < x.length; i++) {
      if (elmnt != x[i] && elmnt != inp) {
        x[i].parentNode.removeChild(x[i]);
      }
    }
  }
  /*execute a function when someone clicks in the document:*/
  document.addEventListener("click", function (e) {
      closeAllLists(e.target);
      });
}



/*An array containing all the country names in the world:*/
var Games =["amnesia the dark descent","assassins creed brotherhood","assassins creed unity","assassins creed rogue","asphalt 8","batman arkham city","battlefield 1","battlefield 2","battlefield 3","blur","brothers a tale of two sons1","call of duty ghosts1","call of duty black ops","call of duty modern warfare","counter-strike global offensive","counter-strike source","company of heroes","dirt rally","dishonored","dark souls","deus ex","far cry ","far cry 2","far cry 3","f1 challenge","fallout","fallout 2","grim fandango","grand theft auto v","grand theft auto san andreas","grand theft auto vice city","gone home","half life","half life 2","homefront","homeworld","mass effect","medal of honor","metal gear","metal gear solid","mark of the ninja","overwatch","out of the park baseball 17","operation flashpoint","paladins","portal 2","portal","pillars of eternity","rise of nations","raw data","system shock","star war battlefront","street fighter 5","starcraft","sid meier's starships","sid meier's pirates","total overdose","the witcher","the witcher 3 wild hunt","the sims 4","total war warhammer 2","watch dogs","watch dogs 2","warframe","world of warcraft","wwe 2k17"];
  
/*initiate the autocomplete function on the "myInput" element, and pass along the countries array as possible autocomplete values:*/
autocomplete(document.getElementById("myInput"), Games);
</script>
               
            </div>
            
            
            
            <div id="rightdiv">
                       <%
                          if(request.getCookies().length>1)
                             {
                                 Cookie cook1[]=request.getCookies();             
                                 if(cook1.length>1)
                                   {  
                                        String c=cook1[1].getValue();
                       %>
                       <h id="id01" style="float: left;color: whitesmoke;font-size: 25px;font-family: comic sans ms;margin-top: 10px" >Welcome! <%=c%></h>
                             
                       <%
                 
                                   }
                             }
                          else
                             {
                             %>                      
                             <button onclick="document.getElementById('id01').style.display='block'" style="width:90px; border-radius: 15%;background-color: lightslategrey">Login</button>
                              <%}%>  
           
<!--                      <button onclick="document.getElementById('id01').style.display='block'" style="width:90px;">Login</button>-->

                      <div id="id01" class="modal">
  
                       <form class="modal-content animate" action="/ACM/SignIn" method="post">
                               <div class="imgcontainer">
                                  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                                  <img src="images//a.jpg" alt="Avatar" class="avatar">
                               </div>

                               <div class="container">
                                    <label for="uname"><b>Username</b></label>
                                    <input type="text" placeholder="Enter Username" name="uname" required>

                                     <label for="psw"><b>Password</b></label>
                                     <input type="password" placeholder="Enter Password" name="psw" required>
        
                                     <button type="submit">Login</button>
                                     <label>
                                     <input type="checkbox" checked="checked" name="remember"> Remember me
                                     </label>
                                </div>

                                <div class="container" style="background-color:#f1f1f1">
                                     <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                                     <span class="psw">Forgot <a href="PasswordSetting.jsp" id="pass">password?</a></span>
                                </div>
                       </form>
                  </div>

                  <script>
                  // Get the modal
                  var modal = document.getElementById('id01');

                  // When the user clicks anywhere outside of the modal, close it
                  window.onclick = function(event) {
                  if (event.target == modal) {
                  modal.style.display = "none";
                       }
                      }
                  </script>
          
            <!--signin page ends here -->
            <!-- signup page-->
                 <%
                 if(request.getCookies().length>1)
                    {
                          Cookie cook1[]=request.getCookies();              
                         if(cook1.length>1)
                           {                 
                 %>
                 <form action="logout">
                   <button id="id01" style="width: 78px;float: left;margin-left: 120px ;padding: 15px;border-radius: 15%;background-color: lightslategrey" >Logout</button>
                 </form>
                     <%
                 
                           }
                    }
                 else
                     {
                         %>                      
                      <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;margin-left: 120px;border-radius: 15%;background-color: lightslategrey">Sign Up</button>
                      <%}%> 
<!--                   <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;margin-left: 120px">Sign Up</button>-->

                   <div id="id02" class="modalb">
                        <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
                        <form class="modalb-content" action="SignUp">
                            <div class="containerb">
                                  <h1>Sign Up</h1>
                                  <p>Please fill in this form to create an account.</p>
                                  <hr>
                                  <label for="text"><b>Full Name</b></label>
                                  <input type="text" placeholder="Enter Full Name" name="Name" required>
                                  
                                  <label for="text"><b>UserName</b></label>
                                  <input type="text" placeholder="Enter User Name" name="uname" required>
                                  
                                  <label for="email"><b>Email</b></label>
                                  <input type="email" placeholder="Enter Email" name="email" required>

                                  <label for="psw"><b>Password</b></label>
                                  <input type="password" placeholder="Enter Password" name="psw" required>

                                  <label for="psw-repeat"><b>Confirm Password</b></label>
                                  <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
      
                                   

                                  <p>By creating an account you agree to our <a href="Terms.jsp" style="color:dodgerblue">Terms & Privacy</a>.</p>

                                          <div class="clearfixb">
                                               <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtnb">Cancel</button>
                                               <button type="submit" class="signupbtnb">Sign Up</button>
                                          </div>
                            </div>
                        </form>
                   </div>

                   
                </form> 
            </div>
            
        </div>
       
       
        <div class="left">
            
             <ul>
                <a href="HomePage.jsp"><li id="leftlist">Home</li><hr style="margin: -1px;">
                <a href="Check_Configuration.jsp"><li id="leftlist">Check Configuration</li><hr style="margin: -1px;">
                <a href="UpcomingGames"><li id="leftlist">Upcoming Games</li><hr style="margin: -1px;">
                <a href="review.jsp"><li id="leftlist">reviews</li><hr style="margin: -1px;">
                <a href="NewsSearch"><li id="leftlist">News</li><hr style="margin: -1px;">
                <a href="Feedback.jsp"><li id="leftlist">feedback</li><hr style="margin: -1px;">
                    <li id="leftslist">
                        <a href="about.jsp" style="padding-left: 42%">about</a><br>
                        <a href="Contact.jsp" style="padding-left: 35%">contact us</a><br>
                        <a href="Terms.jsp" style="padding-left: 22%">Terms & Condition</a><br><br>
                        <img src="images/GameLogo2.JPG" style="margin-left: 40px;">
                        <p style="margin-left: 30%;color: rgb(242,238,247);">ACM- © 2018</p>
                        <p style="margin-left: 30%;color: rgb(242,238,247);">Version-0.0.7</p>
                        
                    </li>
                
                </ul>
        </div>
       
    </body>
    
</html>
