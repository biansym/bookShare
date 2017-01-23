<nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
    <div class="container-fluid dropdown" id="navfluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigationbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="home">Book Share!</a>
        </div>
        <div id="navigationbar" class="collapse navbar-collapse">

            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Books<b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="home" >All books</a></li>
                    <li class="divider"></li>
                    <li class="dropdown dropdown-submenu"><a class="dropdown-toggle" data-toggle="dropdown">by Category</a>
                      <ul class="dropdown-menu" >
                        <c:forEach var="category" items="${categories}">
                            <a href="getBooksByCategory?id=${category.id}" class="list-group-item">${category.name}</a>
                        </c:forEach>
                      </ul>
                    </li>
                  </ul>
                </li>


                <li><a href="about">About</a></li>
                <c:if test="${!empty sessionScope.logged_user}">
                    <li><a href="mybooks">My books</a></li>
                </c:if>
                <c:if test="${!empty sessionScope.logged_user}">
                    <li><a href="requestedbooks">Get book</a></li>
                </c:if>
                <c:if test="${!empty sessionScope.logged_user}">
                    <li><a href="getsharedbooks">Share book</a></li>
                </c:if>
                <c:if test="${!empty sessionScope.logged_user}">
                    <li><a href="profile?username=${sessionScope.logged_user}" style="color:blue">${sessionScope.logged_user}</a></li>
                </c:if>
                <c:choose>
                    <c:when test="${!empty sessionScope.logged_user}">
                        <li><a href="logout" class="glyphicon glyphicon-log-out"></a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="login" class="glyphicon glyphicon-log-in"> Login</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</nav>




<script>
(function($){
	$(document).ready(function(){
		$('ul.dropdown-menu [data-toggle=dropdown]').on('click', function(event) {
			event.preventDefault();
			event.stopPropagation();
			$(this).parent().siblings().removeClass('open');
			$(this).parent().toggleClass('open');
		});
	});
})(jQuery);
</script>



<style>
.dropdown-menu > li.kopie > a {
    padding-left:5px;
}

.dropdown-submenu>.dropdown-menu {
   top:0;left:100%;
   margin-top:-6px;margin-left:-1px;
   -webkit-border-radius:0 6px 6px 6px;-moz-border-radius:0 6px 6px 6px;border-radius:0 6px 6px 6px;
 }

.dropdown-submenu > a:after {
  border-color: transparent transparent transparent #333;
  border-style: solid;
  border-width: 5px 0 5px 5px;
  content: " ";
  display: block;
  float: right;
  height: 0;
  margin-right: -10px;
  margin-top: 5px;
  width: 0;
}
</style>