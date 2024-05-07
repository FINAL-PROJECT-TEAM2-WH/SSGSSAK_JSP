<%@ page contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<link rel="shortcut icon" type="image/x-icon" href="//sui.ssgcdn.com/ui/common/img/ssg.ico">
	<title class="notranslate">
		MY SSG > 정보관리 > 배송지/환불계좌관리</title>
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/scom.css?v=20240424"/>
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssg_global.css?v=20240424" />
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssg_layout.css?v=20240424" />
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/cs.css?v=20240424" />
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/lib/jquery-1.9.1.min.js"></script>

	<script>(function (w, d, s, l, i) {
        w[l] = w[l] || [];
        w[l].push({
            'gtm.start':
                new Date().getTime(), event: 'gtm.js'
        });
        var f = d.getElementsByTagName(s)[0],
            j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
        j.async = true;
        j.src =
            'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
        f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'GA4_dataLayer', 'GTM-PWBFGRL');</script>
	<script type="text/javascript">
        window.GA4_dataLayer = window.GA4_dataLayer || [];

        function gtmPush() {
            GA4_dataLayer.push(arguments);
        }
	</script>

	</head>
<body class="body_wide body_wide_ctn">
<noscript>
	<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PWBFGRL"
	        height="0" width="0" style="display:none;visibility:hidden"></iframe>
</noscript>

<div id="skip">
	<h2>스킵 네비게이션</h2>
	<ul>
		<li><a href="#content" onclick="document.getElementById('content').tabIndex = -1;document.getElementById('content').focus();return false;">본문바로가기</a></li>
	</ul>
</div>

<script type="text/javascript">
    var settings = {
        localDomain : location.hostname,
        domain : {
            isHttpFlag:'false' == 'true' ? true : false,
            context:'',
            protocol:'https://',
            
            domain:'member.ssg.com',
            
            sfcDomain : 'member.sfcmall.com',
            
            ssg : 'www.ssg.com',
            mssg : 'm.ssg.com',
            mallac : 'auto.ssglog.com:9095',
            mallshrt : 'auto.ssglog.com:9094',
            ssgac : 'auto.ssglog.com:9095',
            ssgshrt : 'auto.ssglog.com:9094',
            advertise : 'auto.ssglog.com:9093',
            trace : 'cloudapi.ssgadm.com/dp/category/api/search/track/send',
            cityac : '',
            event : 'event.ssg.com',
            howdy : 'howdy.ssg.com',
            thehowdy : 'thehowdy.ssg.com',
            auto :  'https://auto.ssglog.com:8100',
            oapi : 'oapi.ssg.com',
            sfc : {
                pay : 'pay.sfcmall.com',
                emart : 'sfcmall.emart.com',
                ssg : 'www.sfcmall.com',
                small : 'www.sfcmall.com',
                sdept : 'dept.sfcmall.com',
                ssl : 'member.sfcmall.com',
                customer :  'customer.sfcmall.com',
                emartCustomer :  'customer.sfcmall.emart.com',
                member : 'member.sfcmall.com',
                emartMember : 'member.sfcmall.emart.com'
            }
        },
        cdn : {
            
            imgPath : 'https://sui.ssgcdn.com/ui/ssg/img',
            
            trans : 'http://img.ssgcdn.com/trans.ssg',
            noImg : {
                50  : '/ui/ssg/img/common/img_ready_500x500.jpg',
                70  : '/ui/ssg/img/common/img_ready_500x500.jpg',
                93  : '/ui/ssg/img/common/img_ready_500x500.jpg',
                110 : '/ui/ssg/img/common/img_ready_500x500.jpg',
                140 : '/ui/ssg/img/common/img_ready_500x500.jpg',
                168 : '/ui/ssg/img/common/img_ready_500x500.jpg',
                202 : '/ui/ssg/img/common/img_ready_500x500.jpg',
                210 : '/ui/ssg/img/common/img_ready_500x500.jpg',
                240 : '/ui/ssg/img/common/img_ready_500x500.jpg',
                253 : '/ui/ssg/img/common/img_ready_500x500.jpg',
                290 : '/ui/ssg/img/common/img_ready_500x500.jpg',
                300 : '/ui/ssg/img/common/img_ready_500x500.jpg',
                400 : '/ui/ssg/img/common/img_ready_500x500.jpg',
                500 : '/ui/ssg/img/common/img_ready_500x500.jpg'
            },
            itemPath : 'http://item.ssgcdn.com',
            uccPath : '//succ.ssgcdn.com',
            uploadDefaultUrl: '/temp_up/',
            cdnDomain : 'https://sstatic.ssgcdn.com' != '' ?
                'https://sstatic.ssgcdn.com' : '//sui.ssgcdn.com',
            jsPath : '//sui.ssgcdn.com/ui/ssg/js'
        },
        siteno : {
            emall : '6001',
            traders : '6002',
            small : '6004',
            scom : '6005',
            sdept : '6009',
            howdy : '6100',
            thehowdy : '6101',
            tv : '6200',
            sivillage : '6300',
            starfield : '6400',
            premiumoutlets : '7008',
            morning : '7009',
            deptfood : '7010',
            casamia : '7011',
            chicor : '7012',
            trip : '7013',
            openmarket : '7014',
            starbucks : '7015',
            grocery : '7018'
        },
        sitenm : {
    6005: 'SSG.COM', 6004: '신세계몰', 6009: '신세계백화점', 7018: '이마트몰', 6001: '이마트몰', 6002: '트레이더스', 7009: '새벽배송', 7011: '까사미아', 7012: 'CHICOR', 6100: 'howdy', 6200: '신세계라이브쇼핑', 6300: 'S.I.VILLAGE', 7008: '프리미엄아울렛', 7013: '여행', 6400: '스타필드'
    },
    curr_siteno : '6005',
        mediaCd : '10',
        loginPath : 'https://member.ssg.com/member/login.ssg',
        // 모바일 여부
        isMobile : '10' == '20',
        isSfc : false,
    isThehowdy : false,
    // 회원 관련 객체
    UserInfo : {
        isLoginYn        : 'true' == 'true' ? 'Y' : 'N',
            mbrTypeCd        : '10',
            mbrType          : 'B2C',
            mbrLoginId       : '',
            mbrLoginId2      : '',
            mbrcoId          : '000000',
            ckWhere          : 'direct_ssg',
            dmId             : '',
            emSaleStrNo      : '2022',
            trSaleStrNo      : '2483',
            gmSaleStrNo      : '2449',
            gmSaleStrYn      : 'Y',
            emRsvtShppPsblYn : 'Y',
            ga : '125',
            sessionId : '',
            ip : '',
            shpplocMod : 'MY',
            shpplocModKey : '5430097',
            cartNm : '장바구니',
            mbrspMbrDivCd : '2001',
            mbrspJoinSiteCd : '',
            mbrspPaymtTypeCd : '',
            ssCardYn : 'N',
            mktgSvcMbrId : ''
    },
    
    imgPath : 'https://sui.ssgcdn.com/ui/ssg/img',
        
        tsActionId : 'order_prod',
        

        key : {
        kakao : {
            mssgmall : '927ad12793fd2d6e0ce1874f65eaf415',
                msmall : '633a9d661ae116ef826a2d39da20c369',
                memall : 'b402eae75d631a84dfb7e8848e20b7ff',
                mtraders : '5a5e9ed8d1d331d6e88296bf59211e8b',
                mboons : '250cf9a33ae8acd6a6a782478403c953'
        }
    },
    mobilAppNo : '',
        locale : 'ko-KR',
        currency : 'KRW',
        zone : 'prod',
        emergency : {},
    exchangeRate : '1.0',
        nativeAppYn : ''
    };
    //]]>
</script>
<script type="text/javascript">
//<![CDATA[
    //IE7용 JSON 추가
    var JSON;if(!JSON){JSON={}}(function(){"use strict";function f(e){return e<10?"0"+e:e}function quote(e){escapable.lastIndex=0;return escapable.test(e)?'"'+e.replace(escapable,function(e){var t=meta[e];return typeof t==="string"?t:"\\u"+("0000"+e.charCodeAt(0).toString(16)).slice(-4)})+'"':'"'+e+'"'}function str(e,t){var n,r,i,s,o=gap,u,a=t[e];if(a&&typeof a==="object"&&typeof a.toJSON==="function"){a=a.toJSON(e)}if(typeof rep==="function"){a=rep.call(t,e,a)}switch(typeof a){case"string":return quote(a);case"number":return isFinite(a)?String(a):"null";case"boolean":case"null":return String(a);case"object":if(!a){return"null"}gap+=indent;u=[];if(Object.prototype.toString.apply(a)==="[object Array]"){s=a.length;for(n=0;n<s;n+=1){u[n]=str(n,a)||"null"}i=u.length===0?"[]":gap?"[\n"+gap+u.join(",\n"+gap)+"\n"+o+"]":"["+u.join(",")+"]";gap=o;return i}if(rep&&typeof rep==="object"){s=rep.length;for(n=0;n<s;n+=1){if(typeof rep[n]==="string"){r=rep[n];i=str(r,a);if(i){u.push(quote(r)+(gap?": ":":")+i)}}}}else{for(r in a){if(Object.prototype.hasOwnProperty.call(a,r)){i=str(r,a);if(i){u.push(quote(r)+(gap?": ":":")+i)}}}}i=u.length===0?"{}":gap?"{\n"+gap+u.join(",\n"+gap)+"\n"+o+"}":"{"+u.join(",")+"}";gap=o;return i}}if(typeof Date.prototype.toJSON!=="function"){Date.prototype.toJSON=function(e){return isFinite(this.valueOf())?this.getUTCFullYear()+"-"+f(this.getUTCMonth()+1)+"-"+f(this.getUTCDate())+"T"+f(this.getUTCHours())+":"+f(this.getUTCMinutes())+":"+f(this.getUTCSeconds())+"Z":null};String.prototype.toJSON=Number.prototype.toJSON=Boolean.prototype.toJSON=function(e){return this.valueOf()}}var cx=/[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,escapable=/[\\\"\x00-\x1f\x7f-\x9f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,gap,indent,meta={"\b":"\\b","   ":"\\t","\n":"\\n","\f":"\\f","\r":"\\r",'"':'\\"',"\\":"\\\\"},rep;if(typeof JSON.stringify!=="function"){JSON.stringify=function(e,t,n){var r;gap="";indent="";if(typeof n==="number"){for(r=0;r<n;r+=1){indent+=" "}}else if(typeof n==="string"){indent=n}rep=t;if(t&&typeof t!=="function"&&(typeof t!=="object"||typeof t.length!=="number")){throw new Error("JSON.stringify")}return str("",{"":e})}}if(typeof JSON.parse!=="function"){JSON.parse=function(text,reviver){function walk(e,t){var n,r,i=e[t];if(i&&typeof i==="object"){for(n in i){if(Object.prototype.hasOwnProperty.call(i,n)){r=walk(i,n);if(r!==undefined){i[n]=r}else{delete i[n]}}}}return reviver.call(e,t,i)}var j;text=String(text);cx.lastIndex=0;if(cx.test(text)){text=text.replace(cx,function(e){return"\\u"+("0000"+e.charCodeAt(0).toString(16)).slice(-4)})}if(/^[\],:{}\s]*$/.test(text.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g,"@").replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,"]").replace(/(?:^|:|,)(?:\s*\[)+/g,""))){j=eval("("+text+")");return typeof reviver==="function"?walk({"":j},""):j}throw new SyntaxError("JSON.parse")}}})();

    // GLOBAL 설정 정보들...
    var ssg = $.extend(ssg || {}, {
        domain : {
            emart   : 'emart.ssg.com',
            traders : 'traders.ssg.com',
            small   : 'shinsegaemall.ssg.com',
            ssg     : 'www.ssg.com',
            sdept   : 'department.ssg.com',
            howdy   : 'howdy.ssg.com',
            thehowdy: 'thehowdy.ssg.com',
            tv   : 'tv.ssg.com',
            sivillage   : 'sivillage.ssg.com',
            starfield   : 'starfield.ssg.com',
            outlet : 'premiumoutlets.ssg.com',
            morning : 'earlymorning.ssg.com',
            deptfood : 'foodmarket.ssg.com',
            casamia : 'casamia.ssg.com',
            chicor : 'chicor.ssg.com',
            trip : 'triip.ssg.com',
            openmarket : 'www.ssg.com',
            starbucks : 'starbucks.ssg.com',
            grocery : 'grocery.ssg.com',
            pay : 'pay.ssg.com',
            sfc :{
                pay     : 'pay.sfcmall.com',
                emart     : 'sfcmall.emart.com',
                ssg     : 'www.sfcmall.com',
                small   : 'www.sfcmall.com',
                sdept   : 'dept.sfcmall.com',
                ssl : 'https://member.sfcmall.com',
                customer : 'customer.sfcmall.com'
            }
        },
        cdn : {
            item    : 'http://item.ssgcdn.com'
        },
        trans : 'http://img.ssgcdn.com/trans.ssg',
        noImg : {
            50  : '/ui/ssg/img/common/img_ready_500x500.jpg',
            70  : '/ui/ssg/img/common/img_ready_500x500.jpg',
            93  : '/ui/ssg/img/common/img_ready_500x500.jpg',
            110 : '/ui/ssg/img/common/img_ready_500x500.jpg',
            140 : '/ui/ssg/img/common/img_ready_500x500.jpg',
            168 : '/ui/ssg/img/common/img_ready_500x500.jpg',
            202 : '/ui/ssg/img/common/img_ready_500x500.jpg',
            210 : '/ui/ssg/img/common/img_ready_500x500.jpg',
            240 : '/ui/ssg/img/common/img_ready_500x500.jpg',
            253 : '/ui/ssg/img/common/img_ready_500x500.jpg',
            290 : '/ui/ssg/img/common/img_ready_500x500.jpg',
            300 : '/ui/ssg/img/common/img_ready_500x500.jpg',
            400 : '/ui/ssg/img/common/img_ready_500x500.jpg',
            500 : '/ui/ssg/img/common/img_ready_500x500.jpg'
        },
        title : 'MY SSG &gt; 정보관리 &gt; 배송지/환불계좌관리'
    });

    // 회원 관련 객체, 사용하지 말 것.
    var UserInfo = {
        isLoginYn : 'true'=='true'?'Y':'N',
        mbrTypeCd : '10',
        ckWhere : 'direct_ssg'
    };

    var mobile = {
            customUrl : {
                prefix : '',
                scheme : '' || '',
                popup : 'null',
                popup_out : 'null',
                appmain : 'null'
            }
    };

    var EmallMessage = {
        qtyOver:'???emall.qty.over???',
        qtyNone:'???emall.qty.none???',
        mltQtyInvalid:'???validate.mlt.rule.break???',
        payNodelivery:'???emall.pay.nodelivery???',
        payDeliveryNotuser:'???emall.pay.delivery.notuser???',
        payDeliveryUser:'???emall.pay.delivery.user???',
        payDeliveryCartOk:'???emall.pay.delivery.cart.ok???',
        payNoitem:'???emall.pay.noitem???',
        payCartOk:'???emall.pay.cart.ok???'
    };
    // Emart & Boons & Traders 용 End

    // 업로드 이미지
    var uploadImgPath = 'https://sui.ssgcdn.com';
    // 모바일 여부
    var isMobile = '10' == '20';
    // app 여부
    var isApp = '' != '' ? 'Y' : 'N';
    // 공유장바구니 버전 app 여부
    var isAppCartShare = "" == '1' ? 'Y' : 'N'

    // pad 여부
    var isPad = '' == 'true' ? true : false;

    // sfc 여부, deprecated
    var isSfc = false;

    // sfc 앱 여부, deprecated
    var isSfcApp = "N";

    var ssgDomain = 'https://www.ssg.com';
    var imgPath   = '';
    if ( settings.domain.isHttpFlag == true ) {
        imgPath = '//sui.ssgcdn.com/ui/ssg/img';
    } else {
        imgPath = '//sui.ssgcdn.com/ui/ssg/img';
    }
    var itemPath  = '//sitem.ssgcdn.com';
    var localDomain = location.protocol + "//"+location.hostname;
    var skipForJoinPage = '' == '' ? 'N' : '';
    var isProd = !(location.href.indexOf('local-') > -1 || location.href.indexOf('dev-') > -1 || location.href.indexOf('qa-') > -1) ;

    // 전시/상세 강제 품절 처리
    var emergencyItemIds = "";
//]]>
</script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/netfunnel.js"></script>
<div id="wrap">
	<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/m_ssg/css/ssg_iconset.css?v=20240424" />
    <input type="hidden" name="showTripTapActvYn" value="Y"/>
    <input type="hidden" name="siteNo" value="6005"/>
    <input type="hidden" name="fromgnb" value=""/>
    <div id="header" class="ssg_header react-area"  >
        <div class="ssg_header_inner">
            <div id="notice_b2e_pop" class="notice_lpop" style="width:436px;height:334px;display:none">
                <div class="nl_cont">
                    <img src="https://sui.ssgcdn.com/ui/ssg/img/common/notice/bg_benefitnotice.png" alt="제휴 혜택 적용 관련 안내">
                    <p class="blind">B2E 제휴 고객사 및 신세계 그룹 임직원에게는 신세계몰과 이마트몰의 상시 할인 혜택이 적용되고 있습니다. B2E 회원은 제휴 채널 혜택이 중복 적용되지 않습니다. 특정 제휴 채널을 통한 SSG.COM 방문 시 제휴채널 헤택이 중복 적용되지 않음을 양해하여 주시기 바랍니다.</p>
                </div>
                <div class="nl_foot">
                    <div class="nlf_l"><input type="checkbox" id="nlf_chk" onclick="javascript:openB2ePopClose();"><label for="nlf_chk">오늘 하루 이창을 열지않음</label></div>
                    <div class="nlf_r"><a href="javascript:void(0);" onclick="javascript:document.getElementById('notice_b2e_pop').style.display='none';" class="nl_close"><span class="sp_nl">안내 레이어 닫기</span></a></div>
                </div>
            </div>
            <div class="ssg_gnb_main">
                <!-- SSG 로고/몰이동 -->
                <div class="ssg_gnb_logo v2">
                        <div class="ssg_mall_layer_container">
                            <div class="ssg_mall_layer_head">
                                <h1>
                                	<!-- SSGSSAK 이미지 넣기  -->
                                    <a href="javascript:void(0)" class="ssg_logo_link">
                                        <span class="ssg_logo_slogan">믿고 사는 즐거움</span>
                                        <i class="logo logo_ssg_com" aria-hidden="true"></i>
                                        <span class="blind">SSGSSAK.COM</span>
                                    </a>
                                </h1>
                                <span class="ssg_mall_menu_trigger" aria-expanded="false">
                                  <i class="icon_ssg_circle_chevron_down"></i>
                                  <span class="blind">메뉴 열기</span>
                                </span>
                            </div>
                            <div class="ssg_mall_menu_container" aria-hidden="true" tabindex="-1" data-react-tarea-cd="00042_000000090">
                                <ul class="ssg_mall_menu_list">
                                    <li class="ssg_mall_menu_item ssg_mall_menu_item_ssg is-active" data-react-unit-type="text" data-react-unit-text='[{"type":"text","value":"SSG"}]'>
                                        <!-- SSGSSAK 메인 홈페이지로 이동 -->
                                        <a href="#" class="clickable" data-react-tarea="공통|몰이동_레이어|SSG_클릭" data-react-tarea-dtl-cd="t00060" onclick="javascript:setCommonGnbCookie('useGnbAdvertCk','',-1);">
                                            <span class="blind">SSGSSAK.COM</span>
                                        </a>
                                    </li>
                                    <li class="ssg_mall_menu_item ssg_mall_menu_item_emart" data-react-unit-type="text" data-react-unit-text='[{"type":"text","value":"이마트몰"}]'>
                                        <a href="#" class="clickable" data-react-tarea="공통|몰이동_레이어|이마트몰_클릭" data-react-tarea-dtl-cd="t00060">
                                            <span class="blind">이마트몰</span>
                                        </a>
                                    </li>
                                    <li class="ssg_mall_menu_item" data-react-unit-type="text" data-react-unit-text='[{"type":"text","value":"신세계몰"}]'>
                                        <a href="#" class="clickable" data-react-tarea="공통|몰이동_레이어|신세계몰_클릭" data-react-tarea-dtl-cd="t00060">신세계몰</a>
                                    </li>
                                    <li class="ssg_mall_menu_item" data-react-unit-type="text" data-react-unit-text='[{"type":"text","value":"신세계백화점"}]'>
                                        <a href="#" class="clickable" data-react-tarea="공통|몰이동_레이어|신세계백화점_클릭" data-react-tarea-dtl-cd="t00060">신세계백화점</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                <!-- //SSG 로고/몰이동 -->
                <!-- 검색/급상승검색어 -->
                <div class="ssg_gnb_search">
                    <!-- [공통헤더] 검색 -->
                    <div class="gnb_search_wrap">
                        <div class="gnb_searching_box" id="search_query">
                            <form onsubmit="return false;">
                                <div class="gnb_searching_inp" data-globalid="search">
                                    <input id="ssg-query" type="text" value="" class="inp_txt" style="width:px" onFocus="this.style.background='none'" autocomplete="off" />
                                    <input type="hidden" id="ssgQueryBanrUrl"    name="ssgQueryBanrUrl"    value="">
                                    <input type="hidden" id="ssgQueryBanrTarget" name="ssgQueryBanrTarget" value="">
                                    <input type="hidden" id="ssgQuerySub"        name="ssgQuerySub" value="">
                                    <button type="button" id="ssg-query-btn" class="gnb_search_btn">
                                        <i class="icon ty_lg icon_search"></i>
                                        <span class="blind">검색</span>
                                    </button>
                                </div>
                            </form>
                        </div>
                        <!-- 자동완성영역 개편(s) -->
                        <!-- 이부분은 검색어 정보를 쿠키값을 받아와서 최근검색어에 띄운다. -->
                        <div class="gnb_search_word" id="ssg-common_search_word">
                            <!-- 검색 키인창(s) -->
                            <div class="key_word_renew" id="ssg-mbr-wrap-area" style="display: none">
                                <div class="recent_list">
                                    <div class="tit_area">
                                        <strong>최근검색어</strong>
                                    </div>
                                    <div class="result_area" id="ssg-recent_result_area">
                                        <ul id="ssg-recent_search"></ul>
                                        <div class="result_clear">
                                            <button type="button" class="btn_clear" id="ssg-btn_late_clear" onclick="javascript:ssgTrigger.btnHandle(event,this);" data-value="mbr" ><span>검색어 전체 삭제</span></button>
                                        </div>
                                    </div>
                                    <!-- c:if 검색어 있을경우 검색어 출력  -->
                                    <!-- 검색어가 없을 경우 nodata 하고 최근검색어가 없습니다. 출력 -->
                                    <!-- [D] 검색어가 없을 경우 .nodata는 display:block / .result_area는 display:none -->
                                    <div class="nodata" id="ssg-late_nodate" style="display:none">
                                        <p>최근검색어가 없습니다</p>
                                    </div>
                                </div>
                            </div>
                            <!-- 검색 키인창(e) -->
                            <!-- 자동완성검색어(s) -->
                            <!-- [D] 광고가 보이는 상태일때 .auto_word에 .ad_showing 클래스 추가-->
                            <div class="auto_word renew" id="ssg-auto_word" style="display: none">
                                <div id="ssg-shrtc_target"  class="word_shortcut"></div>
                                <div class="word_list notranslate" id="ssg-word_list">
                                    <ul id="ssg-auto_list"></ul>
                                </div>
                            </div>
                            <!-- 자동완성검색어(e) -->
                        </div>
                        <!-- 자동완성영역 개편(e) -->
                    </div>
                    <script type="text/javascript" src="//sstatic.ssgcdn.com/common/ui/json/srchAdKeyword.js"></script>
                    <script type="text/javascript" src="//sstatic.ssgcdn.com/common/ui/json/shrtc_keyword.js"></script>
                    <script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/srch/new/srch.ac.comm.v2.js?v=20240424"></script>
                    <script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/srch/lodash-2.4.1.js"></script>
                    <script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/srch/new/srch.ac.ssg.ui.v2.js?v=20240424"></script>
                    <!-- 급상승 검색어(s) -->
                    <div id="cmjumpRank" class="cmjump_rank renew notranslate">
                            <div class="cmjump_totalrank">
                                <div class="cmjump_totalrank_cont">
                                    <ul class="cmjump_rank_lst bx_slide">
                                        <li class="cmjump_rank_item">
                                        <!-- 검색어 count해서 rank 매기고 상위10개 정보만 출력 -->
                                                <a href="https://www.ssg.com/search.ssg?target=all&query=%eb%b0%80%eb%a0%88%eb%8b%88%ec%97%84%ed%8c%94%ec%bd%98&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|밀레니엄팔콘">
                                                    <span class="cmjump_rank_num">1.</span>
                                                    <span class="cmjump_rank_tx">밀레니엄팔콘</span>
                                                    <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                </div>
                            </div>
                            <div class="cmjump_lyr">
                                <div class="cmjump_lyr_cont">
                                    <strong class="cmjump_totalrank_tit">급상승 검색어</strong>
                                    <ul class="cmjump_lyr_tab">
                                        <li class="on" role="presentation">
                                            <button type="button" class="rank_tab_btn clickable" role="tab" aria-selected="true" data-react-tarea="몰공통|GNB|급상승검색어탭_클릭"><span class="rank_tab_tx">1~10위</span></button>
                                        </li>
                                        <li role="presentation">
                                            <button type="button" class="rank_tab_btn clickable" role="tab" aria-selected="false" data-react-tarea="몰공통|GNB|급상승검색어탭_클릭"><span class="rank_tab_tx">11~20위</span></button>
                                        </li>
                                    </ul>
                                    <div class="cmjump_lyr_scont">
                                        <div class="cmjump_lyr_panel on" role="tabpanel">
                                            <ul class="cmjump_rank_lst">
                                                <li class="cmjump_rank_item">
                                                <!-- 우리가 인기 검색어로 정한것 10개 출력 1~10등 -->
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%eb%b0%80%eb%a0%88%eb%8b%88%ec%97%84%ed%8c%94%ec%bd%98&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|밀레니엄팔콘">
                                                            <span class="cmjump_rank_num">1.</span>
                                                            <span class="cmjump_rank_tx">밀레니엄팔콘</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                    <span class="cmjump_rank_count">2</span>
                                                            <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                        </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                        </div>
                                        <!-- 우리가 인기 검색어로 정한것 10개 출력 11~20등 -->
                                        <div class="cmjump_lyr_panel" role="tabpanel">
                                            <ul class="cmjump_rank_lst">
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%eb%95%85%ec%bd%a9%eb%b2%84%ed%84%b0&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|땅콩버터">
                                                            <span class="cmjump_rank_num">11.</span>
                                                            <span class="cmjump_rank_tx">땅콩버터</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_count">3</span>
                                                        <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </a>
                                                    </li>
                                                </ul>
                                        </div>
                                    </div>
                                    <div class="cmjump_keyword_info">0000-00-00 00시00분00초 기준</div>
                                </div>
                            </div>
                        </div>
                    <!-- 급상승 검색어(e) -->
                    <!-- //[공통헤더] 검색 -->
                </div>
                <!-- //검색/급상승검색어 -->
                <!-- 몰이동-->
                <div class="ssg_gnb_mall">
                    <ul class="gnb_mall_menu" data-react-tarea-cd="00042_000000090">
                        <li class="gnb_mall_item" data-react-unit-type="text" data-react-unit-text='[{"type":"text","value":"이마트몰"}]'>
                            <a href="https://emart.ssg.com" class="gnb_mall_link gnb_mall_emart clickable" data-react-tarea="공통|몰이동_레이어|이마트몰_클릭" data-react-tarea-dtl-cd="t00060"><span class="blind">이마트몰</span></a>
                        </li>
                        <li class="gnb_mall_item" data-react-unit-type="text" data-react-unit-text='[{"type":"text","value":"신세계몰"}]'>
                            <a href="https://shinsegaemall.ssg.com" class="gnb_mall_link clickable" data-react-tarea="공통|몰이동_레이어|신세계몰_클릭" data-react-tarea-dtl-cd="t00060">신세계몰</a>
                        </li>
                        <li class="gnb_mall_item" data-react-unit-type="text" data-react-unit-text='[{"type":"text","value":"신세계백화점"}]'>
                            <a href="https://department.ssg.com" class="gnb_mall_link clickable" data-react-tarea="공통|몰이동_레이어|신세계백화점_클릭" data-react-tarea-dtl-cd="t00060">신세계백화점</a>
                        </li>
                        </ul>
                </div>
                <!-- //몰이동-->
                </div>

            <div class="ssg_gnb_util">
                <!-- 상단메뉴: 바로가기/로그인/우측메뉴 -->
                <div class="gnb_renew_util" data-react-tarea-cd="00042_000000090">
                    <input type="hidden" value="Y" id="universeOpenYn"/>
                    <div class="gnb_mmbrs ty_universe" id="gnbMbrspText_universe" style="display: none" data-react-unit-type="text" data-react-unit-text='[{"type":"tarea_addt_val","value":"멤버십영역"}]' data-react-unit-id=""></div>
                    <ul class="gnb_util" id="util_right">
                        <li id="gnbUserInfoArea" class="gnb_tx_user notranslate gnbUserInfoArea" style="display:none;"><a href="javascript:void(0);"></a></li>
                        <li id="loginBtn" style="display:none;"><a class="clickable" data-react-tarea="몰공통|GNB|로그인" href="#" onclick="login('','','','gnb=login');return false;" title="새창 열림">로그인</a></li>
                        <li id="joinBtn" style="display:none;"><a class="clickable" data-react-tarea="몰공통|GNB|회원가입" href="javascript:fn_joinSite('https://member.ssg.com/member/join/auth.ssg')">회원가입</a></li>
                        <li id="logoutBtn" style="display:none;"><a class="clickable" data-react-tarea="몰공통|GNB|로그아웃" href="#" onclick="logout('', 'gnb=logout');return false;">로그아웃</a></li>
                        <li><a class="clickable" data-react-tarea="몰공통|GNB|고객센터" href="javascript:goCustomer();">고객센터</a></li>
                    </ul>
                </div>
                <div class="gnb_renew_menu">
                    <ul class="gnb_menu" data-react-tarea-cd="00042_000000090">
                        <li>
                            <a href="https://www.ssg.com/myssg/myClip/main.ssg?attnDivCd=10&gnb=myclip" class="btn_like clickable" data-react-tarea="몰공통|GNB|MY_MY클립" onclick="javascript:setCommonGnbCookie('useGnbAdvertCk','',-1);">
                                <i class="icon ty_sm icon_heart" aria-hidden="true"></i>
                                <span class="blind">좋아요</span>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.ssg.com/myssg/main.ssg?gnb=myssg" class="btn_myssg clickable" data-react-tarea="몰공통|GNB|MY_MYSSG" onclick="javascript:setCommonGnbCookie('useGnbAdvertCk','',-1);">
                                <i class="icon ty_sm icon_person" aria-hidden="true"></i>
                                <span class="blind">MY SSG</span>
                            </a>
                        </li>
                        <li>
                            <a href="https://pay.ssg.com/myssg/orderList.ssg?gnb=orderlist" class="btn_order clickable" data-react-tarea="몰공통|GNB|주문배송조회" onclick="javascript:setCommonGnbCookie('useGnbAdvertCk','',-1);">
                                <i class="icon ty_sm icon_truck" aria-hidden="true"></i>
                                <span class="blind">주문배송조회</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:ssgGnb.fn_btnClickCart();" class="btn_cart clickable" data-react-tarea="몰공통|GNB|장바구니_클릭" onclick="javascript:setCommonGnbCookie('useGnbAdvertCk','',-1);">
                                <i class="icon ty_sm icon_cart" aria-hidden="true"></i>
                                <span class="cmnoti_push" id="mbrCartCntInfo" style="display:none;">
                                    <span class="blind">장바구니에 담긴 상품 수</span>
                                    <span class="cmnoti_num" id="mbrCartCntSpan"></span>
                                </span>
                            </a>
                        </li>
                        </ul>
                    <script type="text/javascript">
                        var loginYn  = 'N';
                        var cookies = document.cookie.split('; ');
                        for(var i = 0; i < cookies.length; i++){
                            var value  = cookies[i].split('=');
                            if(value[0] === 'LOGIN_YN'){
                                loginYn = decodeURIComponent(value[1]);
                            }
                        }

                        if(loginYn == 'T'){
                            document.getElementById('loginBtn').style.display = "none";
                            document.getElementById('joinBtn').style.display = "none";
                            document.getElementById('logoutBtn').style.display = "";
                        } else{
                            document.getElementById('loginBtn').style.display = "";
                            document.getElementById('joinBtn').style.display = "";
                            document.getElementById('logoutBtn').style.display = "none";
                        }

                        var ssgGnb = {
                            fn_btnClickCart : function() {
                                if(ssgGnb.fn_btnClickCart.progress) {
                                    alert('처리중입니다.');
                                    return;
                                }

                                ssgGnb.fn_btnClickCart.progress = true;
                                location.href = 'https://pay.ssg.com/cart/dmsShpp.ssg?gnb=cart';
                            }
                        }
                    </script>
                </div>
                <!-- //상단메뉴: 바로가기/로그인/우측메뉴-->
            </div>
        </div>
    </div>
<!-- 최근 본 상품 -->
<aside id="history" class="drawer_menu drawer_right" role="complementary" aria-label="최근 본 상품 리스트">
  <div class="ssg_history_wrap drawer_wrap" id="_ssg_history_wrap" tabindex="0" data-react-tarea-cd="00042_000000455">
    <div class="ssg_history_top">
      <div class="ssg_history_title">
        <h3>최근본</h3>
        <span class="txt_count">0</span>
      </div>
      <div class="ssg_history_ctrl" data-react-unit-type="text" data-react-unit-text='[{"type":"tarea_addt_val","value":"전체삭제"}]'>
        <button type="button" class="ssg_history_delete clickable" onclick="javascript:historySsg.deleteHistoryAll();ssg_react_v2.direct_call(this);" data-react-tarea="공통|최근본|전체삭제_클릭" data-react-tarea-dtl-cd="t00060">전체삭제</button>
        <button type="button" class="ssg_history_close drawer_close" data-react-unit-type="text" data-react-unit-text='[{"type":"tarea_addt_val","value":"닫기"}]'>
          <i class="icon ty_md icon_close clickable" aria-hidden="true" onclick="ssg_react_v2.direct_call(this);" data-react-tarea="공통|최근본|닫기_클릭" data-react-tarea-dtl-cd="t00060"></i>
          <span class="blind">최근 본 상품 닫기</span>
        </button>
      </div>
    </div>
    <div class="ssg_history_cont">
      <div class="ssg_history_scroll">
        <ul class="ssg_history_list">
        </ul>
      </div>
      <div class="ssg_history_loading"><span class="blind">로딩중</span></div>
      <div class="ssg_history_nodata">
        <p>최근본<br>내역이 없습니다</p>
      </div>
    </div>
  </div>
</aside>
<!-- //최근 본 상품 -->

    <script type="text/javascript">
        function frontSsgReactDirectCall(tareaParam) {
            if(typeof ssg_react !== 'undefined') {
                ssg_react.directCall({tarea: tareaParam})
            }
        }

        </script>

<script type="text/javascript">

function setCommonGnbCookie(name, value, expiredays) {
    //name:useGnbAdvert, value:Y
    //$.cookie(name, value, {expires: expiredays, path: '/', domain: '.ssg.com'});
    
    var strCookie = name + "=" + encodeURIComponent(value);
    strCookie += "; path=/";
    strCookie += "; domain=.ssg.com";
    if( typeof expiredays === "number" )
    {
        var todayDate = new Date();
        todayDate.setDate (todayDate.getDate() + expiredays);

        strCookie += "; expires=" + todayDate.toGMTString();
    }

    document.cookie = strCookie;
}

</script>
<div id="category" class="category"></div>
			<div id="container"  class="cmmyssg_wrap" >
				<!-- SSG -->
<input type="hidden" id="ssgDomain" value="http://www.ssg.com"/>
<input type="hidden" id="couponWebImgPathUrl" value="https://sui.ssgcdn.com"/>
<input type="hidden" id="openChooseBenefit" value="N"/>
<input type="hidden" id="mbrspMbrDivCd" value="2001"/>
<input type="hidden" id="mbrGrdCd" value="10"/>
<div class="cmmyssg_header ty_light react-area">
            <div class="cmmyssg_user" data-react-tarea-cd="00034_000000001">
                <div class="cmmyssg_user_info">
                	<!-- 회원 마이페이지로 이동 -->
                    <h2 class="cmmyssg_user_tit" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"tarea_addt_val","value":"이름"}]'>
                        <a href="회원 마이페이지로 이동" class="cmmyssg_user_tittx clickable" data-react-tarea-dtl-cd="t00060"><span class="cmmyssg_user_titname">어떤 회원님의</span>의 My SSG</a>
                    </h2>
                </div>
            </div>
            <div class="cmmyssg_asset" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"tarea_addt_val","value":"쿠폰"}]'>
                <a href="http://www.ssg.com/myssg/moneyMng/memberCpnOwnList.ssg?myssg=coupon" class="cmmyssg_asset_tit clickable" data-react-tarea-dtl-cd="t00060">
                    <span class="cmmyssg_asset_tittx">쿠폰</span>
                </a>
            </div>
            <div class="cmmyssg_asset" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"tarea_addt_val","value":"SSGMONEY"}]'>
                <a href="https://member.ssg.com/myssg/ssgmoneyMng/ssgmoneySavedList.ssg?menu=smoneySavedList" class="cmmyssg_asset_tit clickable">
                    <span class="cmmyssg_asset_tittx">SSG MONEY</span>
                </a>
            </div>
            <div class="cmmyssg_asset" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"tarea_addt_val","value":"신세계포인트"}]'>
                <a href="https://member.ssg.com/myssg/moneyMng/spointDetailList.ssg?menu=spointDetailList" class="cmmyssg_asset_tit clickable" data-react-tarea-dtl-cd="t00060">
                    <span class="cmmyssg_asset_tittx">신세계 포인트</span>
                </a>
            </div>
            </div>
    <!--유니버스 클럽 배너-->

