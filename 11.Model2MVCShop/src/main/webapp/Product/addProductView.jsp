<!-- 상품등록 -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!DOCTYPE html>

<html lang="ko">

<head>
	<meta charset="EUC-KR">
	
	<!--  ///////////////////////// Bootstrap, css ////////////////////////// -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
       body > div.container{
        	border: 3px solid #D6CDB7;
            margin-top: 10px;
        }
    </style>
    
    <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
	// AddProduct시 유효성 검사 /////////////////////////////////////////////////////////
	function fncAddProduct() { 
		
		var name = $("input[name='prodName']").val();
		var detail = $("input[name='prodDetail']").val();
		var manuDate = $("input[name='manuDate']").val();
		var price = $("input[name='price']").val();
		
		if(name == null || name.length<1){
			alert("상품명은 반드시 입력하여야 합니다.");
			return;
		}
		if(detail == null || detail.length<1){
			alert("상품상세정보는 반드시 입력하여야 합니다.");
			return;
		}
		if(manuDate == null || manuDate.length<1){
			alert("제조일자는 반드시 입력하셔야 합니다.");
			return;
			 
		}
		if(price == null || price.length<1){
			alert("가격은 반드시 입력하셔야 합니다.");
			return;
		}
		
		$("form").attr("method" , "POST").attr("action" , "/product/addProduct").submit();
	}
	
		$(function() {
	
			 $( "td.ct_btn01:contains('등록')" ).on("click" , function() {
				//Debug..
				//alert(  $( "td.ct_btn01:contains('등록')" ).html() );
				fncAddProduct();
			});
		});	

	// ResetData /////////////////////////////////////////////////////////////////
	function resetData(){
		document.detailForm.reset();
	}

	// 취소
		$(function() {
			 $( "td.ct_btn01:contains('취소')" ).on("click" , function() {
				alert(  $( "td.ct_btn01:contains('취소')" ).html() );
				$("form")[0].reset();
			});
		});	
	
	
	
	</script>
	
</head>

<body>

<!-- // ToolBar Start ///////////////////////////////////////////////-->
	<div class="navbar  navbar-default">
        <div class="container">
        	<a class="navbar-brand" href="/index.jsp">11.Model2MVCShop</a>
   		</div>
   	</div>
<!-- // ToolBar End /////////////////////////////////////////////////-->

<!-- // 화면구성 div ////////////////////////////////////////////////// -->
	<div class="container">
	
		<h1 class="bg-primary text-center">상 품 등 록</h1>	

<!-- // form Start ////////////////////////////////////////////////// -->
	<form class="form-horizontal">

<!-- // 상품명입력 /////////////////////////////////////////////////////-->
	<div class="form-group">
		<label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">상 품 명</label>	
		<div class="col-sm-4">
			<input type="password" class="form-control" id="prodName" name="prodName" placeholder="상 품 명">
		</div>
 	</div>
 	
<!-- // 상품상세정보 /////////////////////////////////////////////////////-->
	<div class="form-group">
		<label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">상품상세정보</label>	
		<div class="col-sm-4">
			<input type="password" class="form-control" id="prodDetail" name="prodDetail" placeholder="상품상세정보">
		</div>
 	</div>
 	
<!-- // 제조일자 /////////////////////////////////////////////////////-->
	<div class="form-group">
		<label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">상품제조일자</label>	
		<div class="col-sm-4">
			<input type="password" class="form-control" id="manuDate" name="manuDate" placeholder="상품제조일자">
		</div>
 	</div>
 	
<!-- // 가격 /////////////////////////////////////////////////////-->
	<div class="form-group">
		<label for="price" class="col-sm-offset-1 col-sm-3 control-label">가 격</label>	
		<div class="col-sm-4">
			<input type="password" class="form-control" id="price" name="price" placeholder="가 격">
		</div>
 	</div>
 	
<!-- // 상품이미지 /////////////////////////////////////////////////////-->
	<div class="form-group">
		<label for="fileName" class="col-sm-offset-1 col-sm-3 control-label">상품이미지</label>	
		<div class="col-sm-4">
			<input type="password" class="form-control" id="fileName" name="fileName" placeholder="상품이미지">
		</div>
 	</div>

<table width="100%" height="37" border="0" cellpadding="0"	cellspacing="0">
	<tr>
		<td width="15" height="37">
			<img src="/images/ct_ttl_img01.gif" width="15" height="37"/>
		</td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="93%" class="ct_ttl01">상품등록</td>
					<td width="20%" align="right">&nbsp;</td>
				</tr>
			</table>
		</td>
		<td width="12" height="37">
			<img src="/images/ct_ttl_img03.gif"	width="12" height="37"/>
		</td>
	</tr>
</table>


<!-- /////////////////////////////////////////////////////////////////////////////////////////////////// -->

<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 13px;">

	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">
			상품명 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="105">
						<input type="text" name="prodName" class="ct_input_g" style="width: 100px; height: 19px" maxLength="20">
					</td>
				</tr>
			</table>
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	
<!-- /////////////////////////////////////////////////////////////////////////////////////////////////// -->

	
	<tr>
		<td width="104" class="ct_write">
			상품상세정보 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="prodDetail" class="ct_input_g" 
						style="width: 100px; height: 19px" maxLength="10" minLength="6"/>
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	
<!-- /////////////////////////////////////////////////////////////////////////////////////////////////// -->

	
	<tr>
		<td width="104" class="ct_write">
			제조일자 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="manuDate" readonly="readonly" class="ct_input_g" style="width: 100px; height: 19px"	maxLength="10" minLength="6"/>&nbsp;
			<img src="../images/ct_icon_date.gif" width="15" height="15" onclick="show_calendar('document.detailForm.manuDate', document.detailForm.manuDate.value)"/>
			<!-- $("form[name='detailForm']") -->
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	
<!-- /////////////////////////////////////////////////////////////////////////////////////////////////// -->
	
	
	<tr>
		<td width="104" class="ct_write">
			가격 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="price" class="ct_input_g" 
						style="width: 100px; height: 19px" maxLength="10">&nbsp;원
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	
<!-- /////////////////////////////////////////////////////////////////////////////////////////////////// -->
	
	
	<tr>
		<td width="104" class="ct_write">상품이미지</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input		type="text" name="fileName" class="ct_input_g" 
							style="width: 200px; height: 19px" maxLength="13"/>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	

<!-- /////////////////////////////////////////////////////////////////////////////////////////////////// -->


</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 10px;">
	<tr>
		<td width="53%"></td>
		<td align="right">
		<table border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="17" height="23">
					<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
				</td>
				<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top: 3px;">
					등록
				</td>
				<td width="14" height="23">
					<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
				</td>
				<td width="30"></td>
				<td width="17" height="23">
					<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
				</td>
				<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top: 3px;">
					취소
				</td>
				<td width="14" height="23">
					<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>

</form>
</body>
</html>