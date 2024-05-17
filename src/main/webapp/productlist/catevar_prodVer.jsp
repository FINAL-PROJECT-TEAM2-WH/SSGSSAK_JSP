<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--     catevar -->
<div id="location" class="cate_location notranslate">
	<div class="lo_depth_01">
		<a href="/" class="lo_menu">SSG.COM</a> <span class="lo_line">/</span>
	</div>

	<div class="lo_depth_01">
		<a
			href="/SSGSSAK/productlist/productList.do?categoryId=${crtCateDto.id}&currentPage=1"
			class="lo_menu lo_arr">${crtCateDto.middleCateName}</a>
		<div id="lo_menu01" class="lo_depth_02 n2">
			<ul>
				<%--                         <li class="msa_data"><a href="/SSGSSAK/productlist/productList.do?categoryId=${scDto.id}&currentPage=1" class="clickable ">${scDto.id}</a></li> --%>
				<c:forEach items="${selectCate.mdcDtoList}" var="mdcDto">
					<li class="msa_data"><a
						href="/SSGSSAK/productlist/productList.do?categoryId=${mdcDto.id}&currentPage=1"
						class="clickable ">${mdcDto.middleCateName}</a></li>
				</c:forEach>
				<!--                     현재 카테고리에 해당하면 클래스 뒤에 active 붙도록 js처리해야함 -->
			</ul>
		</div>
		<span class="lo_line">/</span>
	</div>


	<div class="lo_depth_01">
		<a
			href="/SSGSSAK/productlist/productList.do?categoryId=${crtCateDto.id}&currentPage=1"
			class="lo_menu lo_arr">${crtCateDto.subCateName}</a>
		<div id="lo_menu02" class="lo_depth_02 n2">
			<ul>
				<!--                     현재 카테고리에 해당하면 클래스 뒤에 active 붙도록 js처리해야함 -->
				<c:forEach items="${selectCate.scDtoList}" var="scDto">
					<li class="msa_data"><a
						href="/SSGSSAK/productlist/productList.do?categoryId=${scDto.id}&currentPage=1"
						class="clickable ">${scDto.subCateName}</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>


	<div class="lo_depth_01">
		<a
			href="/SSGSSAK/productlist/productList.do?categoryId=${crtCateDto.id}&currentPage=1"
			class="lo_menu lo_arr">${crtCateDto.miniCateName}</a>
		<div id="lo_menu03" class="lo_depth_02 n2">
			<ul>
				<c:forEach items="${selectCate.mncDtoList}" var="mnDto">
					<li class="msa_data"><a
						href="/SSGSSAK/productlist/productList.do?categoryId=${mnDto.id}&currentPage=1"
						class="clickable ">${mnDto.miniCateName}</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>