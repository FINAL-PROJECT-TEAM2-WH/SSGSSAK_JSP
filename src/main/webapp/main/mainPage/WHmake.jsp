<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="hidden" name="titleBannerExist" value="true">
<input type="hidden" name="titleBannerMainTitleExist" value="true">
<input type="hidden" name="itemsExist" value="true">
<div class="cmmain_sec_oneday" data-react-tarea-cd="00052_000000748">
        <div class="cmmain_heading">
            <h2 class="cmmain_heading_tit">의류</h2>
            </div>
  <c:forEach items="${productList}" var="vo" varStatus="loop">
    <c:if test="${loop.index < productList.size()}">
                
                    <li class="cunit_t232">
<div class="cunit_prod ">
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="?" target="_self"  class="clickable"
             data-info="1000337473259" data-index="1" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg" src="https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=232&h=232&t=9ba4c0524addb9b9ec561d5523b3baf3f90ae796'" class="i1" width="232" height="232" alt="마우스 올리기 전의 이미지"  loading="lazy">
            <img srcset="https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg" src="https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=232&h=232&t=9ba4c0524addb9b9ec561d5523b3baf3f90ae796'" class="i2" width="232" height="232" alt="마우스 올린 후의 이미지" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_coupon"><span class="blind">쿠폰포함</span>100<em class="per">%</em></span>
            </div>
		</a>
		
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="?" class="blank clickable"  target="_blank"
                    data-info="1000337473259" data-index="1" data-position="pop" data-unit="img"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000337473259" data-idx="1" data-position="cart" data-unit="img" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000337473259&siteNo=6004&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000337473259","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6004","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6004">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000337473259">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="상품이름">
                <input type="hidden" name="notiImgPath" value="https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                
                
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea-dtl-cd="t00003" >
                    <span class="cmlike_ico">
                        <i class="cmlike_primary_s"></i>
                        <span class="sr_off"><span class="blind">관심상품 취소</span></span>
                        <span class="sr_on"><span class="blind">관심상품 등록</span></span>
                    </span>
                </button>
            </span>
        </div>
    </div>
</div>
    </div><div class="cunit_info">
    <div class="cunit_tp">
        <span class="cm_mall_ic ty_rect_s notranslate">
    <!-- ssg 푸드마켓  -->
        </span>
<div class="dp_dv">

    <!-- 선물포장 -->
    <!-- 신선보장 -->
    <!-- 품질보장 -->
    <!-- SSG설치 -->
    </div>
</div>
    <div class="cunit_md notranslate">
        <div class="title">
        <strong class="brd">
                <em class="tx_ko">${productList[loop.index].brandName}</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000337473259&siteNo=6004&salestrNo=6005" target="_self"  class="clickable" 
            data-info="1000337473259" data-index="1" data-position="view" data-unit="img">
                <em class="tx_ko">${productList[loop.index].PDname}</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">${productList[loop.index].sprice}</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦1)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">${productList[loop.index].optionPrice }</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>${productList[loop.index].optionPrice}</dd>
                            </dl>
                    <dl class="dis">
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>${productList[loop.index].sprice} </dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:96.0%"><span class="blind">별점 1.12점</span></span>
            </div>
            <span class="rate_tx">(<em>리뷰갯수</em>~개)</span>
        </div>
    </div>
    <div class="cunit_bene">
        <div class="spt_deiv">
            <div class="tx_deiv">
                    </div>
            </div>
        </div>
    </div>
</li>

<!--                 상품 두번째자리 끝 -->
    </c:if>
</c:forEach>
        <div class="cmmain_more" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text=''>
                <a href="의류 페이지 이동" class="cmmain_more_btn btn_moreview clickable" data-react-tarea-dtl-cd="t00026">매장 바로가기</a>
            </div>
        </div>
        
        
        
                <!-- 식품 -->
<input type="hidden" name="titleBannerExist" value="true">
<input type="hidden" name="titleBannerMainTitleExist" value="true">
<input type="hidden" name="itemsExist" value="true">
<div class="cmmain_sec_oneday" data-react-tarea-cd="00052_000000748">
        <div class="cmmain_heading">
            <h2 class="cmmain_heading_tit">식품</h2>
            </div>
       <c:forEach items="${productList}" var="vo" varStatus="loop">
    <c:if test="${loop.index < productList.size()}">
                
                    <li class="cunit_t232">
<div class="cunit_prod ">
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="?" target="_self"  class="clickable"
             data-info="1000337473259" data-index="1" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg" src="https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=232&h=232&t=9ba4c0524addb9b9ec561d5523b3baf3f90ae796'" class="i1" width="232" height="232" alt="마우스 올리기 전의 이미지"  loading="lazy">
            <img srcset="https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg" src="https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=232&h=232&t=9ba4c0524addb9b9ec561d5523b3baf3f90ae796'" class="i2" width="232" height="232" alt="마우스 올린 후의 이미지" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_coupon"><span class="blind">쿠폰포함</span>100<em class="per">%</em></span>
            </div>
		</a>
		
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="?" class="blank clickable"  target="_blank"
                    data-info="1000337473259" data-index="1" data-position="pop" data-unit="img"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000337473259" data-idx="1" data-position="cart" data-unit="img" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000337473259&siteNo=6004&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000337473259","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6004","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6004">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000337473259">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="상품이름">
                <input type="hidden" name="notiImgPath" value="https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                
                
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea-dtl-cd="t00003" >
                    <span class="cmlike_ico">
                        <i class="cmlike_primary_s"></i>
                        <span class="sr_off"><span class="blind">관심상품 취소</span></span>
                        <span class="sr_on"><span class="blind">관심상품 등록</span></span>
                    </span>
                </button>
            </span>
        </div>
    </div>
</div>
    </div><div class="cunit_info">
    <div class="cunit_tp">
        <span class="cm_mall_ic ty_rect_s notranslate">
    <!-- ssg 푸드마켓  -->
        </span>
<div class="dp_dv">

    <!-- 선물포장 -->
    <!-- 신선보장 -->
    <!-- 품질보장 -->
    <!-- SSG설치 -->
    </div>
</div>
    <div class="cunit_md notranslate">
        <div class="title">
        <strong class="brd">
                <em class="tx_ko">${productList[loop.index].brandName}</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000337473259&siteNo=6004&salestrNo=6005" target="_self"  class="clickable" 
            data-info="1000337473259" data-index="1" data-position="view" data-unit="img">
                <em class="tx_ko">${productList[loop.index].PDname}</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">${productList[loop.index].sprice}</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦1)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">${productList[loop.index].optionPrice }</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>${productList[loop.index].optionPrice}</dd>
                            </dl>
                    <dl class="dis">
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>${productList[loop.index].sprice} </dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:96.0%"><span class="blind">별점 1.12점</span></span>
            </div>
            <span class="rate_tx">(<em>리뷰갯수</em>~개)</span>
        </div>
    </div>
    <div class="cunit_bene">
        <div class="spt_deiv">
            <div class="tx_deiv">
                    </div>
            </div>
        </div>
    </div>
</li>

<!--                 상품 두번째자리 끝 -->
    </c:if>
</c:forEach>
   <div class="cmmain_more" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text=''>
                <a href="의류 페이지 이동" class="cmmain_more_btn btn_moreview clickable" data-react-tarea-dtl-cd="t00026">매장 바로가기</a>
            </div>
        </div>

    <!-- 선물포장 -->
    <!-- 신선보장 -->
    <!-- 품질보장 -->
    <!-- SSG설치 -->
   
    </ul>
</li>
</body>
</html>