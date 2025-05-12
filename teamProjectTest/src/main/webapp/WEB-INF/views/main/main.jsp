<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>메인 페이지</title>
  <style>
    .movie-container {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 30px;
      padding: 30px;
    }

    .movie-box {
      width: 200px;
      position: relative;
      text-align: center;
    }

    .poster-wrapper {
      position: relative;
      overflow: hidden;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.2);
      cursor: pointer;
    }

    .poster-img {
	  width: 100%;
	  height: 300px;            /* ✅ 고정 높이 */
	  object-fit: cover;        /* ✅ 이미지 비율 유지하며 자르기 */
	  transition: opacity 0.4s ease;
	  display: block;
	}

    .movie-info {
      position: absolute;
      top: 0; left: 0;
      width: 100%; height: 100%;
      background-color: rgba(0,0,0,0.7);
      color: white;
      opacity: 0;
      transform: translateY(20px);
      transition: opacity 0.4s ease, transform 0.4s ease;
      padding: 10px;
      box-sizing: border-box;
      font-size: 13px;
      text-align: left;
    }

    .poster-wrapper:hover .poster-img {
      opacity: 0.3;
    }

    .poster-wrapper:hover .movie-info {
      opacity: 1;
      transform: translateY(0);
    }

    .reserve-btn {
      margin-top: 10px;
      padding: 5px 10px;
      background-color: crimson;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .pagination {
      text-align: center;
      margin: 30px 0;
    }

    .pagination a {
      margin: 0 5px;
      text-decoration: none;
      color: black;
    }

    .pagination a.active {
      font-weight: bold;
      color: red;
    }
  </style>
</head>
<body>
  <div class="container">
    <!-- Header -->
    <%@ include file="../main/header.jsp" %>

    <!-- 영화 목록 -->
    <h2 style="text-align:center;">🎬 현재 상영작</h2>

	<div class="movie-container">
	  <c:forEach var="movie" items="${movieList}">
	    <div class="movie-box">
	      <div class="poster-wrapper">
	        <img class="poster-img" src="${movie.posterUrl}"
				 onerror="this.onerror=null; this.src='${pageContext.request.contextPath}/resources/upload/no-image.png';"
				 alt="${movie.movieNm} 포스터" />
	        <div class="movie-info">
	          <h4>${movie.movieNm}</h4>
	          <p>감독: ${movie.directors}</p>
	          <p>배우: ${movie.actors}</p>
	          <p>장르: ${movie.genreNm}</p>
	          <p>개봉: ${movie.openDt}</p>
	          <form method="get" action="${pageContext.request.contextPath}/booth/booking">
	            <input type="hidden" name="movieId" value="${movie.movieId}" />
	            <button type="submit" class="reserve-btn">예매</button>
	          </form>
	        </div>
	      </div>
	    </div>
	  </c:forEach>
	</div>
    
    <!-- pagination -->
		<div class="pagination">
			<a href="${pageContext.request.contextPath}/main/main?pageNum=1&search=${pageDTO.search}" class="firstpage  pbtn"><img src="${pageContext.request.contextPath}/resources/upload/btn_firstpage.png" alt="첫 페이지로 이동"></a>
				
			<c:if test="${pageDTO.currentPage > 1}">
				<a href="${pageContext.request.contextPath}/main/main?pageNum=${pageDTO.currentPage - 1}" class="prevpage  pbtn"><img src="${pageContext.request.contextPath}/resources/upload/btn_prevpage.png" alt="이전 페이지로 이동"></a>
			</c:if>
				
				
			<c:forEach var="i" begin="${pageDTO.startPage}" end="${pageDTO.endPage}" step="1">
				<c:if test="${ i eq pageDTO.currentPage }">
					<a href="${pageContext.request.contextPath}/main/main?pageNum=${i }"><span class="pagenum currentpage">${i }</span></a>
				</c:if>
				<c:if test="${ i ne pageDTO.currentPage }">
					<a href="${pageContext.request.contextPath}/main/main?pageNum=${i }"><span class="pagenum">${i }</span></a>
				</c:if>
			</c:forEach>
				
			<c:if test="${pageDTO.currentPage < pageDTO.pageCount}">
				<a href="${pageContext.request.contextPath}/main/main?pageNum=${pageDTO.currentPage + 1}" class="nextpage  pbtn"><img src="${pageContext.request.contextPath}/resources/upload/btn_nextpage.png" alt="다음 페이지로 이동"></a>
			</c:if>
				
				
			<a href="${pageContext.request.contextPath}/main/main?pageNum=${pageDTO.pageCount}" class="lastpage  pbtn"><img src="${pageContext.request.contextPath}/resources/upload/btn_lastpage.png" alt="마지막 페이지로 이동"></a>
		</div>
	<!-- //pagination -->

    <!-- Footer -->
   <%@ include file="../main/footer.jsp" %>
  </div>

  <script>
    function goPage(page) {
      alert(page + " 페이지로 이동합니다."); // 실제 경로 설정 시 location.href 사용
    }

    function showDetail(movieId) {
      console.log('영화 상세 내용 보기 - 영화 ID:', movieId);
    }
    
    function goBooking(movieId) {
        const contextPath = "${pageContext.request.contextPath}";
        location.href = contextPath + "/booth/booking?movieId=" + movieId;
    }
  </script>
</body>
</html>