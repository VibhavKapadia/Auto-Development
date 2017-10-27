<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="list" value="${sessionScope.stateList}"></c:set>
<c:set var="len" value="${fn:length(list)}"></c:set>

[
	<c:forEach var="i" items="${sessionScope.stateList}" varStatus="j">
		{"stateId":"${i.stateId}","stateName":"${i.stateName}"}
		<c:if test="${len ne j.count}">,</c:if>
	</c:forEach>
]