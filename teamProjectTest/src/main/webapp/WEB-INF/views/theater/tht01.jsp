<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>극장 메인 페이지</title>
<!--     <style> -->
<!-- /*     #container, #contents { */ -->
<!-- /* 	  min-height: 1500px; /* 필요한 만큼 더 늘릴 수도 있음 */ */ -->
<!-- /* 	} */ -->
	
<!-- /* 	.movie { */ -->
<!-- <!-- /* 	  display: block; */ --> -->
<!-- /* 	  width: 100%; */ -->
<!-- /* 	  clear: both; */ -->
<!-- /* 	  margin-bottom: 150px; /* 푸터와 겹치지 않게 충분한 여백 */ */ -->
<!-- /* 	} */ -->
    
<!--     </style> -->
    <link href="${pageContext.request.contextPath}/resources/css/layout.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/module.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/module.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.js"></script>
</head>
<body>
        <%@ include file="../main/header.jsp" %>

    <main>
    
    <div id="container">
    	<div id="contents">
 <hr style="color:red">
    
        <div class="sect-common">
    <div class="favorite-wrap">
        <div class="sect-favorite">
            <h4 style="z-index: 999; font-size: 24px; color: white; font-weight: 900; top: 20px;"><i id="fav_theater">자주가는 극장</i></h4>
            <ul id="favoriteTheaters">
	           	
	           	
					<li>
						<a href="javascript:void(0)" data-th="">
							<span>1</span>
							<em>
								
							</em>
						</a>
					</li>
				
	           	
					<li>
						<a href="javascript:void(0)" data-th="">
							<span>2</span>
							<em>
								
							</em>
						</a>
					</li>
				
	           	
					<li>
						<a href="javascript:void(0)" data-th="">
							<span>3</span>
							<em>
								
							</em>
						</a>
					</li>
				
	           	
					<li>
						<a href="javascript:void(0)" data-th="">
							<span>4</span>
							<em>
								
							</em>
						</a>
					</li>
				
	           	
					<li>
						<a href="javascript:void(0)" data-th="">
							<span>5</span>
							<em>
								
							</em>
						</a>
					</li>
				
            </ul>
            <button id="btn_set_my_favorite" type="button" title="새창">자주가는 극장 설정</button>
        </div>
        
<script type="text/javascript">
// let sessionId;

// $(function() {
// 	$('#favoriteTheaters a').on('click', function() {
// 		$('.sect-city').find('li').removeClass('on');
// 		document.getElementById('wrapEvent').scrollIntoView({ behavior: 'smooth' });
//         var dataTh = $(this).data('th');
//         $('.area-link').trigger('click', [dataTh, ]);
//         $('#ulcontent>li').removeClass('on');
// 	});
// });



</script>
        <div class="sect-city" style="display: flex; height: auto">
	        <ul>
			
				<li class="">
					<a href="javascript:void(0)" class="theater_region">서울</a>
				</li>
			
				<li class="">
					<a href="javascript:void(0)" class="theater_region">인천</a>
				</li>
			
				<li class="">
					<a href="javascript:void(0)" class="theater_region">경기</a>
				</li>
			
				<li class="">
					<a href="javascript:void(0)" class="theater_region">부산울산</a>
				</li>
			
				<li class="">
					<a href="javascript:void(0)" class="theater_region">대전충청</a>
				</li>
			
				<li class="">
					<a href="javascript:void(0)" class="theater_region">광주전라제주</a>
				</li>
			
				<li class="">
					<a href="javascript:void(0)" class="theater_region">경상</a>
				</li>
			
				<li class="">
					<a href="javascript:void(0)" class="theater_region">강원</a>
				</li>
			
				<li class="">
					<a href="javascript:void(0)" class="theater_region">대구</a>
				</li>
			
			
			<!-- 지역 눌렀을때 생성 되는 부분 -->
	        </ul>
	          <div class="area" style="position:absolute; top: 220px;">
				<ul id="ulcontent">
				
	        	 </ul>
	       	 </div>
	      
			           
			
        </div>
       
    </div>
</div>
<h3 id="wrapEvent"><img src="https://img.cgv.co.kr/R2014/images/title/h3_theater.gif" alt="THEATER"></h3>
<div class="sect-theater ">
        <h4 class="theater-tit" ><span style='margin:0 auto;' class="selectName"></span></h4>
<!--         <a href="/support/lease/default.aspx" class="round inred btn_lease"><span style="padding:0 14px;">단체/대관문의</span></a> -->
        
        <div class="wrap-theaterinfo">
            <div class="box-image">
                <div id="theater_img_container" class="thumb-image">
                	<ul class="movie">
                	
                	
                	
					</ul>	                
                
                
                </div>	<!-- theater_img_container  -->
            </div>
            
<!--             <div class="box-contents"> -->
<!--                 <div class="theater-info"> -->
<!--                     <span class="txt-info">서울특별시 강남구 강남대로 438 (역삼동)</span> -->
<!--                     최대 10개까지만 보여집니다 2 -->
<!-- <!--                     <span class="screentype"> -->
<!-- <!--                             <a href="/theaters/special/?regioncode=SCX&amp;theaterCode=0056" class="screenX">SCREENX</a> --> 
<!-- <!--                     </span> --> 
<!--                 </div> -->
               
