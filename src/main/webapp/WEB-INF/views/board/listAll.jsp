<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"  %>
<%@ page session="false" %>

<%@ include file="../include/header.jsp" %> 

<script type="text/javascript">
<!--

//-->
var result = '${msg}';
if(result == 'success'){
	alert("success OK");
}
</script>


<table class="table table-bordered">
	<tr>
		<th style="width: 10px">BNO</th>
		<th>TITLE</th>
		<th>WRITER</th>
		<th>REGDATE</th>
		<th style="width: 40px">WIEWCNT</th>
	</tr>
<c:forEach items="${list}" var="boardVO">
	<tr>
		<td>${boardVO.bno}</td>
		<td><a href="/board/read?bno=${boardVO.bno}">${boardVO.title}</a></td>
		<td>${boardVO.writer}</td>
		<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}" /></td>
		<td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
	</tr>
</c:forEach>
	
</table>

<%@ include file="../include/footer.jsp" %>