<div class="cmmyssg_membership_banner universe react-area" id="membership_banner_universe" data-react-tarea-cd="00040_000000233"></div>
<!-- [D] 레이어팝업 : 우수고객 쿠폰 다운받기-->
<div id="modal_new_mycoupon" class="modal_myssg_popup_new myssg_coupon_downloaded_modal v2 react-area"  data-react-tarea-cd="00040_000000233">
    <a class="myssg_benefit_choose myssg_modal_close clickable" href="#" data-react-unit-type="text" data-react-unit-text='[{"type":"tarea_addt_val","value":"닫기"}]' data-react-tarea-dtl-cd="t00060"><span class="blind">레이어팝업 닫기</span></a>
    <div class="myssg_coupon_downloaded_content myssg_modal_content">
        <strong class="myssg_modal_title">FRIENDS 우수고객 쿠폰 다운로드가 완료되었습니다.</strong>
        <div class="myssg_box">
            <ul class="myssg_item_list">
                <li class="myssg_item">
                            <div class="myssg_item_img">
                                <img src="//sui.ssgcdn.com/ui/ssg/img/myssg/img_7_coupon.png" srcset="//sui.ssgcdn.com/ui/ssg/img/myssg/img_7_coupon@2x.png 2x" />
                                <span class="myssg_badge">x2</span>
                            </div>
                            <strong class="myssg_item_title">7% 쿠폰 2장</strong>
                        </li>
                        <li class="myssg_item">
                            <div class="myssg_item_img">
                                <img src="//sui.ssgcdn.com/ui/ssg/img/myssg/img_5_coupon.png" srcset="//sui.ssgcdn.com/ui/ssg/img/myssg/img_5_coupon@2x.png 2x" />
                                <span class="myssg_badge">x3</span>
                            </div>
                            <strong class="myssg_item_title">5% 쿠폰 3장</strong>
                        </li>
                    </ul>
        </div>
        <!--혜택안내 영역 -->
        <article class="myssg_box has_bg">
            <h4 class="myssg_box_title">
                <span>잠깐! 놓치고 계신 혜택이 있어요!</span><br /> 신세계 유니버스 클럽에 가입하고, 어디서든 5% 할인받으세요.
            </h4>
            <p class="myssg_box_text">지금 가입하시면 가입비 3만원 100% 캐시백 + 쓱머니 5천원 돌려드려요!</p>
            <div class="myssg_card myssg_card_has_bg myssg_card_preserve_benefit">
                <div class="myssg_card_content">
                    <span class="blind"><strong>SSG MONEY 3만원</strong>100% 캐시백 + <strong>신세계 그룹사 6곳</strong>멤버십 추가 혜택</span>
                    <img src="//sui.ssgcdn.com/ui/ssg/img/myssg/img_membership_benefit.png" srcset="//sui.ssgcdn.com/ui/ssg/img/myssg/img_membership_benefit@2x.png 2x" />
                </div>
            </div>
        </article>
        <div class="myssg_modal_btn_group" data-react-tarea-cd="00040_000000233">
            <a href="https://www.ssg.com/myssg/moneyMng/memberCpnOwnList.ssg" class="myssg_modal_btn outline size_lg clickable" data-react-unit-type="text" data-react-unit-text='[{"type":"tarea_addt_val","value":"쿠폰함가기"}]' data-react-tarea-dtl-cd="t00060">
                <span class="myssg_modal_btn_content">쿠폰함 가기</span>
            </a>
            <a href="https://member.ssg.com/m/mbrsp/join/agree.ssg" class="myssg_modal_btn size_lg clickable" data-react-unit-type="text" data-react-unit-text='[{"type":"tarea_addt_val","value":"가입하기"}]' data-react-tarea-dtl-cd="t00060">
                <span class="myssg_modal_btn_content"> 멤버십 가입하기 <i class="icon_ssg_chevron_right_small"></i>
                </span>
            </a>
            </div>
    </div>
