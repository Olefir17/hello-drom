<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp"%>

<div class="posts">
    <c:forEach items="${items}" var="item">
    <div class="post">
        <div class="post-title"><a href="<c:out value="${item.link}" />" target="_blank">${item.title}</a></div>
        <div class="post-date">${item.publishedDate}</div>
        <div class="post-images">
            <ul class="bxslider">
                <!--li><img src="banner.jpg"></li-->
            </ul>
        </div>
        <div class="post-text">${item.description}</div>
        <!--div class="post-text-hidden"></div>
        <div class="post-more">Read more</div-->
    </div>
    </c:forEach>
</div>

<table class="table table-bordered table-hover table-striped">

    <tbody>
    <c:forEach items="${items}" var="item">
        <tr>
            <td>
                <c:out value="${item.publishedDate}" />
                <br />
                <c:out value="${item.blog.name}" />
            </td>
            <td>
                <strong>
                    <a href="<c:out value="${item.link}" />" target="_blank">
                        <c:out value="${item.title}" />
                    </a>
                </strong>
                <br />
                    ${item.description}
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