<!--             </div> -->
        </div>
    </div>    	
    	
    	
    	
    	
    	
    	
    	
    	</div>	<!-- contents -->
    
    </div>		<!-- container -->
    
   

<script type="text/javascript">



let region;
$(function() {
	// 특정 지역 선택시 극장을 띄우기 위해 사용 
	$('.theater_region').on('click', function() {
		region = $(this).text();
		$('.sect-city li').removeClass();
		$(this).parent('li').addClass('on');
		
		$.ajax({
			type : 'get',
			url : "${pageContext.request.contextPath}/theater/ajaxList",
			data : {'theater_region': region},
			dataType: 'json',
			success: function(areaList) {
// 				console.log("areaList", areaList);

				$('#ulcontent').html('');
				
				areaList.forEach(function(area) {
// 					console.log("area", area);		//정상적으로 불러와지는지 확인
					var text =
						"<li class= >" 
						+
						"<a style='padding: 0 5px;' href='javascript:void(0);' class='theater_name' title='${area.theater_name}'>" 
                        +
                        area.theater_name 
                        +
                       "</a>" 
                       +
                   		"</li>";
                   		
					$('#ulcontent').append(text);

				});
				
				
			},
			error: function() {
				alert('오류');
			}
		});
		
		
// 		$('.theater_region:contains("서울")').trigger('click');
		
		
		
		
	});
})



</script>

<script type="text/javascript">
//예매 폼 전송 함수 
function submitBooking(movieName, region, theaterName, date, startTime, endTime) {
    const form = document.getElementById('bookForm');
    form.movieName.value = movieName;
    form.region.value = region;
    form.theaterName.value = theaterName;
    form.date.value = date;
    form.startTime.value = startTime;
    form.endTime.value = endTime;
    form.submit();
}

//보낼 값 & url 변수
function goToBooking(movieName, region, theaterName, screenDate, screenStartTime) {
    const url = "${pageContext.request.contextPath}/booth/booking"
        + "?movie=" + encodeURIComponent(movieName)
        + "&region=" + encodeURIComponent(region)
        + "&theater=" + encodeURIComponent(theaterName)
        + "&date=" + encodeURIComponent(screenDate)
        + "&time=" + encodeURIComponent(screenStartTime);
    location.href = url;
}

// var movieList = ${movieList};

