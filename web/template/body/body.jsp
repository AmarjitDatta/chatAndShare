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
            <ul class="list-inline intro-social-buttons">
              <li>
                <a href="chat" class="btn btn-default btn-lg"><i
                    class="fa chat"></i> <span class="network-name">Start Chat</span></a>
              </li>
            </ul>
            <form action="saveUserInformation">
              <label for="userName">Please enter your name</label><br/>
              <input type="text" name="userName"/>
              <input type="submit" value="Start Chatting"/>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>