</div>
<!-- [D] 레이어팝업 : 유니버스 클럽 쿠폰 다운로드 완료-->
<div id="myssg_coupon_downloaded_modal2" class="modal_myssg_popup_new myssg_coupon_downloaded_modal v2">
    <a class="myssg_benefit_choose myssg_modal_close" href="#"><span class="blind">레이어팝업 닫기</span></a>
    <div class="myssg_coupon_downloaded_content myssg_modal_content">
        <strong class="myssg_modal_title">신세계 유니버스 클럽 쿠폰 다운로드가 완료되었습니다.</strong><div class="myssg_box">
                <ul class="myssg_item_list flexible ">
                    <li class="myssg_item">
                        <div class="myssg_item_img">
                            <img src="//sui.ssgcdn.com/ui/ssg/img/myssg/img_7_coupon.png" srcset="//sui.ssgcdn.com/ui/ssg/img/myssg/img_7_coupon@2x.png 2x" />
                            <span class="myssg_badge">x2</span>
                        </div>
                        <strong class="myssg_item_title">7% 쿠폰 2장</strong>
                    </li>
                    <li class="myssg_item">
                        <div class="myssg_item_img">
                            <img src="//sui.ssgcdn.com/ui/ssg/img/myssg/img_5_coupon.png" srcset="//sui.ssgcdn.com/ui/ssg/img/myssg/img_5_coupon@2x.png 2x" />
                            <span class="myssg_badge">x3</span>
                        </div>
                        <strong class="myssg_item_title">5% 쿠폰 3장</strong>
                    </li>
                </ul>
            </div>
            <div class="myssg_modal_btn_group">
                <a href="/myssg/moneyMng/memberCpnOwnList.ssg" class="myssg_modal_btn outline size_lg">
                    <span class="myssg_modal_btn_content">쿠폰함 가기</span>
                </a>
            </div>
    </div>