// $(function() {
// 	$('.theater_name').on('click',  function() {
	//극장 이름 선택하면 상영 스케줄 출력
	$(document).on('click', '.theater_name', function() {
  		 var selectedName = $(this).text(); 	// 클릭된 텍스트
  		 $('.selectName').text(selectedName); 	// span에 출력 
 		 $('#ulcontent li').removeClass('on');	// 기존 선택된 극장 스타일 제거
 		 $(this).parent('li').addClass('on'); 	// 현재 클릭된 극장 스타일 추가
		 
 		 
 		$.ajax({
 		    type: 'get',
 		    url: "${pageContext.request.contextPath}/theater/listScreen",
 		    data: { 'theater_name': selectedName },
 		    dataType: 'json',
 		   success: function(listScreen) {
 			    console.log(listScreen);
 			    $('.movie').html(''); //movie 안에 listScreen 출력
	
 			    //listScreen값이 있으면 정보 가져옴
 			    if (listScreen.length > 0) {
 			        //영화 이름으로 상영 스케줄 그룹화
 			    	const grouped = {};
 			        listScreen.forEach(item => {
 			            console.log("screen_date 원본 값:", item.screen_date);
 			            if (!grouped[item.movie_nm]) {
 			                grouped[item.movie_nm] = {
 			                    poster_url: item.poster_url,
 			                    schedules: []
 			                };
 			            }
 			            grouped[item.movie_nm].schedules.push(item);
 			        });

 			        //오늘 날짜와 상영 날짜 비교하여 오늘 날짜의 스케줄 출력
 			        const today = new Date();
 			        today.setHours(0, 0, 0, 0);
 			        const todayTimestamp = today.getTime();

 			        let hasSchedule = false;

 			        for (let movieName in grouped) {
 			            const todaySchedules = grouped[movieName].schedules.filter(sch => {
 			                const schDate = new Date(sch.screen_date);
 			                schDate.setHours(0, 0, 0, 0);
 			                return schDate.getTime() === todayTimestamp;
 			            });

 			            //오늘 스케줄 있으면 영화 정보, 날짜, 상영관 출력
 			            if (todaySchedules.length > 0) {
 			                hasSchedule = true;
 			                let movieBlock = "<li style='margin-bottom:30px; list-style:none; border:1px solid #ddd; padding:15px; border-radius:8px;'>";
 			                movieBlock += "<div style='display:flex; align-items:center; margin-bottom:10px;'>";
 			                movieBlock += "<img src='" + grouped[movieName].poster_url + "' style='width:120px; height:auto; margin-right:20px;'>";
 			                movieBlock += "<h2 style='margin:0; text-decoration: none;'>" + movieName + "</h2>";
 			                movieBlock += "</div>";
 			                movieBlock += "<table style='width:100%; border-collapse:collapse;'>";
 			               // movieBlock += "<tr style='background:#f5f5f5;'><th style='padding:8px; border:1px solid #ddd;'>날짜</th><th style='padding:8px; border:1px solid #ddd;'>시작 ~ 종료</th><th style='padding:8px; border:1px solid #ddd;'>상영관</th></tr>";

//  			                todaySchedules.forEach(sch => {
//  			                    const dateObj = new Date(sch.screen_date);
//  			                    const formattedDate = dateObj.toLocaleDateString('ko-KR');
//  			                    const startTime = new Date(sch.screen_start_time).toTimeString().substring(0, 5);
//  			                    const endTime = new Date(sch.screen_end_time).toTimeString().substring(0, 5);

//  			                    movieBlock += "<tr>";
//  			                    movieBlock += "<td style='padding:8px; border:1px solid #ddd;'>" + formattedDate + "</td>";
//  			                    movieBlock += "<td style='padding:8px; border:1px solid #ddd;'>" + startTime + " ~ " + endTime + "</td>";
//  			                    movieBlock += "<td style='padding:8px; border:1px solid #ddd;'>" + sch.room_name + "</td>";
//  			                    movieBlock += "</tr>";
//  			                });

//  			                movieBlock += "</table></li>";
//  			                $('.movie').append(movieBlock);
								// 상영관별 그룹화
								const schedulesByRoom = {};
								todaySchedules.forEach(sch => {
								    if (!schedulesByRoom[sch.room_name]) {
								        schedulesByRoom[sch.room_name] = [];
								    }
								    schedulesByRoom[sch.room_name].push(sch);
								});
								
								
								// 상영관별 출력
								for (let roomName in schedulesByRoom) {
								    movieBlock += "<h2 style='margin-top:15px;'>" + roomName + "</h2><div style='margin-bottom:10px;'>";
								
								    schedulesByRoom[roomName].forEach(sch => {
								    	
								    	//const formatted = 
							    	          //String(dateObj.getHours()).padStart(2, '0') + ':' + 
							    	          //String(dateObj.getMinutes()).padStart(2, '0');
								    	
								    		// 시간 포맷 변환
								    	    const dateObj2 = new Date(sch.screen_start_time);
											const hours = String(dateObj2.getHours()).padStart(2, '0');
											const minutes = String(dateObj2.getMinutes()).padStart(2, '0');
											const startTime = hours + ':' + minutes;
											console.log(hours);
								    	    console.log(minutes);
								    	    console.log(startTime);
											
								    	    const endTime = new Date(sch.screen_end_time).toTimeString().substring(0, 5);
								    	   
								    		 // 날짜 포맷 변환
								    	    const dateObj = new Date(Number(sch.screen_date));  // 숫자 타입이니까 Number() 처리
								    	    const year = dateObj.getFullYear();
								    	    const month = String(dateObj.getMonth() + 1).padStart(2, '0');
								    	    const day = String(dateObj.getDate()).padStart(2, '0');
								    	    const formattedDate = year + '-' + month + '-' + day;
								    	    //디버깅용
								    	    console.log(year);
								    	    console.log(month);
								    	    console.log(day);
								    	    console.log(formattedDate);
								    	    
								    	    movieBlock += "<span style='display:inline-block; margin-right:10px; padding:5px 10px; border:1px solid #ccc; border-radius:5px;'>"
								    	        + startTime + " ~ " + endTime + "</span>";
								    	    movieBlock += "<button onclick=\"goToBooking('"
								    	        + movieName + "','" + region + "','" + selectedName + "','" + formattedDate + "','" + startTime
								    	        + "')\">예매하기</button>";
								    });
								
								    movieBlock += "</div>";
								}

								movieBlock += "</li>";  // 영화 블록 닫기
								$('.movie').append(movieBlock);  // 영화 블록 추가
								
								
 			            }
 			         //푸터랑 간격 벌리기
						$('#footerSpacer').css('height', '1000px');
 			        }

				//오늘 스케줄 없으면 상영 스케줄이 없습니다 내용 출력
 			    } else {
 			        $('.movie').append("<li>상영 스케줄이 없습니다.</li>");
 			    }
 			},
 			error: function() {
 			    alert('오류');
 			}
        }); 
 		 	
 		 	
 		 	
 		 
	
	});	//click 이벤트
  	
// })





</script>

	<div id="footerSpacer"></div>
	<%@ include file="../main/footer.jsp" %>

    </main>
    
   	   <!-- 예매 페이지로 이동할때 정보 들고가기 -->
   	   <form id="bookForm" action="${pageContext.request.contextPath}/booth/booking" method="get" style="display:none;">
		    <input type="hidden" name="movieName">
		    <input type="hidden" name="region">
		    <input type="hidden" name="theaterName">
		    <input type="hidden" name="date">
		    <input type="hidden" name="startTime">
		    <input type="hidden" name="endTime">
		</form>
  
</body>
</html>