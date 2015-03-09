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
            <form class="userInfo" action="startChatApplication" method="post">
              <input type="hidden" name="ipAddress" value=""/>
              <input type="hidden" name="longitude" value=""/>
              <input type="hidden" name="latitude" value=""/>

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