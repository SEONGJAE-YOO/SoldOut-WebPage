<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="evaluation.EvaluationDTO"%>

<%@ page import="evaluation.EvaluationDAO"%>

<%@ page import="java.io.PrintWriter"%>

<%

	request.setCharacterEncoding("UTF-8");



	String userID = null;

	if(session.getAttribute("userID") != null) {

		userID = (String) session.getAttribute("userID");

	}
  
	if(userID == null) {

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('로그인을 해주세요.');");

		script.println("location.href = 'userLogin.jsp'");

		script.println("</script>");

		script.close();

		return;
  
	} 

	request.setCharacterEncoding("UTF-8");


	String items = null;

	String size = null;

	String category = null;

	String evaluationTitle = null;

    String evaluationContent = null;

	String PurchaseDate = null;

	String day = null;

	String totalScore = null;

	String design = null;
	
	String priceScore = null;

	String itemsScore = null;


	if(request.getParameter("items") != null) {

		items = (String) request.getParameter("items");

	}

	if(request.getParameter("size") != null) {

		size = (String) request.getParameter("size");

	}

	if(request.getParameter("category") != null) {

		category = (String) request.getParameter("category");

	}


	if(request.getParameter("evaluationTitle") != null) {

		evaluationTitle = (String) request.getParameter("evaluationTitle");

	}

	if(request.getParameter("evaluationContent") != null) {

		evaluationContent = (String) request.getParameter("evaluationContent");

	}

	if(request.getParameter("PurchaseDate") != null) {

		PurchaseDate = (String) request.getParameter("PurchaseDate");

	}

	if(request.getParameter("day") != null) {

		day = (String) request.getParameter("day");

	}

	if(request.getParameter("totalScore") != null) {

		totalScore = (String) request.getParameter("totalScore");

	}

	if(request.getParameter("design") != null) {

		design = (String) request.getParameter("design");

	}

	if(request.getParameter("priceScore") != null) {

		priceScore = (String) request.getParameter("priceScore");

	}

	if(request.getParameter("itemsScore") != null) {

		itemsScore = (String) request.getParameter("itemsScore");

	}

	if (items == null || size == null || category == null || evaluationTitle == null ||

			evaluationContent == null || PurchaseDate == null || day == null || totalScore == null ||

					design == null || priceScore == null || itemsScore == null ||

			evaluationTitle.equals("") || evaluationContent.equals("")) {

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('입력이 안 된 사항이 있습니다.');");

		script.println("history.back();");

		script.println("</script>");

		script.close();

		return;

	} else {

		EvaluationDAO evaluationDAO = new EvaluationDAO();

		int result = evaluationDAO.write(new EvaluationDTO(0, userID, items, size, category,

				evaluationTitle, evaluationContent, PurchaseDate, day,

				totalScore, design, priceScore, itemsScore, 0));

		if (result == -1) {

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('평가 등록에 실패했습니다.');");

			script.println("history.back();");

			script.println("</script>");

			script.close();

			return;

		} else {

			EvaluationDAO evaluationDAO = new EvaluationDAO();

			int result = evaluationDAO.write(new EvaluationDTO(0, userID, items, size, category,

					evaluationTitle, evaluationContent, PurchaseDate, day,

					totalScore, design, priceScore, itemsScore, 0));  

			if (result == -1) {

				PrintWriter script = response.getWriter();

				script.println("<script>");

				script.println("alert('평가 등록에 실패했습니다.');");

				script.println("history.back();");

				script.println("</script>");

				script.close();

				return;

			} else {

				PrintWriter script = response.getWriter();

				script.println("<script>");

				script.println("location.href = './soldout.jsp';");

				script.println("</script>");

				script.close();

				return;

			}

		}
	}
	%>