</div>
<script type="text/javascript">
    // 멤버십 쿠폰 다운로드
    function issueCouponForMemberShip() {
         $.ajax({
            type: 'post',
             url: '/apis/prom/coupon/mbrsp/issue',
             async: false,
             success: function (response) {
                 if (response.data.resultCode === '00') {
                     oCouponDownloadedLayerPopup.showByTarget('#myssg_coupon_downloaded_modal2');
                 } else {
                     if (response.data && response.data.resultMsg) {
                         alert(response.data.resultMsg);
                     } else {
                         alert('혜택 받기가 실패하였습니다.');
                     }
                 }
             },
             error: function (response) {
                 console.log("issueCouponForMemberShip error");
             }
         });

    }
    //우수고객 쿠폰 다운로드
    function issueCouponForBestCustomer(){
        $.ajax({
            type: 'post',
            url: '/apis/prom/coupon/mbrsp/issue',
            async: false,
            success: function (response) {
                if (response.data.resultCode === '00') {
                    oMyCouponNewLayerPopup.showByTarget('#modal_new_mycoupon');
                } else {
                    if (response.data && response.data.resultMsg) {
                        alert(response.data.resultMsg);
                    } else {
                        alert('혜택 받기가 실패하였습니다.');
                    }
                }
            },
            error: function (response) {
                console.log("issueCouponForBestCustomer error");
            }
        });
    }
    </script>
