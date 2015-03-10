<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<div class="main">
  <a name="about"></a>

  <div class="intro-header">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="intro-message">
            <h1>Check a user detail</h1>

            <hr class="intro-divider">
            <form class="userInfo" action="getUserInformation" method="post" onsubmit="">
              <label for="userName">Please enter username</label><br/>
              <input class="userName" type="text" name="userName"/>
              <input class="btn btn-info" type="submit" value="Find"/>
            </form>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <c:set var="userName"><s:property value="userName"/></c:set>
          <c:set var="ipAddress"><s:property value="ipAddress"/></c:set>
          <c:set var="latitude"><s:property value="latitude"/></c:set>
          <c:set var="longitude"><s:property value="longitude"/></c:set>

          <c:if test="${not empty userName or not empty ipAddress or not empty latitude or not empty longitude}">
            User information:<br/>
            <ui>
              <li>Username: ${userName}</li>
              <li>ipAddress: ${ipAddress}</li>
              <li>latitude: ${latitude}</li>
              <li>longitude: ${longitude}</li>
            </ui>
          </c:if>

          <c:remove var="userName" scope="page"/>
          <c:remove var="ipAddress" scope="page"/>
          <c:remove var="latitude" scope="page"/>
          <c:remove var="longitude" scope="page"/>
        </div>
      </div>
    </div>
  </div>
</div>