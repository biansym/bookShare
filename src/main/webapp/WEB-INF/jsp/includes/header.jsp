	  <nav class="navbar navbar-fixed-top navbar-inverse">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="home">Book Share!</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="home">Books</a></li>
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
					<li><a href="logout" class="glyphicon glyphicon-log-in"> Logout</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="login" class="glyphicon glyphicon-log-in"> Login</a></li>
				</c:otherwise>
			</c:choose>    
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>