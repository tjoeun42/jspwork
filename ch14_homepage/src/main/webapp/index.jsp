<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <script src="https://code.jquery.com/ui/1.14.1/jquery-ui.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="resources/js/homepage.js"></script>
    <link href="resources/css/style.css" rel="stylesheet">
    <title>HOMEPAGE</title>
</head>
<body>
    <header>
        <div class="logo">
          <img src="https://img.megastudyacademy.co.kr/campus/logo/head_mcl_logo.jpg" alt="로고">
        </div>
        <nav>
          <ul class="nav">
            <li><a href="vote/voteList.jsp">투표프로그램</a></li>
            <li><a href="board/list.jsp">게시판</a></li>
            <c:choose>
            	<c:when test="${empty idKey}">
            		<li><a href="member/login.jsp">로그인</a></li>
            	</c:when>
            	<c:otherwise>
            		<li><a href="member/logout.jsp">로그아웃</a></li>
            	</c:otherwise>
            </c:choose>
          </ul>
        </nav>
        <div id="login">
        	<c:if test="${ not empty idKey }">
        		<p>[ ${idKey}님 로그인 상태 ]</p>
        	</c:if>
        </div>
      </header>
      <article id="content">
        <section id="imgslide">
          <img src="resources/img/slide1.jpg" alt="여행사진1">
          <img src="resources/img/slide2.jpg" alt="여행사진2">
          <img src="resources/img/slide3.jpg" alt="여행사진3">
        </section>
        <section class="notice">
          <h2>공지사항</h2>
          <table class="table">
            <tr>
              <th>내용</th>
              <th>날짜</th>
            </tr>
            <tr>
              <td><a href="#">다도해 풍광을 한눈에...해남 땅끝 해안누리길 여행하기</a></td>
              <td>2025-10-20</td>
            </tr>
            <tr>
              <td><a href="#">설악산 단풍 절정, 기차 여행 상품이 출시되었..</a></td>
              <td>2025-09-15</td>
            </tr>
            <tr>
              <td><a href="#">국토순례 기차여행에 참가하는 학교, 청소년단체 등...</a></td>
              <td>2025-08-10</td>
            </tr>
            <tr>
              <td><a href="#">신나는 바다 서핑, 추천하는 국내 여행지 & 관광열차</a></td>
              <td>2025-07-20</td>
            </tr>
            <tr>
              <td><a href="#">봄 꽃 만발 꽃축제, 고니골 빛축제와 꽃축제로..</a></td>
              <td>2025-03-25</td>
            </tr>
          </table>
        </section>
      
        <section class="partner">
          <h2>정보나눔</h2>
          <div class="partner_info">
            <img src="resources/img/info.png" alt="여행정보">
          </div>
        </section>
    
        <section class="icon">
          <div class="imgbtn">
            <img src="resources/img/새소식.png" alt="no"><br>
            <button>새 소 식</button>
          </div>
          <div class="imgbtn">
            <img src="resources/img/여행음악.png" alt="no"><br>
            <button>여행음악</button>
          </div>
          <div class="imgbtn">
            <img src="resources/img/여행매뉴얼.png" alt="no"><br>
            <button>여행매뉴얼</button>
          </div>
        </section>
      </article>
      <footer>
        <span>더조은 여행사</span><br>
        <span>대표자 : 김대현|주소 : 서울 강남구 강남대로 78길 8 한국빌딩 4층,8층</span><br>
        <span>사업자등록번호 864-85-00997|통신판매업신고번호 2018-서울서초-2615 | 마케팅제휴 : partner@tjoeun.co.kr</span><br>
        <p>ⓒ THEJOEUN ACADEMY Corp.</p>
    </footer>
</body>
</html>