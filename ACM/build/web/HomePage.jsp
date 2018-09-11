<%-- 
    Document   : HomePage
    Created on : 15 Feb, 2018, 3:46:06 PM
    Author     : rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img1.JPG"/>
        <title img src="images//img1.JPG">Gaming Geeks</title> 
        <%@ include file="Include_file.jsp" %>
       <link rel="Stylesheet" href="Dcss/HomePage.css">
    </head>
    <body style="overflow-x: hidden; ">
      <div id="middle" >
          
          <div id="welcome" style="background-image:url(images/title.jpg);">
              
              <h id="title">Welcome to Gaming Geeks ! Enhance your Gaming Knowledge </h>
             
          </div>
          
          
          <div id="FeaturedGames">
             
              <p id="FeaturedTitle">Featured games</p>
               <hr style="width: 800px">
               <div id="d1">
                   <a href="SearchedResult?GameName=counter-strike global offensive" >
                       
                   <img src="GameImages/counter-strike global offensive.jpeg" style="width: 100%;height: 100% " id="ImgStyle1"/>                                                                     
               </a>
                   <a href="SearchedResult?GameName=counter-strike global offensive" style="position: absolute;top: 250px; left: 20px; font-size: 25px;">counter-strike global offensive</a>
                  
               </div>
               <div id="d2">
                   
                    <a href="SearchedResult?GameName=assassins creed unity" >
                       
                   <img src="GameImages/assassin's creed unity.jpg" style="width: 100%;height: 100% " id="ImgStyle1"/>                                                                        
               </a>
                   <a href="SearchedResult?GameName=assassins creed unity" style="position: absolute;top: 250px; left: 20px;font-size: 25px;">assassin's creed unity</a>
                  
               </div>
               <div id="d3">
                   
                   <a href="SearchedResult?GameName=asphalt 8" >
                       
                   <img src="GameImages/asphalt 8.jpg" style="width: 100%;height: 100% " id="ImgStyle1"/>                                                                 
               </a>
                   <a href="SearchedResult?GameName=asphalt 8" style="position: absolute;top: 250px; left: 20px;font-size: 25px;">asphalt 8</a>
                  
               </div>
               <div id="d4">
                   
                   <a href="SearchedResult?GameName=batman arkham city" >
                       
                   <img src="GameImages/batman arkham city.jpg" style="width: 100%;height: 100% " id="ImgStyle1"/>                                                                     
               </a>
                   <a href="SearchedResult?GameName=batman arkham city" style="position: absolute;top: 250px; left: 20px;font-size: 25px;">batman arkham city</a>
                  
               </div>
               <div id="d5">
                   
                   <a href="SearchedResult?GameName=call of duty black ops" >
                       
                   <img src="GameImages/call of duty black ops.jpg" style="width: 100%;height: 100% " id="ImgStyle1"/>                                                                       
               </a>
                   <a href="SearchedResult?GameName=call of duty black ops" style="position: absolute;top: 250px; left: 20px;font-size: 25px;">call of duty black ops</a>
                  
               </div>
          </div>
          
          <div id="UpcomingGames">
              
              <p id="UpcomingTitle">UPCOMING GAMES</p>
               <hr style="width: 800px">
               <div id="n">
                   
              
             <img src="UpcomingGames/Extinction.jpg" style="width: 200px; height: 147px;">
             <div id="desc">
                <a href="UpcomingGames" id="UpcomingGameName" style="font-size: 31px;">Extinction</a>
                 <br>
                 <p style="line-height: 30px;">PLATFORM:PS4</p>
                 <p>RELEASE DATE: April 17, 2018</p>
             </div>
               </div>
               <hr>
               <div id="n">
                   
                    <img src="UpcomingGames/Yakuza 6-The Song of Life.jpg" style="width: 200px; height: 147px;">
             <div id="desc">
                <a href="UpcomingGames" id="UpcomingGameName" style="font-size: 31px;">Yakuza 6-The Song of Life</a>
                 <br>
                 <p style="line-height: 30px;">PLATFORM:PS4</p>
                 <p>RELEASE DATE: April 17, 2018</p>
             </div>
               </div>
               <hr>
               <div id="n">
                   
                    <img src="UpcomingGames/God of War.jpg" style="width: 200px; height: 147px;">
             <div id="desc">
                <a href="UpcomingGames" id="UpcomingGameName" style="font-size: 31px;">God of War</a>
                 <br>
                 <p style="line-height: 30px;">PLATFORM:PS4</p>
                 <p>RELEASE DATE: April 17, 2018</p>
             </div>
               </div>
               <hr>
               <div id="n">
                   
                    <img src="UpcomingGames/Nintendo Labo.jpg" style="width: 200px; height: 147px;">
             <div id="desc">
                <a href="UpcomingGames" id="UpcomingGameName" style="font-size: 31px;">Nintendo Labo</a>
                 <br>
                 <p style="line-height: 30px;">PLATFORM:PS4</p>
                 <p>RELEASE DATE: April 17, 2018</p>
             </div>
               </div>
               <hr>
               <div id="n">
                   
                    <img src="UpcomingGames/State of Decay 2.png" style="width: 200px; height: 147px;">
             <div id="desc">
                <a href="UpcomingGames" id="UpcomingGameName" style="font-size: 31px;">State of Decay 2</a>
                 <br>
                 <p style="line-height: 30px;">PLATFORM:PS4</p>
                 <p>RELEASE DATE: April 17, 2018</p>
             </div>
               </div>
               <hr>
          </div>
          
          
          <div id="LatestGames">
              <p id="LatestTitle">Latest Games</p>
               <hr style="width: 800px">
              <div id="lg">
                  <a href="SearchedResult?GameName=brothers a tale of two sons1" >
                       
                   <img src="GameImages/brothers a tale of two sons1.jpg" id="ImgStyle"/>                                                                     
               </a>
                   <a href="SearchedResult?GameName=brothers a tale of two sons1" style="position: absolute;top: 250px; left: 20px; font-size: 25px;">brothers a tale of two sons1</a>
                  
              </div>
               
              <div id="lg">
                  <a href="SearchedResult?GameName=dishonored" >
                       
                   <img src="GameImages/dishonored.jpg" id="ImgStyle"/>                                                                     
               </a>
                   <a href="SearchedResult?GameName=dishonored" style="position: absolute;top: 250px; left: 20px; font-size: 25px;">dishonored</a>
                  
              </div>
               
                            
              <div id="lg">
                  <a href="SearchedResult?GameName=deus ex" >
                       
                   <img src="GameImages/deus ex.jpg" id="ImgStyle"/>                                                                     
               </a>
                   <a href="SearchedResult?GameName=deus ex" style="position: absolute;top: 250px; left: 20px; font-size: 25px;">deus ex</a>
                  
              </div>
                      
              <div id="lg">
                   <a href="SearchedResult?GameName=dirt rally" >
                       
                   <img src="GameImages/dirt rally.jpg" id="ImgStyle"/>                                                                     
               </a>
                   <a href="SearchedResult?GameName=dirt rally" style="position: absolute;top: 250px; left: 20px; font-size: 25px;">dirt rally</a>
                  
              </div>
          </div>
          <hr>
          
              <div id="endtext" >
                  <p style="font-family: comic sans ms;font-size: 20px;color: white">Gaming Geeks is optimized for Gaming Experience. Explore the Gaming world with ease and Master your Skills. Basic Features are constantly reviewed to avoid errors, but we cannot warrant full correctness of all content. While using this site, you agree to have read and accepted our terms of use, cookie and privacy policy.
Copyright 2K18-2K19 by Refsnes Data. All Rights Reserved.
</p>
<img src="images/GameLogo.png" />
              </div>
             
          
          
          
      </div>
    </body>
</html>
