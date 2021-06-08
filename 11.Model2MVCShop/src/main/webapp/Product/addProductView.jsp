<!-- ��ǰ��� -->
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
	
	// AddProduct�� ��ȿ�� �˻� /////////////////////////////////////////////////////////
	function fncAddProduct() { 
		
		var name = $("input[name='prodName']").val();
		var detail = $("input[name='prodDetail']").val();
		var manuDate = $("input[name='manuDate']").val();
		var price = $("input[name='price']").val();
		
		if(name == null || name.length<1){
			alert("��ǰ���� �ݵ�� �Է��Ͽ��� �մϴ�.");
			return;
		}
		if(detail == null || detail.length<1){
			alert("��ǰ�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
			return;
		}
		if(manuDate == null || manuDate.length<1){
			alert("�������ڴ� �ݵ�� �Է��ϼž� �մϴ�.");
			return;
			 
		}
		if(price == null || price.length<1){
			alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
			return;
		}
		
		$("form").attr("method" , "POST").attr("action" , "/product/addProduct").submit();
	}
	
		$(function() {
	
			 $( "td.ct_btn01:contains('���')" ).on("click" , function() {
				//Debug..
				//alert(  $( "td.ct_btn01:contains('���')" ).html() );
				fncAddProduct();
			});
		});	

	// ResetData /////////////////////////////////////////////////////////////////
	function resetData(){
		document.detailForm.reset();
	}

	// ���
		$(function() {
			 $( "td.ct_btn01:contains('���')" ).on("click" , function() {
				alert(  $( "td.ct_btn01:contains('���')" ).html() );
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

<!-- // ȭ�鱸�� div ////////////////////////////////////////////////// -->
	<div class="container">
	
		<h1 class="bg-primary text-center">�� ǰ �� ��</h1>	

<!-- // form Start ////////////////////////////////////////////////// -->
	<form class="form-horizontal">

<!-- // ��ǰ���Է� /////////////////////////////////////////////////////-->
	<div class="form-group">
		<label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">�� ǰ ��</label>	
		<div class="col-sm-4">
			<input type="password" class="form-control" id="prodName" name="prodName" placeholder="�� ǰ ��">
		</div>
 	</div>
 	
<!-- // ��ǰ������ /////////////////////////////////////////////////////-->
	<div class="form-group">
		<label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">��ǰ������</label>	
		<div class="col-sm-4">
			<input type="password" class="form-control" id="prodDetail" name="prodDetail" placeholder="��ǰ������">
		</div>
 	</div>
 	
<!-- // �������� /////////////////////////////////////////////////////-->
	<div class="form-group">
		<label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">��ǰ��������</label>	
		<div class="col-sm-4">
			<input type="password" class="form-control" id="manuDate" name="manuDate" placeholder="��ǰ��������">
		</div>
 	</div>
 	
<!-- // ���� /////////////////////////////////////////////////////-->
	<div class="form-group">
		<label for="price" class="col-sm-offset-1 col-sm-3 control-label">�� ��</label>	
		<div class="col-sm-4">
			<input type="password" class="form-control" id="price" name="price" placeholder="�� ��">
		</div>
 	</div>
 	
<!-- // ��ǰ�̹��� /////////////////////////////////////////////////////-->
	<div class="form-group">
		<label for="fileName" class="col-sm-offset-1 col-sm-3 control-label">��ǰ�̹���</label>	
		<div class="col-sm-4">
			<input type="password" class="form-control" id="fileName" name="fileName" placeholder="��ǰ�̹���">
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
					<td width="93%" class="ct_ttl01">��ǰ���</td>
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
			��ǰ�� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
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
			��ǰ������ <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
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
			�������� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
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
			���� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="price" class="ct_input_g" 
						style="width: 100px; height: 19px" maxLength="10">&nbsp;��
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	
<!-- /////////////////////////////////////////////////////////////////////////////////////////////////// -->
	
	
	<tr>
		<td width="104" class="ct_write">��ǰ�̹���</td>
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
					���
				</td>
				<td width="14" height="23">
					<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
				</td>
				<td width="30"></td>
				<td width="17" height="23">
					<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
				</td>
				<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top: 3px;">
					���
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