<script type="text/javascript">
    function fn_myssg_grade_coupon(reactName) {
        if (typeof ssg_react === 'undefined') {
        } else {
            ssg_react.directCall({tarea: reactName});
        }
    }
</script>
<div class="cmmyssg_aside react-area">
    <ul class="cmmyssg_snb" data-react-tarea-cd="00034_000000005">
        <li class="cmmyssg_snb_item">
            <strong class="cmmyssg_snb_tit">나의 주문관리</strong>
            <ul class="cmmyssg_snb_sublst">
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"주문/배송조회"}]'><a href="https://pay.ssg.com/myssg/orderList.ssg?menu=orderList" class="clickable" data-react-tarea-dtl-cd="t00058">주문/배송조회</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"여행예약조회"}]'><a href="https://triip.ssg.com/hotel/myssg/rsvtList.ssg" class="clickable" data-react-tarea-dtl-cd="t00058">여행예약 조회</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"구매내역"}]'><a href="http://www.ssg.com/myssg/productMng/purchaseList.ssg?menu=purchaseList" class="clickable" data-react-tarea-dtl-cd="t00058">구매 내역</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"자주구매상품"}]'><a href="http://www.ssg.com/myssg/productMng/frequentlyOrderItem.ssg?menu=frequentlyOrderItem" class="clickable" data-react-tarea-dtl-cd="t00058">자주구매 상품</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"정기배송설정관리"}]'><a href="https://pay.ssg.com/myssg/perdc-shpp-mng.ssg" class="clickable" data-react-tarea-dtl-cd="t00058">정기배송 설정 관리</a></li>
            </ul>
        </li>
        <li class="cmmyssg_snb_item">
            <strong class="cmmyssg_snb_tit">나의 혜택관리</strong>
            <ul class="cmmyssg_snb_sublst">
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"쿠폰"}]'><a href="http://www.ssg.com/myssg/moneyMng/memberCpnOwnList.ssg" class="clickable" data-react-tarea-dtl-cd="t00058">쿠폰</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"SSGMONEY"}]'><a href="https://member.ssg.com/myssg/ssgmoneyMng/ssgmoneySavedList.ssg?menu=smoneySavedList" class="clickable" data-react-tarea-dtl-cd="t00058">SSG MONEY</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"신세계포인트"}]'><a href="https://member.ssg.com/myssg/moneyMng/spointDetailList.ssg?menu=spointDetailList" class="clickable" data-react-tarea-dtl-cd="t00058">신세계 포인트</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"미식MONEY"}]'><a href="https://member.ssg.com/myssg/moneyMng/pinmoneySavedList.ssg?menu=pinmoneySavedList" class="clickable" data-react-tarea-dtl-cd="t00058">미식 MONEY</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"맘키즈클럽관리"}]'><a href="https://member.ssg.com/myssg/myinfoMng/manageBenefit.ssg?menu=manageBenefit" class="clickable" data-react-tarea-dtl-cd="t00058">맘키즈 클럽 관리</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"SSGVOUCHER"}]'><a href="https://member.ssg.com/myssg/moneyMng/ssgVoucherSavedList.ssg" class="clickable" data-react-tarea-dtl-cd="t00058">SSG VOUCHER</a></li>
            </ul>
        </li>
        <li class="cmmyssg_snb_item">
            <strong class="cmmyssg_snb_tit">나의 활동관리</strong>
            <ul class="cmmyssg_snb_sublst">
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"좋아요"}]'><a href="http://www.ssg.com/myssg/myClip/main.ssg?attnDivCd=10&menu=myclip" class="clickable" data-react-tarea-dtl-cd="t00058">좋아요</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"상품리뷰"}]'><a href="http://www.ssg.com/myssg/activityMng/pdtEvalList.ssg?quick=pdtEvalList" class="clickable" data-react-tarea-dtl-cd="t00058">상품 리뷰</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"새벽배송알비백관리"}]'><a href="https://pay.ssg.com/myssg/orderInfoCoolerBagInfo.ssg" class="clickable" data-react-tarea-dtl-cd="t00058">새벽배송 알비백 관리</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"이벤트참여현황"}]'><a href="http://www.ssg.com/myssg/activityMng/eventEntryStatusList.ssg?menu=eventEntryStatusList" class="clickable" data-react-tarea-dtl-cd="t00058">이벤트 참여현황</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"상품Q&amp;A"}]'><a href="http://www.ssg.com/myssg/activityMng/postngQna.ssg?menu=postngQna" class="clickable" data-react-tarea-dtl-cd="t00058">상품 Q&amp;A</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"입고알림내역"}]'><a href="http://www.ssg.com/myssg/activityMng/itemNotiList.ssg?menu=itemNotiList" class="clickable" data-react-tarea-dtl-cd="t00058">입고알림 내역</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"우르르앵콜내역"}]'><a href="http://www.ssg.com/myssg/activityMng/urrEncoreList.ssg?menu=urrEncoreList" class="clickable" data-react-tarea-dtl-cd="t00058">우르르 앵콜내역</a></li>
                </ul>
        </li>
        <li class="cmmyssg_snb_item">
            <strong class="cmmyssg_snb_tit">나의 정보관리</strong>
            <ul class="cmmyssg_snb_sublst">
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"회원정보변경"}]'><a href="https://member.ssg.com/myssg/myinfoMng/password.ssg?menu=password" class="clickable" data-react-tarea-dtl-cd="t00058">회원정보 변경</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"비밀번호변경"}]'><a href="https://member.ssg.com/myssg/myinfoMng/changePwd.ssg?menu=changePwd" class="clickable" data-react-tarea-dtl-cd="t00058">비밀번호 변경</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"배송지관리"}]'><a href="https://member.ssg.com/myssg/myinfoMng/shpplocNacctMng.ssg?menu=shpplocNacctMng" class="clickable" data-react-tarea-dtl-cd="t00058">배송지 관리</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"맞춤정보관리"}]'><a href="http://www.ssg.com/myssg/activityMng/custFitInfoReg.ssg?menu=custFitInfoReg" class="clickable" data-react-tarea-dtl-cd="t00058">맞춤정보 관리</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"마케팅정보수신동의"}]'><a href="https://member.ssg.com/myssg/myinfoMng/infoRcvAgree.ssg?menu=infoRcvAgree" class="clickable" data-react-tarea-dtl-cd="t00058">마케팅 정보 수신 동의</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"개인정보제3자제공동의"}]'><a href="https://member.ssg.com/myssg/myinfoMng/infoUtlAgree.ssg?menu=infoUtlAgree" class="clickable" data-react-tarea-dtl-cd="t00058">개인정보 제3자 제공 동의</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"제휴멤버십관리"}]'><a href="https://member.ssg.com/myssg/alln/membership.ssg" class="clickable" data-react-tarea-dtl-cd="t00058">제휴 멤버십 관리</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"로그인정보관리"}]'><a href="https://member.ssg.com/myssg/myinfoMng/manageLoginInfo.ssg?menu=manageLoginInfo" class="clickable" data-react-tarea-dtl-cd="t00058">로그인 정보 관리</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"SNS연결설정"}'><a href="https://member.ssg.com/myssg/myinfoMng/snsConnSetting.ssg?menu=sns" class="clickable" data-react-tarea-dtl-cd="t00058">SNS 연결 설정</a></li>
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"회원탈퇴"}]'><a href="https://member.ssg.com/myssg/myinfoMng/memberSecession.ssg?menu=memberSecession" class="clickable" data-react-tarea-dtl-cd="t00058">회원 탈퇴</a></li>
            </ul>
        </li>
    </ul>
    <ul class="cmmyssg_quick" data-react-tarea-cd="00034_000000005">
        <li class="cmmyssg_quick_item" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"MY선물함"}]'><a href="https://pay.ssg.com/giftOrder/receiver/orderInfo.ssg" class="clickable" data-react-tarea-dtl-cd="t00058"><i class="icon ty_md icon_gift"></i>MY 선물함</a></li>
        <li class="cmmyssg_quick_item" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"이메일상담"}]'><a href="http://www.ssg.com/customer/counselForm.ssg" class="clickable" data-react-tarea-dtl-cd="t00058"><i class="icon ty_md icon_paper_pencil"></i>이메일 상담</a></li>
        <li class="cmmyssg_quick_item" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"이메일답변확인"}]'><a href="http://www.ssg.com/myssg/activityMng/counselList.ssg?menu=counselList" class="clickable" data-react-tarea-dtl-cd="t00058"><i class="icon ty_md icon_envelope"></i>이메일 답변확인</a></li>
        <li class="cmmyssg_quick_item" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"1:1고객센터톡"}]'><a href="javascript:moveCsbot('https://talk.ssg.com/webchat/?gateType=cs&siteNo=6005');" class="clickable" data-react-tarea-dtl-cd="t00058"><i class="icon ty_md icon_chat_individual"></i>1:1 고객센터톡</a></li>
    </ul>
