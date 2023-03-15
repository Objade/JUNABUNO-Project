<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="phoneBook.*"%>
    
<%
	request.setCharacterEncoding("UTF-8");

	String cpath = request.getContextPath();
	
	Handler hd = (Handler)application.getAttribute("handler");
	if(hd == null) {
		hd = new Handler();
		application.setAttribute("handler", hd);
		
	}


%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>저나버노</title>
	<style>
	
		body {
            background-color: #ffe2e2;    
        }
        
         div.title {
            display: flex;
            width: 100%;
            height: 40px;
            justify-content: center;
            align-items: center;
        }
        
		a {
			text-decoration: none;
			color: inherit;
		}
		
		table {
			border-collapse: collapse;
			width: 100%;
		}
		
		td, th {
			border-top: 1px solid  #575757;
            border-bottom: 1px solid #575757;
            text-align: center;
			padding: 10px;
		}

        th {
            background-color: #ffb4b4;
        }
        
        td {
        	background-color: white;
        }
        
        
        nav {
            background-color: #dfb8b8;
        }
		
		nav > ul {
			display: flex;
			width: 100%;
			justify-content: space-around;
			list-style: none;
            padding: 5px;
			font-weight: bold;
		}
		
		ul > li:hover {
        text-decoration: underline;
       	}
	
        div.image {
            display: flex;
            margin: 50px auto;
            justify-content: center;
            align-items: center;
        }


        div.index {
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 30px;
        }
	
		 div.input {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 10px;
        }

        input[type="submit"] {
            width: 50%;
            background-color: #b96060;
            border: 0;
            padding: 10px;
            color: #f6f6f6;
            font-size: 15px;
        }

        input[type="submit"]:hover {
            cursor: pointer;
        }
	
		button {
            background-color: #b96060;
            border: 0;
            padding: 5px;
            color: #f6f6f6;
        }

        button:hover {
            cursor: pointer;
        }
        
	section {
		width: 500px;
		margin: 30px auto;
		text-align: center;
		margin: auto;
		color: gray;
		margin-top: 30px;
	}
	
	manager {
		display: flex;
	}
	
	
	button{
		margin-bottom: 20px;
	}
	
	
	</style>



</head>
<body>


 <header>
        <div class="title">
            <h1><a href="<%=cpath %>/index.jsp">저나버노</a></h1>
        </div>

        <nav>
            <ul>
                <li><a href="<%=cpath %>/list.jsp">목록</a></li>
				<li><a href="<%=cpath %>/add.jsp">생성</a></li>
				<li><a href="<%=cpath %>/update.jsp">수정</a></li>
				<li><a href="<%=cpath %>/delete.jsp">삭제</a></li>
            
            </ul>
        
        </nav>
    </header>



