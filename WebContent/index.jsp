<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Mom Bookstore Main Page</title>
	<link rel="StyleSheet" href="pro.css" type="text/css"/>
</head>
<body>

<%@include file="fragment/header.jsp" %>

<div class="mysidebar">
       <%@include file="fragment/side-category.jsp" %>
</div>
   
<div class="main">
	<div id="block1">
		<h2>Best Sellers</h2>
		<img id="image1" src="images/harryPotter.jpg" />
		<img id="image2" src="images/lordOfRings.jpg" />
		<img id="image3" src="images/envScience.jpg" />
		<img id="image4" src="images/securityEng.jpg" />
		<img id="image5" src="images/automobileEng.jpg" />
	</div>
	
	<br />
	
	<h2>Browse Books</h2>
	<div id="form3">
		<label for="title">by Title:</label>
		<input for="title" type="text" name="title"></input>
		<label for="author">by Author:</label>
		<input for="author" type="text" name="author"></input>
		<input type="submit" name="submit" value="Search" id="search"></input>
	</div>
	
	<br />
	<h2>Categories</h2>
	<div id="block2">
	  <h3>Fiction</h3>
	    <div class="img1">
	    <img src="images/LittlePrince.jpg" />
	    <pre class="img1Description">The Little Prince <span id="author">(by Antoine de Saint)</span>
	    <span id="rating">Reviews: 4.28/5.0</span></pre>
	    </div>
	    <div class="img2">
	    <img src="images/aSeasonOfDaringGreatly.jpg" />
	    <pre class="img2Description">A Season of Daring Greatly<span id="author">(by ---)</span>
	    <span id="rating">Reviews: ??/5.0</span></pre>
	    </div>
	    <div class="img3">
	    <img src="images/orphanTale.jpg" />
	    <pre class="img3Description">The Orphan's Tale <span id="author">(by Pam Jenoff)</span>
	      <span id="rating">Reviews: 4.11/5.0</span></pre>
	    </div>
	     <br/><br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/>  <br/>
	    <a class="link" href="">View more</a>
	</div>
	<div id="block3">
	  <h3>Science</h3>
	    <div class="img4">
	    <img src="images/biology.jpg" />
	    <pre class="img4Description">Biology <span id="author">(by Miler,Levine)</span>
	    <span id="rating">Reviews: 3.68/5.0</span></pre>
	    </div>
	    <div class="img5">
	    <img src="images/organicchem.jpeg" />
	    <pre class="img5Description">A Text Book of Organic Chemistry<span id="author">(by Girijesh Dubey)</span>
	    <span id="rating">??>/5.0</span></pre>
	    </div>
	    <div class="img6">
	    <img src="images/ModernPhysics.jpg" />
	    <pre class="img6Description">Modern Physics:Third Edition<span id="author">(by Kenneth Krane)</span>
	      <span id="rating">Reviews: 4.3/5.0</span></pre>
	    </div>
	     <br/><br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/>  <br/>
	    <a class="link" href="">View more</a>
	</div>
	
	<div id="block4">
	  <h3>Engineering</h3>
	    <div class="img7">
	    <img src="images/basicCivilEngineering.jpg" />
	    <pre class="img7Description">Basic Civil Engineering<span id="author">(by S.S Bhavikatti)</span>
	    <span id="rating">Reviews: ??/5.0</span></pre>
	    </div>
	    <div class="img8">
	    <img src="images/softwareEng.jpg" />
	    <pre class="img8Description">A Text Book of Organic Chemistry<span id="author">(by Girijesh Dubey)</span>
	    <span id="rating">??>/5.0</span></pre>
	    </div>
	    <div class="img9">
	    <img src="images/ChemicalEngineeringDesign.jpg" />
	    <pre class="img9Description">Chemical Engineering Design<span id="author">(by R K Sinnott)</span>
	    <span id="rating">Reviews: 4.3/5.0</span></pre>
	    </div>
	     <br/><br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/>  <br/>
	    <a class="link" href="">View more</a>
	</div>
</div>

<%@include file="fragment/footer.jsp" %>

</body>
</html>