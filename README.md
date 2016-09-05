# esp8266-web-server
the smallest lua web server serving an html page with javascript

This code was developed from this helpful example page: http://www.magusporta.com/projects/ESP8266_web_server/ESP8266_web_server.html

Even though there is no internet connection on the ESP, your phone or computer typically caches the .js files so it seems to work; such as, ...script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"


<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

</head>
<body>

<div data-role="page">
  <div data-role="header">
    <h1>Slider Control</h1>
  </div>

  <div data-role="main" class="ui-content">
    <form method="post" action="demoform.asp">
      <label for="points">Points:</label>
      <input type="range" name="points" id="points" value="50" min="0" max="100">
      <input type="submit" data-inline="true" value="Submit">
    </form>
  </div>
</div>

</body>
</html>