</div>
<script type="text/javascript" defer="defer">
    function moveCsbot(moveUrl) {
        window.open(moveUrl, 'SSGTALK_WEB', 'width=830, height=650, resizable=yes');
    }

    $(function(){
        // 임직원 배우자 확인
        if ( $('.cmmyssg_snb > li:nth-child(4) > ul').find('#b2eSpouse').length == 0 ) {
            var callProtocal = "http://";
            var callUrl = settings.domain.ssg;

            if ( !settings.domain.isHttpFlag ) {
                callProtocal = "https://";
                callUrl = settings.domain.domain;
            }
            $.ajax({
                url : callProtocal + callUrl + "/myssg/comm/ajaxCheckB2eSpouse.ssg",
                async : false,
                cache : false,
                dataType : 'jsonp',
                success : function(data) {
                    if (data.resultCode == 'SHOW') {
                        // 성공
                        $('.cmmyssg_snb > li:nth-child(4) > ul').append('<li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text=\'[{"type":"text","value":"임직원가족개인정보제3자제공동의"}]\' id="b2eSpouse"><a href="https://member.ssg.com/myssg/myinfoMng/b2eSpousMbrAgree.ssg" class="clickable" data-react-tarea-dtl-cd="t00058">임직원 가족 <br/>개인정보 제3자 제공동의</a></li>')
                    }
                }
            });
        }
    });
