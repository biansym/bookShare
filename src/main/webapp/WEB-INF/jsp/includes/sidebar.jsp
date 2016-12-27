<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
     <div class="list-group">
     	<c:forEach var="category" items="${categories}">
     		<a href="#" class="list-group-item">${category.name}</a>
     	</c:forEach>
     </div>
</div>