<html>
	<head>
		<title>{{title}}</title>
		<link rel="stylesheet" media="screen" href="https://toolkit.chris-shaw.com/css/toolkit.css" />
		<link rel="stylesheet" media="screen" href="/asset/github.css" />
		<script>
		var xhr = new XMLHttpRequest();
		xhr.open( "GET", "https://menu.chris-shaw.com/", true);
		xhr.onreadystatechange = function () {
			if (xhr.readyState == 4) {
				var parser = new DOMParser();
				var newDom = parser.parseFromString(xhr.responseText,"text/html");	   	
				let nav = newDom.querySelector(".c-nav");
				document.querySelector('body').prepend(nav);
			}
		}
		xhr.send( null );
		</script>
	</head>

	<body>
		<div class="o-container u-margin-top--small markdown">
			{{content}}
		</div>
	</body>
</html>
