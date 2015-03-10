<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<div class="main">
  <a name="about"></a>

  <div class="intro-header">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="intro-message-admin">
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
            <h2>User information</h2>
            <br/>
            <div class="row user-info">
              <div class="col-lg-3">
                <h3>User name</h3>
                <h4>${userName}</h4>
              </div>
              <div class="col-lg-3">
                <h3>IP Address</h3>
                <h4>${ipAddress}</h4>
              </div>
              <div class="col-lg-6">
                <h3>Location</h3>
                <h4>Latitude: ${latitude}</h4>
                <h4>Longitude: ${longitude}</h4>
                <iframe width="300" height="170" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?q=${latitude},${longitude}&hl=es;z=14&amp;output=embed">
                </iframe>
                <br/>
                <small>
                  <a href="https://maps.google.com/maps?q='+${latitude}+','+${longitude}+'&hl=es;z=14&amp;output=embed" style="color:#0000FF;text-align:left" target="_blank">See map bigger</a>
                </small>
              </div>
            </div>
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