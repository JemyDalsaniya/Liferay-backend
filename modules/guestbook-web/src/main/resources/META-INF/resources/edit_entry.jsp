<%--
  Created by IntelliJ IDEA.
  User: root321
  Date: 03/01/23
  Time: 6:51 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/init.jsp" %>

<portlet:renderURL var="viewURL">
  <portlet:param name="mvcPath" value="/view.jsp"></portlet:param>
</portlet:renderURL>

<portlet:renderURL var="viewEntryURL">
  <portlet:param name="mvcPath" value="/view.jsp"></portlet:param>
</portlet:renderURL>


<portlet:actionURL name="addEntry" var="addEntryURL"></portlet:actionURL>

<aui:form action="<%= addEntryURL %>" name="<portlet:namespace />fm">
  <aui:fieldset>
    <aui:input name="name"></aui:input>
    <aui:input name="message"></aui:input>
  </aui:fieldset>

  <aui:button-row>
    <aui:button type="submit"></aui:button>
    <aui:button type="cancel" onClick="<%= viewURL.toString() %>"></aui:button>
  </aui:button-row>

  <aui:button-row>
    <aui:button onClick="<%= viewEntryURL.toString() %>" value="View Entry"></aui:button>
  </aui:button-row>
</aui:form>