</script>
<div id="content" class="content_myssg myssg_delivery">
	<h2 class="stit"><span>배송지 관리</span></h2>
	<div class="my_order_info">
		<div class="title">
			<p>
						기본배송지
			</p>		<!-- 수정하는 js로 이동 -->
					<a href="javascript:fn_modify('배송지 주소 번호 입력');" id="internalBtn" class="btn_cs ty1"><span>수정</span></a>
		</div>
				<p class="notranslate">회원의 우편번호<br>
					회원의 도로명 주소 : ~~~~ <br>
					회원의 지번 주소 : ~~~~ <br>
				</p>
	</div>
	<div id="del01" class="section data_tbl content active">
		<table border="1" class="data_table">
			<caption></caption>
			<colgroup>
				<col style="width:5%"/>
				<col style="width:12%"/>
				<col style="width:12%"/>
				<col/>
				<col style="width:13%"/>
				<col style="width:17%"/>
			</colgroup>
			<thead>
			<tr>
				<th scope="col"></th>
				<th scope="col">주소별칭</th>
				<th scope="col">받으실분</th>
				<th scope="col">배송주소</th>
				<th scope="col">연락처</th>
				<th scope="col">관리</th>
			</tr>
			</thead>
			<tbody>

			
				<tr>
					<td>
						<input type="radio" name="deliveryKr" class="radio" value="5430097" title="배송지 선택">
						<input type="hidden" name="shpplocSeq" id="shpplocSeq" value="5430097">
						<input type="hidden" name="bascShpplocYn" id="bascShpplocYn" value="Y">
					</td>
					<td>
						<span class="sub_tit warning">
							[기본배송지]
						</span>
						<strong class="notranslate">주소 별칭</strong>
					</td>
					<td class="notranslate">회원 이름</td>
					<td class="subject address">
						<p class="notranslate">(06131)<br>
							도로명 : 도로명 주소 <br>
							지번 : 지번 주소
						</p>
					</td>
					<td>010-9110-1878</td>
					<td>
						<!-- 기본 배송지 수정 팝업 띄우기 -->
						<a href="javascript:fn_modify('5430097');" class="btn_cs ty4">
							<span>수정</span>
						</a>
						
					</td>
				</tr>
				<tr>
					<td>
						<input type="radio" name="deliveryKr" class="radio" value="5698337" title="배송지 선택">
						<input type="hidden" name="shpplocSeq" id="shpplocSeq" value="5698337">
						<input type="hidden" name="bascShpplocYn" id="bascShpplocYn" value="N">
					</td>
					<td>
						<span class="sub_tit warning">	
						</span>
						<strong class="notranslate">주소 별칭</strong>
					</td>
					<td class="notranslate">회원 이름</td>
					<td class="subject address">
						<p class="notranslate">(01833)<br>
							도로명 : 도로명 주소 <br>
							지번 : 지번 주소
						</p>
					</td>
					<td>016-1231-1231</td>
					<td>
						<a href="javascript:fn_modify('5698337');" class="btn_cs ty4">
							<span>수정</span>
						</a>
							<a href="javascript:fn_shpplocDel('5698337');" class="btn_cs ty2">
								<span>삭제</span>
							</a>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="go_cancel">
			<!-- 새배송지 추가 화면으로 이동 newShippingWrite.do -->
			<button onclick="openSPIPopup()" class="btn_cs ty3"><span style="">새 배송지 추가</span></button>
		</div>
		<div class="paginate notranslate">
            <strong title="현재위치">1</strong>
            <a href="/myssg/myinfoMng/shpplocNacctMng.ssg?page=2">2</a>
		</div>
		<div class="button_btm">
				<button onclick="fn_setDefault(this)" class="btn_cs ty1"><span>기본 배송지 설정</span></button>
				<button onclick="fn_setOnlyOne()" class="btn_cs ty4"><span>이번만 배송지 설정</span></button>
			
		</div>
	</div>
</div>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/jquery.form.js"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.common.pluginset.js"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/lib/jquery.cookie.js"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.common.layout.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/commonUtil.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/member/js/common/ssgGnb.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/member/js/common/commJs.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.view.layerpopup.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/common/myssgGnb.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.common.component.js?v=20240424"></script>
<script>
	function openSPIPopup(){
		  var popupURL = "SSG_shippingPlace_insert.jsp";
		  
		  const width = 600;
		  const height = 600;

		  let left = (document.body.offsetWidth / 2) - (width / 2.5);
		  let tops = (document.body.offsetHeight / 2) - (height / 2.5);
		  
		  const popup = window.open(popupURL, 'SIPPopup', `width=\${width}, height=\${height}, left=\${left}, top=${tops}`);
		  
	}
