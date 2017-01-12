<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
     <div class="list-group">
     	<c:forEach var="category" items="${categories}">
	     	<c:choose>
	     		<c:when test="${chosenCategory == category.id}">
	     			<a href="getBooksByCategory?id=${category.id}" class="list-group-item" style="color:black; background-color:grey;">${category.name}</a>
	     		</c:when>
	     		<c:otherwise>
	     			<a href="getBooksByCategory?id=${category.id}" class="list-group-item" style="color:black;">${category.name}</a>
	     		</c:otherwise>
	     	</c:choose>
     	</c:forEach>
     </div>
</div>