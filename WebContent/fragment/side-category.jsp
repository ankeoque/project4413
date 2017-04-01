<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="panel">
	 	<h3>Category</h3>
	 	
          <ul class="nav">          	  
          	  <li><a href="${initParam['param1']}">Home</a></li>
          	  <li><a href="${initParam['param1']}?action=allBooks">All Books</a></li>
              <li><a href="${initParam['param1']}?action=category&category=Science">Science</a></li>
              <li><a href="${initParam['param1']}?action=category&category=Fiction">Fiction</a></li>
              <li><a href="${initParam['param1']}?action=category&category=Engineering">Engineering</a></li>
              <li><form class="search" action="Start">
					<input type="hidden" name="action" value="search" />
					<input id="text" type="text" name="keyWord" size="12" />
					<input id="submit" type="submit" value="search" />
				  </form>
			  </li>
          </ul>
     </div>
</body>
</html>