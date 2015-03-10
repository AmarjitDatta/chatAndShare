<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="main">
  <a name="about"></a>

  <div class="intro-header">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="intro-message">
            <h1>Chat And Share</h1>

            <h3>Start chatting and share your problems</h3>
            <hr class="intro-divider">
            <form class="userInfo" action="startChatApplication" method="post" onsubmit="">
              <input id="ipAddress" type="hidden" name="ipAddress" value=""/>
              <input id="longitude" type="hidden" name="longitude" value=""/>
              <input id="latitude" type="hidden" name="latitude" value=""/>

              <label for="userName">Please enter your name</label><br/>
              <input class="userName" type="text" name="userName"/>
              <input class="btn btn-info" type="submit" value="Start Chatting"/>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
  function getLocation() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(setGeoPosition);
    } else {
      $('input#latitude').val("not allowed");
      $('input#longitude').val("not allowed");
    }
  }
  function setGeoPosition(position) {
    $('input#latitude').val(position.coords.latitude);
    $('input#longitude').val(position.coords.longitude);
  }
  $( document ).ready(function() {
    $.get("http://ipinfo.io", function(response) {
      $('input#ipAddress').val(response.ip);
    }, "jsonp");

    getLocation();
  });
</script>
