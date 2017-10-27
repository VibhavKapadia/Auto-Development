<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="list" value="${sessionScope.cityList}"></c:set>
<c:set var="len" value="${fn:length(list)}"></c:set>

[
<c:forEach var="i" items="${sessionScope.cityList}" varStatus="j">
		{"cityId":"${i.cityId}","cityName":"${i.cityName}"}
		<c:if test="${len ne j.count}">,</c:if>
</c:forEach>
]
