<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div id="skip_gnb" class="ssg_navbar react-area">
    <div class="ssg_navbar_inner" data-react-tarea-cd="00042_000000090">
        <div class="cmgnb_ctg" data-react-unit-type="text" data-react-unit-text="[{&quot;type&quot;:&quot;tarea_addt_val&quot;,&quot;value&quot;:&quot;카테고리&quot;}]">
            <button type="button" class="cmgnb_ctg_open v2 clickable" aria-expanded="false" data-react-tarea="SSG공통|GNB 띠메뉴|카테고리_클릭" data-react-tarea-dtl-cd="t00060">
                <span class="blind">통합 카테고리 보기</span>
                <span class="ico_menu">&nbsp;</span>
            </button>
            <div class="cmctg_text">카테고리</div>
            <div class="cmctg_total" aria-hidden="true">
                <div class="cmctg_dimmed"></div>
                <div class="cmctg_cont">
                    <ul class="cmctg_list" role="menubar">
                       
                       
                       <c:forEach var="mjcList" items="${mjcList}" >
                        <li class="cmctg_top_mn" >
                                <a role="menuitem" href="#" class="cmctg_top_lnk clickable" >
                                    <span class="cmctg_lnk_txt"> ${mjcList.majorCateName}</span>
                                    </a>
                                <div class="cmctg_sub_area" aria-hidden="true"></div>
                            </li>
                      </c:forEach>
                      
                      
                        <li class="cmctg_top_mn" data-ctg-code="5410000001">
                                <a role="menuitem" href="#" class="cmctg_top_lnk clickable" aria-expanded="false" data-react-tarea="SSG공통|GNB 띠메뉴|SSG카테고리|패션의류">
                                    <span class="cmctg_lnk_txt">패션의류</span>
                                    </a>
                                <div class="cmctg_sub_area" aria-hidden="true"></div>
                            </li>
                            

                        </ul>
                </div>
            </div>
        </div>
        <div id="cmgnb_ship" class="cmgnb_ship" data-react-unit-type="banr">
            <a href="<%= request.getContextPath() %>/ssgShippingMainPage.do" class="cmgnb_ship_lnk clickable" data-react-tarea-dtl-cd="t00001" data-react-tarea="SSG공통|GNB 띠메뉴|배송매장|쓱배송" style="">
                        <span class="cmgnb_ship_ico">
                            <img src="//sui.ssgcdn.com/cmpt/banner/202211/2022113014302993780266166126_299.png" alt="쓱배송" loading="lazy" srcset="//sui.ssgcdn.com/cmpt/banner/202211/2022113014303177073538664453_530.png 2x"></span>
                    </a>
                <a href="https://www.ssg.com/service/morning/dvstore.ssg" class="cmgnb_ship_lnk clickable" data-react-tarea-dtl-cd="t00001" data-react-tarea="SSG공통|GNB 띠메뉴|배송매장|새벽배송" style="">
                        <span class="cmgnb_ship_ico">
                            <img src="//sui.ssgcdn.com/cmpt/banner/202211/2022113014303924415595968559_325.png" alt="새벽배송" loading="lazy" srcset="//sui.ssgcdn.com/cmpt/banner/202211/2022113014304147582933106393_763.png 2x"></span>
                    </a>
                <a href="https://www.ssg.com/service/oneday/dvstore.ssg" class="cmgnb_ship_lnk clickable" data-react-tarea-dtl-cd="t00001" data-react-tarea="SSG공통|GNB 띠메뉴|배송매장|쓱1DAY배송" style="">
                        <span class="cmgnb_ship_ico">
                            <img src="//sui.ssgcdn.com/cmpt/banner/202307/2023070416215733607376373737_259.png" alt="쓱1DAY배송" loading="lazy" srcset="//sui.ssgcdn.com/cmpt/banner/202307/2023070416221367791932412293_612.png 2x"></span>
                    </a>
                <a href="https://www.ssg.com/service/traders/dvstore.ssg" class="cmgnb_ship_lnk clickable" data-react-tarea-dtl-cd="t00001" data-react-tarea="SSG공통|GNB 띠메뉴|배송매장|트레이더스 쓱배송" style="">
                        <span class="cmgnb_ship_ico">
                            <img src="//sui.ssgcdn.com/cmpt/banner/202303/2023032015590922936400201740_322.png" alt="트레이더스 쓱배송" loading="lazy" srcset="//sui.ssgcdn.com/cmpt/banner/202303/2023032015591306807808608780_456.png 2x"></span>
                    </a>
                </div>
        <div class="cmgnb_menubar">
            <ul role="menubar">
                <li class="Y" data-react-unit-type="banr" data-react-unit-text="[{&quot;type&quot;:&quot;text&quot;,&quot;value&quot;:&quot;SSG.COM Biz.&quot;}]">
                            <a href="https://www.ssg.com/service/bizMain.ssg" target="_self" role="menuitem" class="menu_lnk ty_open clickable" aria-label="SSG.COM Biz. 서비스매장 바로가기" data-react-tarea="SSG공통|GNB 띠메뉴|서비스매장|SSG.COM Biz." data-react-tarea-dtl-cd="t00001"><span class="menu_ico_img"><img src="//sui.ssgcdn.com/cmpt/banner/202403/2024032709555489322063224206_497.png" alt="SSG.COM Biz." loading="lazy"></span>
                                        <span class="menu_txt">SSG.COM Biz.</span>
                                <span class="menu_ico_label ty_new">NEW</span>
                                </a></li>
                    <li class="menu_gift" data-react-unit-type="banr" data-react-unit-text="[{&quot;type&quot;:&quot;text&quot;,&quot;value&quot;:&quot;선물하기&quot;}]">
                            <a href="https://www.ssg.com/service/gift/main.ssg" target="_self" role="menuitem" class="menu_lnk clickable" aria-label="선물하기 서비스매장 바로가기" data-react-tarea="SSG공통|GNB 띠메뉴|서비스매장|선물하기" data-react-tarea-dtl-cd="t00001"><span class="menu_ico_img"><img src="//sui.ssgcdn.com/cmpt/banner/202311/2023112210100688016845963684_281.png" alt="" loading="lazy" srcset="//sui.ssgcdn.com/cmpt/banner/202311/2023112210101635319246335924_563.png"></span>
                                        <span class="menu_txt">선물하기</span>
                                </a></li>
                    <li class="menu_event" data-react-unit-type="banr" data-react-unit-text="[{&quot;type&quot;:&quot;text&quot;,&quot;value&quot;:&quot;이벤트&quot;}]">
                            <a href="https://www.ssg.com/event/eventMain.ssg" target="_self" role="menuitem" class="menu_lnk clickable" aria-label="이벤트 서비스매장 바로가기" data-react-tarea="SSG공통|GNB 띠메뉴|서비스매장|이벤트" data-react-tarea-dtl-cd="t00001"><span class="menu_txt">이벤트</span>
                                </a></li>
                    <li class="menu_store" data-react-unit-type="banr" data-react-unit-text="[{&quot;type&quot;:&quot;text&quot;,&quot;value&quot;:&quot;공식스토어&quot;}]">
                            <a href="https://www.ssg.com/special/index.ssg" target="_self" role="menuitem" class="menu_lnk clickable" aria-label="공식스토어 서비스매장 바로가기" data-react-tarea="SSG공통|GNB 띠메뉴|서비스매장|공식스토어" data-react-tarea-dtl-cd="t00001"><span class="menu_txt">공식스토어</span>
                                </a></li>
                    <li class="menu_obanjang" data-react-unit-type="banr" data-react-unit-text="[{&quot;type&quot;:&quot;text&quot;,&quot;value&quot;:&quot;특가&quot;}]">
                            <a href="https://www.ssg.com/service/specialMain.ssg?tabDivCd=happy" target="_self" role="menuitem" class="menu_lnk clickable" aria-label="특가 서비스매장 바로가기" data-react-tarea="SSG공통|GNB 띠메뉴|서비스매장|특가" data-react-tarea-dtl-cd="t00001"><span class="menu_txt">특가</span>
                                </a></li>
                    <li class="menu_best" data-react-unit-type="banr" data-react-unit-text="[{&quot;type&quot;:&quot;text&quot;,&quot;value&quot;:&quot;베스트&quot;}]">
                            <a href="https://www.ssg.com/service/bestMain.ssg" target="_self" role="menuitem" class="menu_lnk clickable" aria-label="베스트 서비스매장 바로가기" data-react-tarea="SSG공통|GNB 띠메뉴|서비스매장|베스트" data-react-tarea-dtl-cd="t00001"><span class="menu_txt">베스트</span>
                                </a></li>
                    </ul>
        </div>

    </div>
</div>