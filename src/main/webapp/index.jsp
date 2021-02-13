<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
        <head>
                <title>Java Demo示例</title>
                <link rel="stylesheet" href="js/bootstrap.min.css">
                <script src="js/jquery.slim.min.js"></script>
                <script src="js/popper.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
                <style>
			/*


/*
 * Base structure
 */

html,
body {
  height: 100%;
  background: url(images/bg.png) repeat;
  background-size: 376px;
  position: relative;
  overflow: hidden;
}

.boat{
	background: url(images/boat.png) no-repeat;
    background-size: 220px;
    height: 169px;
    width:219px;
    left:-219px;
    bottom: 6em;
    position: absolute;
}

.water{
	background: #63b0e0;
	height: 6em;	
	position: absolute;
    width: 100%;
    bottom: 0;
}

.pattern-waves {
	  background: url(images/pattern-waves.png) 0 0 repeat-x;
    background-size: 20px;
    bottom: 6em;
    content: "";
    display: block;
    height: 6px;
    position: absolute;
    width: 100%;
}


body {
  display: -ms-flexbox;
  display: -webkit-box;
  display: flex;
  -ms-flex-pack: center;
  -webkit-box-pack: center;
  justify-content: center;
  color: #3fb1e5;
}

.cover-container {
  max-width: 42em;
}


/*
 * Header
 */
.masthead {
  margin-bottom: 2rem;
}

.masthead-brand {
  margin-bottom: 0;
}

.nav-masthead .nav-link {
  padding: .25rem 0;
  font-weight: 700;
  color: rgba(255, 255, 255, .5);
  background-color: transparent;
  border-bottom: .25rem solid transparent;
}

.nav-masthead .nav-link:hover,
.nav-masthead .nav-link:focus {
  border-bottom-color: rgba(255, 255, 255, .25);
}

.nav-masthead .nav-link + .nav-link {
  margin-left: 1rem;
}

.nav-masthead .active {
  color: #fff;
  border-bottom-color: #fff;
}

@media (min-width: 48em) {
  .masthead-brand {
    float: left;
  }
  .nav-masthead {
    float: right;
  }
}


/*
 * Cover
 */
.cover {
  padding: 0 1.5rem;
}
.cover .btn-lg {
  padding: .75rem 1.25rem;
  font-weight: 700;
}

.cover .lead {
	color: #27759a;
}


/*
 * Footer
 */
.mastfoot {
  color: rgba(255, 255, 255, .5);
}
		</style>
	</head>
	<body class="text-center">

    <div class="cover-container d-flex h-100 p-3 mx-auto flex-column">
      <header class="masthead mb-auto">
        <div class="inner">
          <h3 class="masthead-brand"></h3>
          <nav class="nav nav-masthead justify-content-center"></nav>
        </div>
      </header>

      <main role="main" class="inner cover">
        <h1 class="cover-heading">容器服务</h1>
        <p class="lead">提供高性能可伸缩的容器应用管理服务，支持用Docker和Kubernetes进行容器化应用的生命周期管理，提供多种应用发布方式和持续交付能力并支持微服务架构。</p>
        <p class="lead">
          
        </p>
      </main>

      <footer class="mastfoot mt-auto">
        <div class="inner">
          <p></p>
        </div>
      </footer>
    </div>
    <div id="boat" class="boat"></div>
    <div class="pattern-waves"></div>
    <div class="water"></div>
  </body>

  <script type="text/javascript">
  	var width = $(window).width(); 
  	var left = -219;
  	var delta = width/2000;
  	var animate = setInterval(function(){
  		left += delta;
  		if(left >= width) left = -219;
  		$("#boat").css({"left": left+"px"});
  	}, 5);
  </script>
</html>
