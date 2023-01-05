<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 헤더 -->	
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/css.jsp" %>
<script type="text/javascript">
	
	$(function(){
		 $("button[name='button']").click(function(){
		        var kind = $(this).val();       //버튼이 클릭 되었을 시, 개별 버튼의 값이 kind 변수에 담겨집니다.
		        $.ajax({
		            url : "/good/list/"+kind,
		            type : "get",
		            contentType:"application/json; charset:UTF-8",
		            success : function(data){
		                $('#auctions').empty(); // 성공 시, body부분에 data라는 html 문장들을 다 적용시킵니다.
		                $(data).each(function(index,item) {
		                $('#auctions').append("<div class='col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women' style='position: absolute; left: 0%; top: 0px;'>"
						+"<div class='block2'>"
						+"<div class='block2-pic hov-img0'>"
						+"<img src='/resources/images/product-15.jpg' alt='IMG-PRODUCT'>"
						+"</div>"
						+"<div class='block2-txt flex-w flex-t p-t-14'>"
						+"<div class='block2-txt-child1 flex-col-l'>"
						+"<a href='/auction/a_read?auction_no=${avo.auction_no }&user_no=${avo.user_no}' class='stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6'>"
						+"${avo.auction_title }"
						+"</a>"
						+"<span class='stext-105 cl3'>"
						+"현재 <fmt:formatNumber value='${avo.auction_bid }'/>원"
						+"</span>"
						+"<span class='stext-105 cl3'>"
						+getDate('${avo.auction_cdate.toString().substring(0,10)}','${avo.auction_date.toString().substring(0,10)}')
						+"</span>"
						+"</div>"
						+"<div class='block2-txt-child2 flex-r p-t-3'>"
						+"<a href='#' class='btn-addwish-b2 dis-block pos-relative js-addwish-b2'>"
						+"<img class='icon-heart1 dis-block trans-04' src='/resources/images/icons/icon-heart-01.png' alt='ICON'>"
						+"<img class='icon-heart2 dis-block trans-04 ab-t-l' src='/resources/images/icons/icon-heart-02.png' alt='ICON'>"
						+"</a>"
						+"</div>"
						+"</div>"
						+"</div>"
					+"</div>");
		                });
		            },
		            error : function(data){
		                alert('error');
		            }//error
		        })//ajax
		    });
		
	});
	
	function getDate(x,y) {
		var date1 = new Date(x).getTime();
		var date2 = new Date(y).getTime();
		
		return ("남은 "+(date1-date2)/(1000*60*60*24)+"일");
	}
	
</script>

</head>
<body>
<br><br><br><br><br><br>
	

<section class="bg0 p-t-75 p-b-120" style="align-content:center;">	
	<div class="container">
	<div class="flex-w flex-sb-m p-b-52">
		<div class="flex-w flex-l-m filter-tope-group m-tb-10">
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1"
						    data-filter="*" name="button" value="all">All</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						    data-filter=".machine" name="button" value="machine">전자기기</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						    data-filter=".beauty" name="button" value="beauty">의류/뷰티/잡화</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						    data-filter=".kitchen" name="button" value="kitchen">생활가전/주방</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						    data-filter=".interior" name="button" value="interior">인테리어/가구</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						    data-filter=".book" name="button" value="book">도서/티켓/교환권</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						    data-filter=".food" name="button" value="food">식품</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						    data-filter=".etc" name="button" value="etc">기타 중고물품</button>
		</div>
	
		<div class="flex-w flex-c-m m-tb-10">
			<div class="col ml-2 pr-2">
                <select class="form-select form-select-sm border-0 text-muted" v-model.number="filter" @change="updateList">
                    <option value="0" v-if="${addressCount}">전체</option>
                    <option value="1">주소1</option>
                    <option value="2" v-if="${addressCount}">주소2</option>
                </select>
            </div>
            <div class="col pl-0 mr-5">
                <select class="form-select form-select-sm border-0 text-muted" v-model.number="sort" @change="updateList">
                    <option value="0">최신 등록순</option>
                    <option value="1">입찰가&#8593;순</option>
                    <option value="2">입찰가&#8595;순</option>
                    <option value="3">마감 임박순</option>
                    <option value="4">우수 판매자순</option>
                </select>
            </div>
	
			<div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
				<i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
				<i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
				Search
			</div>
		</div>
		
		<!-- Search product -->
		<div class="dis-none panel-search w-full p-t-10 p-b-15">
			<div class="bor8 dis-flex p-l-15">
				<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
					<i class="zmdi zmdi-search"></i>
				</button>
	
				<input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="search-product" placeholder="Search">
			</div>	
		</div>
	</div>
	
	<div id="auctions" class="row isotope-grid" style="position: relative; height: 4141.62px;">
				<c:forEach var="avo" items="${auctionList }">
					<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women" style="position: absolute; left: 0%; top: 0px;">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="/resources/images/product-15.jpg" alt="IMG-PRODUCT">
							</div>
	
							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="/auction/a_read?auction_no=${avo.auction_no }&user_no=${avo.user_no}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										${avo.auction_title }
									</a>
	
									<span class="stext-105 cl3">
										현재 <fmt:formatNumber value="${avo.auction_bid }"/>원
									</span>
									<span class="stext-105 cl3">
										 <script>getDate('${avo.auction_cdate.toString().substring(0,10)}','${avo.auction_date.toString().substring(0,10)}');</script>
									</span>
								</div>
								
	
								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="/resources/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="/resources/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>
	
				  </c:forEach>
				</div>
	</div>	
</section>
			
	<script type="text/javascript">
		var result = '${result}';
		if(result == 'creatOK') {
			alert("상품등록완료");
		}
	</script>
	
			
<br><br><br><br><br><br>
<!--   푸터 -->
<%@ include file="../include/footer.jsp" %>			
</body>
</html>