</script>
<script>
function googleTranslateElementInit() {
    new google.translate.TranslateElement({
            pageLanguage: 'ko',
            includedLanguages: 'ko,en,zh-CN',
            autoDisplay: false
    }, 'google_translate_element');
}
</script>
<script type="text/javascript" src="//translate.google.co.kr/translate_a/element.js?cb=googleTranslateElementInit"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.view.translate.js?v=20240424"></script>
<script>
$(function(){
    var oSsgViewTranslate = new ssg.View.translate({
        i18nConfig: {
            name:'Messages'
    
            , path:'//sui.ssgcdn.com/ui/member/js/i18n/'
        
            , language:'ko'
            , mode:'both'
            , async: true
        }
    });    
    $('#utilLangSelect').on('changeTranslatedGnb', function(event, sDataLang){
        location.href = addLocaleParam(sDataLang);
    });
    
    oSsgViewTranslate.on('reloadTranslated', function(sDataLang) {
        var currentUrl = location.href,
            locale = getLocaleCode(sDataLang),
            localeStr = 'locale=' + locale;
        //changeTranslatedGnb 이벤트 발생후 페이지 전환 후 reloadTranslated 이벤트도 발생하는  경우가 있어서 방어코딩함
        //예) 중국어로 변환후 영어로 변환
        if(currentUrl.indexOf(localeStr) < 0) {
            location.href = addLocaleParam(sDataLang);
        }
    });  
    function addLocaleParam(sDataLang) {
        var currentUrl = location.href,
            sharpIndex = currentUrl.indexOf('#'),
            paramIndex = currentUrl.indexOf('?'),
            sharpStr = sharpIndex > -1 ? currentUrl.substring(sharpIndex, currentUrl.length) : '',
            urlRemovedSharp = sharpIndex > -1 ? currentUrl.substring(0, sharpIndex) : currentUrl, // '#' 제거된 url
            urlArray = [],
            baseUrl = '',
            paramStr = '';
            paramArray = [],
            newParamArray = [],
            resultUrl = '',
            locale = getLocaleCode(sDataLang);
        
        //파라미터가 없는 경우, #은 있을 수도 없을수도 있음
        if(paramIndex == -1) {
            resultUrl = urlRemovedSharp + '?locale=' + locale + sharpStr;
            return resultUrl;
        }
        //파라미터가 있는 경우, #은 있을 수도 없을수도 있음
        urlArray = urlRemovedSharp.split('?');
        baseUrl = urlArray[0];
        paramStr = urlArray[1];
        //locale 파라미터가 없는 경우에는 locale만 추가
        if(paramStr.indexOf('locale') == -1) {
            resultUrl = baseUrl + '?locale=' + locale + '&' + paramStr + sharpStr;
            return resultUrl;
        }
        //locale 파라미터가 있는 경우 제거하고 다시 붙임
        paramArray = paramStr.split('&');
        for(var x = 0; x < paramArray.length; x++) {
            if(paramArray[x].indexOf('locale') == -1) {
                newParamArray.push(paramArray[x]);
            }
        }
        resultUrl = baseUrl + '?locale=' + locale + (newParamArray.length > 0 ? '&' + newParamArray.join('&') : '') + sharpStr;
        return resultUrl;
    }
    function getLocaleCode(sDataLang) {
        var locale = '';
        if(sDataLang == 'en_US') {
            locale = 'en-US';
        } else if(sDataLang == 'zh_CN') {
            locale = 'zh-CN';
        } else {
            locale = 'ko-KR';
        }
        
        return locale;
    }
    // front 다국어
    var frontSsgViewTranslate = new ssg.View.translate({
        i18nConfig: {
            name:'Messages',
    
            path:'//sui.ssgcdn.com/ui/ssg/js/i18/front',
        
            language:'ko',
            mode:'both',
            async: true
        }
    });
});
</script><script type="text/javascript">
    try {
        var _dl = {
            "pcid" 				: "17120738278589137211812"
            , "fsid" 			: "scvysb5m084r5en6vg05"
            , "siteno"		    : "1001" // #443767 siteno 하드코딩 요청
            , "tarea" 			: ""
            , "log_type_flag" 	: "t"
            , "memberid" 		: "SSG.A9A9C919F04C2F990D153D1A0AD85A88"
            , "ga"				: "125"
            , "mbrgrdcd"		: "10"
            , "ckwhere"		    : "direct_ssg"
            , "bkwhere"		    : ""
        };
        $(window).load( function() {
            var doScript = function() {
                var scriptUrl = "";
                if ("prod" == "prod") {
                    scriptUrl = "//assets.adobedtm.com/c78a04c43d47/dedbe93b08df/launch-febc6f5bcace.min.js";
                } else {
                    scriptUrl = "//assets.adobedtm.com/c78a04c43d47/dedbe93b08df/launch-2754e6c3a1e9-development.min.js";
                }

                $.getScript(scriptUrl, function () {
                    if(typeof _satellite !== "undefined") {
                        if ("prod" == "qa") { // qa 로그
                            console.log("tracking_log : " + JSON.stringify(_dl));
                        }
                        _satellite.track("tracking_log", _dl);
                    }
                });
            }; 
            var analytics_sp = "N"
            if (analytics_sp === "Y") {
                doScript();
                // 이전 페이지 리액팅 처리
                var _dlSession = sessionStorage.getItem('_dl');
                if(_dlSession != 'undefined' && _dlSession != '' && _dlSession != null) {
                    if(typeof _satellite !== "undefined") {
                        var _dlObj = JSON.parse(_dlSession);
                        if ("prod" == "qa") { // qa 로그
                            console.log("tracking_log : " + _dlSession);
                        }
                        _satellite.track("tracking_log", _dlObj);
                    }
                    sessionStorage.removeItem('_dl');
                }
            } else if (analytics_sp === "") { // 대상 조회
                $.ajax({
                    type : "GET"
                    ,url : "/targeting/idSampling.ssg"
                    ,dataType : "json"
                    ,success : function(data) {
                        if (data.result_code === "200" && data.aa_target_id_yn === "Y") {
                            doScript();
                        }
                    }
                });
            }
        });
    } catch (e) {}
</script>
<script type="text/javascript" defer="defer">
	// 기본배송지 설정
	function fn_setDefault(el) {
		var shpplocSeq = "";
		
		/* 배송지가 체크되어있지 않으면 선택된 배송지 없다. */
		if ($("[name='deliveryKr']:checked").length == 0) {
			alert('선택된 배송지가 없습니다.');
			return;
		} else if ($("[name='deliveryKr']:checked").length > 1) {
			alert('1개의 배송지를 선택해 주세요.');
			return;
		}
		/* 체크된 배송지 밸류 들고와서 */
		shpplocSeq = $("[name='deliveryKr']:checked").val();
		
		/* json 타입으로 들고와서  */
		/* ajax 처리 */
		$.ajax({
			type: "GET",
			url: "/comm/popup/setBascShpploc.ssg",
			dataType: "jsonp",
			jsonp: "callBack",
			data: {"shpplocSeq": shpplocSeq},
			beforeSend: function () {
				$(el).attr("disabled", true);
			},
			success: function (map) {
				
				if (map["result"] == "98") {
					if (confirm(map["resultMsg"])) {
						fn_modify(shpplocSeq, cntry);
					}
					return;
				}

				if (map["CHNG_SALESTR_NM_YN"] === 'Y') {
					var param = 'type=I&bascShpplocYn=Y';
					param += '&emSaleStrNm=' + map["EM_SALESTR_NM"]
					param += '&trSaleStrNm=' + map["TR_SALESTR_NM"]
					param += '&newEmSaleStrNm=' + map["NEW_EM_SALESTR_NM"]
					param += '&newTrSaleStrNm=' + map["NEW_TR_SALESTR_NM"];

					popupWin('/comm/popup/saleStrChngNotc.ssg?' + encodeURI(param), '', 500, 380, 'no', 'no');
				} else {
					alert(map.resultMsg);
				}
				document.location.reload();
			},
			error: function (request, status, error) {
				console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
			}
		});
	}
	// 이번만 배송지 설정
	function fn_setOnlyOne() {
		var self = this;
		const shpplocSeq = $("input[name='deliveryKr']:checked").val();

		if (shpplocSeq === undefined) {
			alert("이번만 배송지로 설정할 배송지를 선택하여 주세요.");
			return;
		}
		$.ajax({
			type: "GET"
			, url: "/comm/popup/setOnceShpploc.ssg"
			, dataType: "jsonp"
			, jsonp: "callBack"
			, data: {"shpplocSeq": shpplocSeq}
			, beforeSend: function () {
				$('div.myodr_btnarea').find('button').attr('disabled', true);
			}
			, success: function (map) {
				if (map["result"] == "98") {
					if (confirm(map["resultMsg"])) {
						ShpplocList.update(shpplocSeq);
					}
					return;
				}
				alert(map.resultMsg);
				if (self.isNewApp) {
					sendAppCartUpdateMessage();
					setTimeout(function () {
						location.reload();
					}, 500);
					document.location.href = mobile.customUrl.prefix + "";
				} else {
					location.reload();
				}
			}
			, error: function (request, status, error) {
				alert('일시적인 장애로 서비스가 일시 중단되었습니다. 잠시 후 다시 시도해 주세요.');
				location.reload();
			}
		});
	}
	//배송지 추가
	function fn_newForm() {
		popupWin('/comm/popup/shpplocForm.ssg?callbackUrl=myssg', '', 640, 720, 'yes', 'no');
	}
	// 배송지 수정
	function fn_modify(shpplocSeq) {
		popupWin('/comm/popup/shpplocForm.ssg?callbackUrl=myssg&shpplocSeq=' + shpplocSeq, '', 640, 720, 'yes', 'no');
	}

	// 배송지 삭제
	function fn_shpplocDel(shpplocSeq) {
		let page = (typeof $.getUrlVar('page') === 'undefined') ? 1 : $.getUrlVar('page');

		let selectedDelivery = new Array();
		if (parseInt(shpplocSeq) > 0) {
			selectedDelivery.push(shpplocSeq);
		} else {
			$("input[name='deliveryKr']:checked").each(function () {
				selectedDelivery.push(this.value);
			});
		}

		if (selectedDelivery.length == 0) {
			alert('선택된 배송지가 없습니다.');
			return;
		}

		let extShpploc = function (callback) {
			callback(selectedDelivery);
		};
		if (confirm('선택한 배송지를 삭제하시겠습니까?')) {
			extShpploc(function (data) {
				$.ajax({
					type: 'POST',
					url: 'https://member.ssg.com/comm/popup/deleteMbrShpploc.ssg',
					dataType: 'jsonp',
					jsonp: "callBack",
					data: {'shpplocSeq': data},
					success: function (map) {
						alert(map.resultMsg);

						if ($('input[name=deliveryKr]').length == $('input[name=deliveryKr]:checked').length) {
							if (page == 1) {
								document.location.reload();
							} else {
								page = eval(page) - 1;
								document.location.href = '/myssg/myinfoMng/shpplocNacctMng.ssg?page=' + page;
							}
						} else {
							document.location.reload();
						}
					},
					error: function (request, status, error) {
						alert('배송지 삭제중 오류가 발생했습니다.');
						console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
					}
				});
			});
		}
	}
</script>
</div>
<%@ include file="footer.jsp" %>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/history.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/lib/jquery.tmpl.min.js"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/srch/rplc_keyword.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/srch/shrtc_keyword.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/srch/srch.ac.mdl.js?v=20240424"></script>
</body>
</html>