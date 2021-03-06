<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">

<title>강의 개설</title>

<!-- css 폴더에 css파일 추가 -->
<link rel="stylesheet" href="http://www.kozofficial.com/theme/basic/css/default.css?ver=171222">
<link rel="stylesheet" href="http://www.kozofficial.com/theme/basic/css/style.css">
<link rel="stylesheet" href="http://www.kozofficial.com/theme/basic/css/content.css">

<title>스트리밍 강의 개설</title>

</head>

<body>
<!-- 콘텐츠 시작  -->
<div id="wrapper">
	<div class="con-wr contact">
		<div class="con-inner sub-sub">
		    <div class="tit-wr tit-wr-ani">
		      <h2>스트리밍 강의 개설</h2>
		    </div>
		
			<div class="sub-content">
			  <div class="basic-table">
			    <form class="contact-from" action="openclass" method="post">
			        <ul>
			          <li>
			            <label for="className" class="sound_only">수업 이름</label>
			            <input type="text" name="className" id="className" required value="" placeholder="수업 이름">
			          </li>
			          <li>
			            <label for="tel" class="sound_only">수업 유형</label>
			            <input type="text" name="classType" id="classType" required value="" placeholder="수업 유형">
			          </li>
			          <li>
			            <label for="classLength" class="sound_only">수업 기간</label>
			            <input type="text" name="classLength" id="classLength" required value="" placeholder="수업 기간">
			          </li>
			          <!-- 
			          <li>
			            <label for="classStartDate" class="sound_only">수업 시작일</label>
			            <input type="text" name="classStartDate" id="classStartDate" required value="" placeholder="수업 시작일">
			          </li>
			           -->
			          <li>
			            <label for="classDay" class="sound_only">수업 요일</label>
			            <input type="text" name="classDay" id="classDay" required value="" placeholder="수업 요일">
			          </li>
			          <li>
			            <label for="classTime" class="sound_only">수업 시간</label>
			            <input type="text" name="classTime" id="classTime" required value="" placeholder="수업 시간">
			          </li>
			          <li>
			            <label for="totalMembers" class="sound_only">수업 인원</label>
			            <input type="text" name="totalMembers" id="totalMembers" required value="" placeholder="수업 인원">
			          </li>
			          <li>
			            <label for="price" class="sound_only">가격</label>
			            <input type="text" name="price" id="price" required value="" placeholder="가격">
			          </li>
			        </ul>
			        <input type="submit" name="" value="Send" class="send-btn">
			    </form>
			  </div>
		 	</div>
		</div><!-- //con-inner-->
	</div><!-- //con-wr-->
</div>
<!-- 하단 끝 -->
</body>
</html>
