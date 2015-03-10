<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<c:set var="userName"><s:property value="userName"/></c:set>
<c:if test="${empty userName}">
  <c:set var="userName">Admin</c:set>
</c:if>

<div class="main">
  <div class="intro-header chat">
    <div class="row">
      <div class="col-xs-10 col-xs-offset-1">
        <div class="chat-container-iframe">
          <iframe src="http://localhost:3000/?username=${userName}"></iframe>
        </div>
      </div>
    </div>
  </div>
</div>

<c:remove var="userName" scope="page"/>

<style type="text/css">
  .chat-container-iframe {
    position: relative;
    padding-bottom: 56.25%;
    padding-top: 30px;
    height: 0;
    overflow: hidden;
    background-color: transparent;
  }

  .chat-container-iframe iframe,
  .chat-container-iframe object,
  .chat-container-iframe embed {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 350px;
  }
</style>
