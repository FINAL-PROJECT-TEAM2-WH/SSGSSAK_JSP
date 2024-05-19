<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<link rel="shortcut icon" type="image/x-icon" href="//sui.ssgcdn.com/ui/common/img/ssg.ico">
	<title class="notranslate">
		MY SSG > 정보관리 > 회원탈퇴</title>

	






<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/scom.css?v=20240508"/>
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssg_global.css?v=20240508" />
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssg_layout.css?v=20240508" />
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/cs.css?v=20240508" />
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
            emSaleStrNo      : '2439',
            trSaleStrNo      : '2483',
            gmSaleStrNo      : '2449',
            gmSaleStrYn      : 'Y',
            emRsvtShppPsblYn : 'Y',
            ga : '126',
            sessionId : '',
            ip : '',
            shpplocMod : 'MY',
            shpplocModKey : '5367225',
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
        title : 'MY SSG &gt; 정보관리 &gt; 회원탈퇴'
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
	<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/m_ssg/css/ssg_iconset.css?v=20240508" />
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
                                    <a href="javascript:void(0)" class="ssg_logo_link">
                                        <span class="ssg_logo_slogan">믿고 사는 즐거움</span>
                                        <i class="logo logo_ssg_com" aria-hidden="true"></i>
                                        <span class="blind">SSG.COM</span>
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
                                        <a href="https://www.ssg.com" class="clickable" data-react-tarea="공통|몰이동_레이어|SSG_클릭" data-react-tarea-dtl-cd="t00060" onclick="javascript:setCommonGnbCookie('useGnbAdvertCk','',-1);">
                                            <span class="blind">SSG.COM</span>
                                        </a>
                                    </li>
                                    <li class="ssg_mall_menu_item ssg_mall_menu_item_emart" data-react-unit-type="text" data-react-unit-text='[{"type":"text","value":"이마트몰"}]'>
                                        <a href="https://emart.ssg.com" class="clickable" data-react-tarea="공통|몰이동_레이어|이마트몰_클릭" data-react-tarea-dtl-cd="t00060">
                                            <span class="blind">이마트몰</span>
                                        </a>
                                    </li>
                                    <li class="ssg_mall_menu_item" data-react-unit-type="text" data-react-unit-text='[{"type":"text","value":"신세계몰"}]'>
                                        <a href="https://shinsegaemall.ssg.com" class="clickable" data-react-tarea="공통|몰이동_레이어|신세계몰_클릭" data-react-tarea-dtl-cd="t00060">신세계몰</a>
                                    </li>
                                    <li class="ssg_mall_menu_item" data-react-unit-type="text" data-react-unit-text='[{"type":"text","value":"신세계백화점"}]'>
                                        <a href="https://department.ssg.com" class="clickable" data-react-tarea="공통|몰이동_레이어|신세계백화점_클릭" data-react-tarea-dtl-cd="t00060">신세계백화점</a>
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
                    <script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/srch/new/srch.ac.comm.v2.js?v=20240508"></script>
                    <script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/srch/lodash-2.4.1.js"></script>
                    <script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/srch/new/srch.ac.ssg.ui.v2.js?v=20240508"></script>
                    <!-- 급상승 검색어(s) -->
                    <div id="cmjumpRank" class="cmjump_rank renew notranslate">
                            <div class="cmjump_totalrank">
                                <div class="cmjump_totalrank_cont">
                                    <ul class="cmjump_rank_lst bx_slide">
                                        <li class="cmjump_rank_item">
                                                <a href="https://www.ssg.com/search.ssg?target=all&query=%eb%b3%b5%ec%88%ad%ec%95%84&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|복숭아">
                                                    <span class="cmjump_rank_num">1.</span>
                                                    <span class="cmjump_rank_tx">복숭아</span>
                                                    <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </span>
                                                </a>
                                            </li>
                                        <li class="cmjump_rank_item">
                                                <a href="https://www.ssg.com/search.ssg?target=all&query=%ec%97%ac%ec%84%b1%ec%83%8c%eb%93%a4&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|여성샌들">
                                                    <span class="cmjump_rank_num">2.</span>
                                                    <span class="cmjump_rank_tx">여성샌들</span>
                                                    <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </span>
                                                </a>
                                            </li>
                                        <li class="cmjump_rank_item">
                                                <a href="https://www.ssg.com/search.ssg?target=all&query=%eb%b0%9c%eb%a0%8c%ed%8b%b0%eb%85%b8&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|발렌티노">
                                                    <span class="cmjump_rank_num">3.</span>
                                                    <span class="cmjump_rank_tx">발렌티노</span>
                                                    <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </span>
                                                </a>
                                            </li>
                                        <li class="cmjump_rank_item">
                                                <a href="https://www.ssg.com/search.ssg?target=all&query=%ea%bc%bc%eb%8d%b0%ea%b0%80%eb%a5%b4%ec%86%a1&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|꼼데가르송">
                                                    <span class="cmjump_rank_num">4.</span>
                                                    <span class="cmjump_rank_tx">꼼데가르송</span>
                                                    <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </span>
                                                </a>
                                            </li>
                                        <li class="cmjump_rank_item">
                                                <a href="https://www.ssg.com/search.ssg?target=all&query=%ec%85%80%eb%a6%b0%eb%8a%90%ea%b0%80%eb%b0%a9&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|셀린느가방">
                                                    <span class="cmjump_rank_num">5.</span>
                                                    <span class="cmjump_rank_tx">셀린느가방</span>
                                                    <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </span>
                                                </a>
                                            </li>
                                        <li class="cmjump_rank_item">
                                                <a href="https://www.ssg.com/search.ssg?target=all&query=%ec%83%8c%eb%93%a4&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|샌들">
                                                    <span class="cmjump_rank_num">6.</span>
                                                    <span class="cmjump_rank_tx">샌들</span>
                                                    <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </span>
                                                </a>
                                            </li>
                                        <li class="cmjump_rank_item">
                                                <a href="https://www.ssg.com/search.ssg?target=all&query=%ed%98%b8%ec%b9%b4&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|호카">
                                                    <span class="cmjump_rank_num">7.</span>
                                                    <span class="cmjump_rank_tx">호카</span>
                                                    <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </span>
                                                </a>
                                            </li>
                                        <li class="cmjump_rank_item">
                                                <a href="https://www.ssg.com/search.ssg?target=all&query=%ec%85%94%ec%b8%a0&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|셔츠">
                                                    <span class="cmjump_rank_num">8.</span>
                                                    <span class="cmjump_rank_tx">셔츠</span>
                                                    <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </span>
                                                </a>
                                            </li>
                                        <li class="cmjump_rank_item">
                                                <a href="https://www.ssg.com/search.ssg?target=all&query=%ec%85%80%eb%a6%b0%eb%8a%90&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|셀린느">
                                                    <span class="cmjump_rank_num">9.</span>
                                                    <span class="cmjump_rank_tx">셀린느</span>
                                                    <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </span>
                                                </a>
                                            </li>
                                        <li class="cmjump_rank_item">
                                                <a href="https://www.ssg.com/search.ssg?target=all&query=cos&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|cos">
                                                    <span class="cmjump_rank_num">10.</span>
                                                    <span class="cmjump_rank_tx">cos</span>
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
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%eb%b3%b5%ec%88%ad%ec%95%84&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|복숭아">
                                                            <span class="cmjump_rank_num">1.</span>
                                                            <span class="cmjump_rank_tx">복숭아</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                    <span class="cmjump_rank_count">4</span>
                                                            <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                        </span>
                                                        </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%ec%97%ac%ec%84%b1%ec%83%8c%eb%93%a4&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|여성샌들">
                                                            <span class="cmjump_rank_num">2.</span>
                                                            <span class="cmjump_rank_tx">여성샌들</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                    <span class="cmjump_rank_count">5</span>
                                                            <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                        </span>
                                                        </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%eb%b0%9c%eb%a0%8c%ed%8b%b0%eb%85%b8&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|발렌티노">
                                                            <span class="cmjump_rank_num">3.</span>
                                                            <span class="cmjump_rank_tx">발렌티노</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                    <span class="cmjump_rank_count">3</span>
                                                            <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                        </span>
                                                        </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%ea%bc%bc%eb%8d%b0%ea%b0%80%eb%a5%b4%ec%86%a1&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|꼼데가르송">
                                                            <span class="cmjump_rank_num">4.</span>
                                                            <span class="cmjump_rank_tx">꼼데가르송</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                    <span class="cmjump_rank_count">6</span>
                                                            <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                        </span>
                                                        </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%ec%85%80%eb%a6%b0%eb%8a%90%ea%b0%80%eb%b0%a9&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|셀린느가방">
                                                            <span class="cmjump_rank_num">5.</span>
                                                            <span class="cmjump_rank_tx">셀린느가방</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                    <span class="cmjump_rank_count">2</span>
                                                            <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                        </span>
                                                        </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%ec%83%8c%eb%93%a4&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|샌들">
                                                            <span class="cmjump_rank_num">6.</span>
                                                            <span class="cmjump_rank_tx">샌들</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                    <span class="cmjump_rank_count">1</span>
                                                            <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                        </span>
                                                        </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%ed%98%b8%ec%b9%b4&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|호카">
                                                            <span class="cmjump_rank_num">7.</span>
                                                            <span class="cmjump_rank_tx">호카</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                    <span class="cmjump_rank_count">1</span>
                                                            <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                        </span>
                                                        </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%ec%85%94%ec%b8%a0&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|셔츠">
                                                            <span class="cmjump_rank_num">8.</span>
                                                            <span class="cmjump_rank_tx">셔츠</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                    <span class="cmjump_rank_count">2</span>
                                                            <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                        </span>
                                                        </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%ec%85%80%eb%a6%b0%eb%8a%90&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|셀린느">
                                                            <span class="cmjump_rank_num">9.</span>
                                                            <span class="cmjump_rank_tx">셀린느</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                    <span class="cmjump_rank_count">5</span>
                                                            <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                        </span>
                                                        </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=cos&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|cos">
                                                            <span class="cmjump_rank_num">10.</span>
                                                            <span class="cmjump_rank_tx">cos</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                    <span class="cmjump_rank_count">2</span>
                                                            <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                        </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                        </div>
                                        <div class="cmjump_lyr_panel" role="tabpanel">
                                            <ul class="cmjump_rank_lst">
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%eb%b0%b1%ed%8c%a9&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|백팩">
                                                            <span class="cmjump_rank_num">11.</span>
                                                            <span class="cmjump_rank_tx">백팩</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_count">3</span>
                                                        <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%ec%95%bc%ec%bf%a0%eb%a5%b4%ed%8a%b8&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|야쿠르트">
                                                            <span class="cmjump_rank_num">12.</span>
                                                            <span class="cmjump_rank_tx">야쿠르트</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_count">2</span>
                                                        <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%ed%83%80%ec%9d%b4%ed%8b%80%eb%a6%ac%ec%8a%a4%ed%8a%b8&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|타이틀리스트">
                                                            <span class="cmjump_rank_num">13.</span>
                                                            <span class="cmjump_rank_tx">타이틀리스트</span>
                                                            <span class="cmjump_rank_state cmjump_rank_same">
                                                <span class="cmjump_rank_count">-<span class="blind">변동없음</span></span>
                                                    </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%ed%81%ac%eb%a1%9c%ec%8a%a4%eb%b0%b1&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|크로스백">
                                                            <span class="cmjump_rank_num">14.</span>
                                                            <span class="cmjump_rank_tx">크로스백</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_count">3</span>
                                                        <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%ec%97%90%ec%bd%94%eb%b0%b1&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|에코백">
                                                            <span class="cmjump_rank_num">15.</span>
                                                            <span class="cmjump_rank_tx">에코백</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_count">4</span>
                                                        <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%ec%bd%94%eb%8b%a5&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|코닥">
                                                            <span class="cmjump_rank_num">16.</span>
                                                            <span class="cmjump_rank_tx">코닥</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_count">2</span>
                                                        <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%eb%85%b8%eb%b8%8c%eb%9e%9c%eb%93%9c+%ec%98%ac%eb%a6%ac%eb%b8%8c%ec%9c%a0&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|노브랜드 올리브유">
                                                            <span class="cmjump_rank_num">17.</span>
                                                            <span class="cmjump_rank_tx">노브랜드 올리브유</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_count">1</span>
                                                        <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%eb%a7%88%ec%8b%9c%eb%aa%a8%eb%91%90%eb%9d%a0&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|마시모두띠">
                                                            <span class="cmjump_rank_num">18.</span>
                                                            <span class="cmjump_rank_tx">마시모두띠</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_count">4</span>
                                                        <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%ec%95%84%eb%af%b8&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|아미">
                                                            <span class="cmjump_rank_num">19.</span>
                                                            <span class="cmjump_rank_tx">아미</span>
                                                            <span class="cmjump_rank_state cmjump_rank_same">
                                                <span class="cmjump_rank_count">-<span class="blind">변동없음</span></span>
                                                    </a>
                                                    </li>
                                                <li class="cmjump_rank_item">
                                                        <a href="https://www.ssg.com/search.ssg?target=all&query=%ed%95%8f%ed%94%8c%eb%9e%8d&src_area=item_list" class="cmjump_rank_link clickable" data-react-tarea="몰공통|GNB|급상승검색어_클릭|핏플랍">
                                                            <span class="cmjump_rank_num">20.</span>
                                                            <span class="cmjump_rank_tx">핏플랍</span>
                                                            <span class="cmjump_rank_state cmjump_rank_up">
                                                <span class="cmjump_rank_count">1</span>
                                                        <span class="cmjump_rank_ico cmicon"><i class="icon ty_xs icon_caret_up_s_red"></i><span class="blind">상승</span></span>
                                                    </a>
                                                    </li>
                                                </ul>
                                        </div>
                                    </div>
                                    <div class="cmjump_keyword_info">2024-05-19 00:00 기준</div>
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
                    <h2 class="cmmyssg_user_tit" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"tarea_addt_val","value":"이름"}]'>
                        <a href="http://www.ssg.com/myssg/main.ssg" class="cmmyssg_user_tittx clickable" data-react-tarea-dtl-cd="t00060"><span class="cmmyssg_user_titname">원대안 님</span>의 My SSG</a>
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
                <li class="cmmyssg_snb_subitem" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"영수증통합조회"}]'><a href="https://pay.ssg.com/myssg/orderEvidInfo.ssg" class="clickable" data-react-tarea-dtl-cd="t00058">영수증 통합 조회</a></li>
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


















<!-- 회원유형 확인 -->


<div id="content" class="content_myssg">
    <h2 class="stit">
        <span>회원탈퇴</span>
    </h2>
    <div class="form_section">
        <div class="content_intro">
            <h3>탈퇴 유의사항</h3>
        </div>
        <div class="content_leave">
            <div class="section">

                <div class="tit_txt">
                    <h4>SSG MONEY 소멸</h4>
                </div>
                <ul class="info_lst">
                    <li>회원탈퇴 시 보유하고 계신 SSG MONEY가 자동 소멸되며 복원되지 않습니다.</li>
                    <li>출금 가능 금액이 있으신 경우 고객센터(1577-3419)로 출금 신청 후 탈퇴해주세요.</li>
                    <li><span class="tx_point">SSGPAY서비스 이용 회원은 SSG.COM회원탈퇴를 하시더라도 이마트, 신세계백화점, 스타벅스 등 SSGPAY가맹점에서<br/>SSG MONEY를 계속 사용하실 수 있습니다.</span></li>
                </ul>

                
                <div class="tbl_sec">
                    <div class="tbl_tit">나의 SSG MONEY</div>
                    <div class="tbl_wrap">
                        <table>
                            <caption>현재 사용 가능 금액 안내 테이블</caption>
                            <colgroup>
                                <col style="width: 33.3%">
                                
                                <col style="width: 33.3%">
                            </colgroup>
                            <thead>
                            <tr>
                                <th scope="col"><span class="in">사용 가능 금액</span></th>
                                
                                <th scope="col"><span class="in">출금 가능 금액</span></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><span class="in"><strong>0</strong>원</span></td>
                                
                                <td><span class="in"><strong>0</strong>원</span></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
            <div class="section">
                <div class="tit_txt">
                    <h4>회원 재가입 제한</h4>
                </div>
                <ul class="info_lst">
                    <li>회원탈퇴 후 재가입 시 신규회원으로 가입되며, 탈퇴 전의 회원정보, 주문정보, 마일리지, 쿠폰은 복원되지
                        않습니다.
                    </li>
                    <li>사이트 정책에 따라 최대 30일 동안 회원 재가입이 불가능합니다.</li>
                </ul>
                <div class="tbl_sec">
                    <div class="tbl_tit">회원 재가입 유예기간</div>
                    <div class="tbl_wrap">
                        <table>
                            <caption>회원 재가입 유예기간 안내 테이블</caption>
                            <colgroup>
                                <col style="width: 50%">
                                <col style="width: 50%">
                            </colgroup>
                            <thead>
                            <tr>
                                <th scope="col"><span class="in">주문이력이 없는 회원</span></th>
                                <th scope="col"><span class="in">주문이력이 있는 회원</span></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><span class="in">5일 이내</span></td>
                                <td><span class="in">30일 이내</span></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="section">
                <div class="tit_txt">
                    <h4>개인정보 파기</h4>
                </div>
                <ul class="info_lst">
                    <li>개인정보는 회원 재가입 유예기간 경과 후 즉시 파기됩니다.</li>
                    <li>단, 전자상거래법, 통신비밀보호법 등 관련 법령의 규정에 의하여 아래의 개인정보가 일정기간 보관됩니다.</li>
                </ul>
                <div class="tbl_sec">
                    <div class="tbl_wrap ty2">
                        <table>
                            <caption>개인정보 파기 기간 안내 테이블</caption>
                            <colgroup>
                                <col style="width: 50%">
                                <col style="width: 50%">
                            </colgroup>
                            <tbody>
                            <tr>
                                <th><span class="in">계약 또는 청약철회 등에 관한 기록</span></th>
                                <td><span class="in">5년</span></td>
                            </tr>
                            <tr>
                                <th><span class="in">대금결제 및 재화 등의 공급에 관한 기록</span></th>
                                <td><span class="in">5년</span></td>
                            </tr>
                            <tr>
                                <th><span class="in">소비자의 불만 또는 분쟁처리에 관한 기록</span></th>
                                <td><span class="in">3년</span></td>
                            </tr>
                            <tr>
                                <th><span class="in">웹사이트 방문 기록</span></th>
                                <td><span class="in">3개월</span></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            
                <div class="section">
                    <div class="tit_txt">
                        <h4>통합 ID 서비스</h4>
                    </div>
                    <ul class="info_lst">
                        <li>회원탈퇴 시 SSG.COM 회원탈퇴가 되며, 가입되어 있는 신세계포인트 통합 ID로 SSG.COM을 제외한 신세계포인트닷컴 및 그룹사 사이트를 계속 이용하실 수 있습니다.</li>
                        <li>아이디 변경을 원하시는 경우, 신세계포인트 통합 ID 서비스 탈퇴 후 재가입을 통해 새로운 아이디로 가입하실 수 있습니다.</li>
                    </ul>
                </div>
            
        </div>
    </div>
    <div class="form_section">
        <div class="content_intro">
            <h3>탈퇴 사유 및 개선점(선택)</h3>
        </div>
        <div class="content_leave">
            <div class="leave_textarea">
                <textarea id="recommend_improvement" maxlength=100 placeholder="SSG.COM에 해주고 싶은 말씀을 자유롭게 입력해주세요.(100자 이내)"></textarea>
            </div>
        </div>
    </div>
    <div class="form_section" data-reactingV2-key="00195_000000743|t00000|1">
        <div class="inp_sec">
			<span class="free_selected_agree">
				<input type="checkbox" id="withdrawal" name="withdrawal">
				<label for="withdrawal">회원탈퇴 유의사항을 모두 확인하였으며, SSG.COM 회원탈퇴에 동의합니다.</label>
			</span>
        </div>
    </div>
    <div class="cmem_btn_area">
        <a href="javascript:void(0)" id="submitBtn" class="cs_btn cmem_btn_orange">확인</a>
    </div>

    
        <div class="form_section ty_line" data-reactingV2-key="00195_000000744|t00000|1">
            <div class="content_intro">
                <h3>신세계포인트 통합 ID 서비스 탈퇴</h3>
            </div>
            <div class="content_leave">
                <p class="info_txt">신세계포인트닷컴 및 가입되어 있는 신세계포인트 통합 ID 서비스를 탈퇴하시려면 '통합 ID 서비스 탈퇴' 버튼을 클릭해주세요.</p>
            </div>
        </div>
        <div class="cmem_btn_area">
            <a href="javascript:goSsgpnt();" class="cs_btn cmem_btn_blk" data-reactingV2-key="00195_000000744|t00060|1">통합ID 서비스 탈퇴 </a>
        </div>
    

</div>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/jquery.form.js"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.common.pluginset.js"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/lib/jquery.cookie.js"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.common.layout.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/commonUtil.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/member/js/common/ssgGnb.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/member/js/common/commJs.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.view.layerpopup.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/common/myssgGnb.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.common.component.js?v=20240508"></script>

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
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.view.translate.js?v=20240508"></script>
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
            "pcid" 				: "17160355192210883212098"
            , "fsid" 			: "sdos3k5m084r2an6vg04"
            , "siteno"		    : "1001" // #443767 siteno 하드코딩 요청
            , "tarea" 			: ""
            , "log_type_flag" 	: "t"
            , "memberid" 		: "SSG.DB3722BF41D7D913318C4FC8EA8EC0BA"
            , "ga"				: "126"
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

<script type="text/javascript" src="/comm/js/memberLoading.ssg"></script>



































<script type="text/javascript">
    +function (a, p, P, b, y) {
        a.braze = {};
        a.brazeQueue = [];
        for (var s = "BrazeSdkMetadata DeviceProperties Card Card.prototype.dismissCard Card.prototype.removeAllSubscriptions Card.prototype.removeSubscription Card.prototype.subscribeToClickedEvent Card.prototype.subscribeToDismissedEvent Card.fromContentCardsJson Banner CaptionedImage ClassicCard ControlCard ContentCards ContentCards.prototype.getUnviewedCardCount Feed Feed.prototype.getUnreadCardCount ControlMessage InAppMessage InAppMessage.SlideFrom InAppMessage.ClickAction InAppMessage.DismissType InAppMessage.OpenTarget InAppMessage.ImageStyle InAppMessage.Orientation InAppMessage.TextAlignment InAppMessage.CropType InAppMessage.prototype.closeMessage InAppMessage.prototype.removeAllSubscriptions InAppMessage.prototype.removeSubscription InAppMessage.prototype.subscribeToClickedEvent InAppMessage.prototype.subscribeToDismissedEvent InAppMessage.fromJson FullScreenMessage ModalMessage HtmlMessage SlideUpMessage User User.Genders User.NotificationSubscriptionTypes User.prototype.addAlias User.prototype.addToCustomAttributeArray User.prototype.addToSubscriptionGroup User.prototype.getUserId User.prototype.incrementCustomUserAttribute User.prototype.removeFromCustomAttributeArray User.prototype.removeFromSubscriptionGroup User.prototype.setCountry User.prototype.setCustomLocationAttribute User.prototype.setCustomUserAttribute User.prototype.setDateOfBirth User.prototype.setEmail User.prototype.setEmailNotificationSubscriptionType User.prototype.setFirstName User.prototype.setGender User.prototype.setHomeCity User.prototype.setLanguage User.prototype.setLastKnownLocation User.prototype.setLastName User.prototype.setPhoneNumber User.prototype.setPushNotificationSubscriptionType InAppMessageButton InAppMessageButton.prototype.removeAllSubscriptions InAppMessageButton.prototype.removeSubscription InAppMessageButton.prototype.subscribeToClickedEvent FeatureFlag FeatureFlag.prototype.getStringProperty FeatureFlag.prototype.getNumberProperty FeatureFlag.prototype.getBooleanProperty automaticallyShowInAppMessages destroyFeed hideContentCards showContentCards showFeed showInAppMessage toggleContentCards toggleFeed changeUser destroy getDeviceId initialize isPushBlocked isPushPermissionGranted isPushSupported logCardClick logCardDismissal logCardImpressions logContentCardImpressions logContentCardClick logContentCardsDisplayed logCustomEvent logFeedDisplayed logInAppMessageButtonClick logInAppMessageClick logInAppMessageHtmlClick logInAppMessageImpression logPurchase openSession requestPushPermission removeAllSubscriptions removeSubscription requestContentCardsRefresh requestFeedRefresh refreshFeatureFlags requestImmediateDataFlush enableSDK isDisabled setLogger setSdkAuthenticationSignature addSdkMetadata disableSDK subscribeToContentCardsUpdates subscribeToFeedUpdates subscribeToInAppMessage subscribeToSdkAuthenticationFailures toggleLogging unregisterPush wipeData handleBrazeAction subscribeToFeatureFlagsUpdates getAllFeatureFlags".split(" "), i = 0; i < s.length; i++) {
            for (var m = s[i], k = a.braze, l = m.split("."), j = 0; j < l.length - 1; j++) k = k[l[j]];
            k[l[j]] = (new Function("return function " + m.replace(/\./g, "_") + "(){window.brazeQueue.push(arguments); return true}"))()
        }
        window.braze.getCachedContentCards = function () {
            return new window.braze.ContentCards
        };
        window.braze.getCachedFeed = function () {
            return new window.braze.Feed
        };
        window.braze.getUser = function () {
            return new window.braze.User
        };
        window.braze.getFeatureFlag = function () {
            return new window.braze.FeatureFlag
        };
        (y = p.createElement(P)).type = 'text/javascript';
        y.src = 'https://js.appboycdn.com/web-sdk/4.6/braze.min.js';
        y.async = 1;
        (b = p.getElementsByTagName(P)[0]).parentNode.insertBefore(y, b)
    }(window, document, 'script');
</script>

<script type="text/javascript">
    try {
        let initialized = braze.initialize('4a23e2c2-9255-4dd0-97c0-64c0e4036eb5', {
            baseUrl: 'sdk.iad-05.braze.com',
            enableLogging: false
        });

        if (initialized) {
            let external_id = "";

            // 적용 순위 : 마케팅식별키 > PCID
            let mktgSvcMbrId = '';
            if (mktgSvcMbrId) {
                external_id = mktgSvcMbrId;
            } else if ($.cookie && $.cookie('PCID')) {
                external_id = $.cookie('PCID');
            }

            if (external_id) {
                braze.changeUser(external_id);
            }

            braze.automaticallyShowInAppMessages();
            braze.openSession();
        }
    } catch (e) {

    }
</script>


<script type="text/javascript">
    try {
        var reactingV2MapUtil = (function () {
            const reactingV2Map = {
                
                '00183_000000734|t00000|1': {'tarea_cd_old': '회원가입|통합회원가입|영역노출', 'unit_text': ''},
                '00183_000000734|t00060|1': {'tarea_cd_old': '회원가입|통합회원가입|통합회원가입버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "통합회원가입"}]},
                '00183_000000734|t00060|2': {'tarea_cd_old': '회원가입|통합회원가입|멤버십동시가입버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십동시가입"}]},
                '00183_000000735|t00000|1': {'tarea_cd_old': '회원가입|간편회원가입|영역노출', 'unit_text': ''},
                '00183_000000735|t00060|1': {'tarea_cd_old': '회원가입|간편회원가입|간편회원가입버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "이메일간편회원가입"}]},
                '00183_000000735|t00060|2': {'tarea_cd_old': '회원가입|간편회원가입|간편회원가입버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "네이버간편회원가입"}]},
                '00183_000000735|t00060|3': {'tarea_cd_old': '회원가입|간편회원가입|간편회원가입버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "카카오간편회원가입"}]},
                '00183_000000735|t00060|4': {'tarea_cd_old': '회원가입|간편회원가입|간편회원가입버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "애플간편회원가입"}]},
                '00183_000000736|t00000|1': {'tarea_cd_old': '회원가입|사업자회원가입|영역노출', 'unit_text': ''},
                '00183_000000736|t00060|1': {'tarea_cd_old': '회원가입|사업자회원가입|사업자회원가입버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "사업자회원가입"}]},
                '00184_000000737|t00000|1': {'tarea_cd_old': '회원가입완료|가입완료안내|영역노출', 'unit_text': ''},
                '00184_000000737|t00060|1': {'tarea_cd_old': '회원가입완료|가입완료안내|이동버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "가입완료이동"}]},
                '00183_000000837|t00000|1': {'tarea_cd_old': '회원가입|통합회원가입본인인증|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "통합회원가입"}]},
                '00183_000000837|t00000|2': {'tarea_cd_old': '회원가입|통합회원가입본인인증|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십동시가입"}]},
                '00183_000000837|t00060|1': {'tarea_cd_old': '회원가입|통합회원가입본인인증|휴대폰본인인증_클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "휴대폰본인인증"}]},
                '00183_000000837|t00060|2': {'tarea_cd_old': '회원가입|통합회원가입본인인증|카드본인인증_클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "카드본인인증"}]},
                '00183_000000837|t00060|3': {'tarea_cd_old': '회원가입|통합회원가입본인인증|임직원인증_클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "임직원인증"}]},
                '00183_000000837|t00060|4': {'tarea_cd_old': '회원가입|통합회원가입본인인증|재가입제한_클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "재가입제한"}]},
                '00183_000000838|t00000|1': {'tarea_cd_old': '회원가입|통합회원가입본인인증|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "신세계포인트통합회원가입"}]},
                '00183_000000838|t00000|2': {'tarea_cd_old': '회원가입|통합회원가입본인인증|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "통합회원가입"}]},
                '00183_000000838|t00000|3': {'tarea_cd_old': '회원가입|통합회원가입본인인증|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십동시가입신세계포인트통합회원가입"}]},
                '00183_000000838|t00000|4': {'tarea_cd_old': '회원가입|통합회원가입본인인증|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십동시가입통합회원가입"}]},
                '00183_000000838|t00060|1': {'tarea_cd_old': '회원가입|통합회원가입약관동의|신세계포인트통합회원약관동의_클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "신세계포인트통합회원가입"}]},
                '00183_000000838|t00060|2': {'tarea_cd_old': '회원가입|통합회원가입약관동의|통합회원약관동의_클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "통합회원가입"}]},
                '00183_000000838|t00060|3': {'tarea_cd_old': '회원가입|통합회원가입약관동의|신세계포인트통합회원멤버십약관동의_클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십동시가입신세계포인트통합회원가입"}]},
                '00183_000000838|t00060|4': {'tarea_cd_old': '회원가입|통합회원가입약관동의|통합회원멤버십약관동의_클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십동시가입통합회원가입"}]},
                '00183_000000839|t00000|1': {'tarea_cd_old': '회원가입|기가입안내|영역노출', 'unit_text': ''},
                '00183_000000839|t00060|1': {'tarea_cd_old': '회원가입|기가입안내|로그인버튼_클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "로그인하기"}]},
                '00183_000000839|t00060|2': {'tarea_cd_old': '회원가입|기가입안내|비밀번호변경버튼_클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "비밀번호변경하기"}]},
                '00183_000000840|t00000|1': {'tarea_cd_old': '회원가입|휴면회원복원|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "통합회원휴면복원"}]},
                '00183_000000840|t00000|2': {'tarea_cd_old': '회원가입|휴면회원복원|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "간편회원휴면복원"}]},
                '00183_000000840|t00000|3': {'tarea_cd_old': '회원가입|휴면회원복원|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "사업자회원휴면복원"}]},
                '00183_000000840|t00060|1': {'tarea_cd_old': '회원가입|휴면회원복원|휴면복원버튼_클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "통합회원휴면복원"}]},
                '00183_000000840|t00060|2': {'tarea_cd_old': '회원가입|휴면회원복원|휴면복원버튼_클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "간편회원휴면복원"}]},
                '00183_000000840|t00060|3': {'tarea_cd_old': '회원가입|휴면회원복원|휴면복원버튼_클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "사업자회원휴면복원"}]},
                '00185_000000275|t00000|1': {'tarea_cd_old': '멤버십약관동의|버튼영역|영역노출', 'unit_text': ''},
                '00185_000000275|t00000|2': {'tarea_cd_old': '멤버십약관동의|버튼영역|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "ReturnUrlY"}]},
                '00185_000000275|t00060|1': {'tarea_cd_old': '멤버십약관동의|버튼영역|가입버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십가입"}]},
                '00185_000000738|t00060|1': {'tarea_cd_old': '멤버십약관동의|무료체험레이어팝업|무료체험버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십무료체험"}]},
                '00185_000000738|t00060|2': {'tarea_cd_old': '멤버십약관동의|무료체험레이어팝업|가입취소버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십가입취소"}]},
                '00185_000000739|t00060|1': {'tarea_cd_old': '멤버십약관동의|즉시결제레이어팝업|즉시결제버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십즉시결제"}]},
                '00185_000000739|t00060|2': {'tarea_cd_old': '멤버십약관동의|즉시결제레이어팝업|가입취소버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십가입취소"}]},
                '00185_000000740|t00060|1': {'tarea_cd_old': '멤버십약관동의|전환레이어팝업|전환버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십지마켓전환"}]},
                '00185_000000740|t00060|2': {'tarea_cd_old': '멤버십약관동의|전환레이어팝업|전환취소버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십지마켓전환취소"}]},
                '00185_000000741|t00060|1': {'tarea_cd_old': '멤버십약관동의|재가입불가레이어팝업|확인버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십재가입불가확인"}]},
                '00186_000000275|t00000|1': {'tarea_cd_old': '멤버십결제|버튼영역|영역노출', "unit_text": [{"type": "tarea_addt_val", "value": ""}]},
                '00186_000000275|t00000|2': {'tarea_cd_old': '멤버십결제|버튼영역|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "ReturnUrlY"}]},
                '00186_000000275|t00060|1': {'tarea_cd_old': '멤버십결제|버튼영역|가입버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십가입"}]},
                '00187_000000275|t00000|1': {'tarea_cd_old': '멤버십가입완료|버튼영역|버튼영역노출', 'unit_text': ''},
                '00187_000000275|t00000|2': {'tarea_cd_old': '멤버십가입완료|버튼영역|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": ""}]},
                '00187_000000275|t00060|1': {'tarea_cd_old': '멤버십가입완료|버튼영역|쿠폰받기버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "쿠폰받기"}]},
                '00188_000000275|t00000|1': {'tarea_cd_old': '멤버십해지안내|버튼영역|영역노출', 'unit_text': ''},
                '00188_000000275|t00060|1': {'tarea_cd_old': '멤버십해지안내|버튼영역|해지버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십해지"}]},
                '00188_000000275|t00060|2': {'tarea_cd_old': '멤버십해지안내|버튼영역|유지버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십유지"}]},
                '00189_000000275|t00000|1': {'tarea_cd_old': '멤버십해지유형선택|버튼영역|영역노출', 'unit_text': ''},
                '00189_000000275|t00060|1': {'tarea_cd_old': '멤버십해지유형선택|버튼영역|해지버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십해지"}]},
                '00189_000000275|t00060|2': {'tarea_cd_old': '멤버십해지유형선택|버튼영역|유지버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십유지"}]},
                '00190_000000275|t00000|1': {'tarea_cd_old': '멤버십해지예약|버튼영역|영역노출', 'unit_text': ''},
                '00190_000000275|t00060|1': {'tarea_cd_old': '멤버십해지예약|버튼영역|해지예약버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십해지예약"}]},
                '00190_000000275|t00060|2': {'tarea_cd_old': '멤버십해지예약|버튼영역|유지버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십유지"}]},
                '00191_000000275|t00000|1': {'tarea_cd_old': '멤버십즉시해지|버튼영역|영역노출', 'unit_text': ''},
                '00191_000000275|t00060|1': {'tarea_cd_old': '멤버십즉시해지|버튼영역|즉시해지버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십즉시해지"}]},
                '00191_000000275|t00060|2': {'tarea_cd_old': '멤버십즉시해지|버튼영역|유지버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십유지"}]},
                '00194_000000275|t00000|1': {'tarea_cd_old': '정보수신동의|버튼영역|영역노출', 'unit_text': ''},
                '00194_000000275|t00060|1': {'tarea_cd_old': '정보수신동의|버튼영역|변경버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "변경"}]},
                '00195_000000743|t00000|1': {'tarea_cd_old': '회원탈퇴|SSG.COM탈퇴|영역노출', 'unit_text': ''},
                '00195_000000743|t00060|1': {'tarea_cd_old': '회원탈퇴|SSG.COM탈퇴|버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "SSG탈퇴"}]},
                '00195_000000744|t00000|1': {'tarea_cd_old': '회원탈퇴|신세계포인트탈퇴|영역노출', 'unit_text': ''},
                '00195_000000744|t00060|1': {'tarea_cd_old': '회원탈퇴|신세계포인트탈퇴|버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "신세계포인트탈퇴"}]},
                '00198_000000750|t00000|1': {'tarea_cd_old': '통합회원가입정보입력|가입버튼영역|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "통합회원가입"}]},
                '00198_000000750|t00000|2': {'tarea_cd_old': '통합회원가입정보입력|가입버튼영역|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십동시가입|01가입가능"}]},
                '00198_000000750|t00000|3': {'tarea_cd_old': '통합회원가입정보입력|가입버튼영역|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십동시가입|02타사이트가입"}]},
                '00198_000000750|t00000|4': {'tarea_cd_old': '통합회원가입정보입력|가입버튼영역|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십동시가입|03스마일클럽전환"}]},
                '00198_000000750|t00000|5': {'tarea_cd_old': '통합회원가입정보입력|가입버튼영역|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십동시가입|04재가입제한"}]},
                '00198_000000750|t00000|6': {'tarea_cd_old': '통합회원가입정보입력|가입버튼영역|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십동시가입|05시스템점검중"}]},
                '00198_000000750|t00000|7': {'tarea_cd_old': '통합회원가입정보입력|가입버튼영역|영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "멤버십동시가입|06조회실패"}]},
                '00198_000000750|t00060|1': {'tarea_cd_old': '통합회원가입정보입력|가입버튼영역|가입버튼선택', 'unit_text': [{"type": "tarea_addt_val", "value": "통합회원가입"}]},
                '00199_000000750|t00000|1': {'tarea_cd_old': '간편회원가입정보입력|가입버튼영역|영역노출', 'unit_text': ''},
                '00199_000000750|t00060|1': {'tarea_cd_old': '간편회원가입정보입력|가입버튼영역|가입버튼선택', 'unit_text': [{"type": "tarea_addt_val", "value": "가입"}]},
                '00200_000000750|t00000|1': {'tarea_cd_old': '사업자회원가입정보입력|가입버튼영역|영역노출', 'unit_text': ''},
                '00200_000000750|t00060|1': {'tarea_cd_old': '사업자회원가입정보입력|가입버튼영역|가입버튼선택', 'unit_text': [{"type": "tarea_addt_val", "value": "가입"}]},
                '00201_000000801|t00000|1': {'tarea_cd_old': '로그인|휴대폰번호로로그인|영역노출', 'unit_text': ''},
                '00201_000000801|t00060|1': {'tarea_cd_old': '로그인|휴대폰번호로로그인|버튼클릭', 'unit_text': [{"type": "tarea_addt_val", "value": "휴대폰번호로로그인"}]},

                '00183_000000950|t00000|1': {'tarea_cd_old': '회원가입|공통_가입유형선택|영역노출', 'unit_text': ''},
                '00183_000000950|t00060|1': {'tarea_cd_old': '회원가입|공통_가입유형선택|개인회원가입_버튼선택', 'unit_text': [{"type": "tarea_addt_val", "value": "개인회원가입_버튼선택"}]},
                '00183_000000950|t00060|2': {'tarea_cd_old': '회원가입|공통_가입유형선택|사업자회원가입_버튼선택', 'unit_text': [{"type": "tarea_addt_val", "value": "사업자회원가입_버튼선택"}]},
                '00183_000000951|t00000|1': {'tarea_cd_old': '회원가입|사업자회원_약관동의|영역노출', 'unit_text': ''},
                '00183_000000951|t00060|1': {'tarea_cd_old': '회원가입|사업자회원_약관동의|사업자인증_버튼선택', 'unit_text': [{"type": "tarea_addt_val", "value": "사업자인증_버튼선택"}]},
                '00183_000000952|t00000|1': {'tarea_cd_old': '회원가입|사업자회원_정보입력|사업자정보확인_영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "사업자정보확인_영역노출	"}]},
                '00183_000000952|t00060|1': {'tarea_cd_old': '회원가입|사업자회원_정보입력|사업자정보확인_버튼선택', 'unit_text': [{"type": "tarea_addt_val", "value": "사업자정보확인_버튼선택"}]},
                '00183_000000952|t00000|2': {'tarea_cd_old': '회원가입|사업자회원_정보입력|휴대폰번호입력_영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "휴대폰번호입력_영역노출"}]},
                '00183_000000952|t00060|2': {'tarea_cd_old': '회원가입|사업자회원_정보입력|휴대폰번호입력_버튼선택', 'unit_text': [{"type": "tarea_addt_val", "value": "휴대폰번호입력_버튼선택"}]},
                '00183_000000952|t00000|3': {'tarea_cd_old': '회원가입|사업자회원_정보입력|로그인정보입력_영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "로그인정보입력_영역노출"}]},
                '00183_000000952|t00060|3': {'tarea_cd_old': '회원가입|사업자회원_정보입력|로그인정보입력_버튼선택', 'unit_text': [{"type": "tarea_addt_val", "value": "로그인정보입력_버튼선택"}]},
                '00183_000000952|t00000|4': {'tarea_cd_old': '회원가입|사업자회원_정보입력|담당자정보입력_영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "담당자정보입력_영역노출"}]},
                '00183_000000952|t00060|4': {'tarea_cd_old': '회원가입|사업자회원_정보입력|담당자정보입력_버튼선택', 'unit_text': [{"type": "tarea_addt_val", "value": "담당자정보입력_버튼선택"}]},
                '00183_000000953|t00000|1': {'tarea_cd_old': '회원가입|사업자회원_마케팅동의|영역노출', 'unit_text': ''},
                '00183_000000953|t00060|1': {'tarea_cd_old': '회원가입|사업자회원_마케팅동의|동의저장_버튼선택', 'unit_text': [{"type": "tarea_addt_val", "value": "동의저장_버튼선택"}]},
                '00183_000000954|t00000|1': {'tarea_cd_old': '회원가입|사업자회원_기가입안내|영역노출', 'unit_text': ''},
                '00183_000000954|t00060|1': {'tarea_cd_old': '회원가입|사업자회원_기가입안내|로그인하기_버튼선택', 'unit_text': [{"type": "tarea_addt_val", "value": "로그인하기_버튼선택"}]},
                '00183_000000954|t00060|2': {'tarea_cd_old': '회원가입|사업자회원_기가입안내|아이디찾기_버튼선택', 'unit_text': [{"type": "tarea_addt_val", "value": "아이디찾기_버튼선택"}]},
                '00183_000000954|t00000|2': {'tarea_cd_old': '회원가입|사업자회원_기가입안내|추가가입_영역노출', 'unit_text': [{"type": "tarea_addt_val", "value": "추가가입_영역노출"}]},
                '00183_000000954|t00060|3': {'tarea_cd_old': '회원가입|사업자회원_기가입안내|추가가입_버튼선택', 'unit_text': [{"type": "tarea_addt_val", "value": "추가가입_버튼선택"}]},
                '00243_000000972|t00000|1': {'tarea_cd_old': '로그아웃|사업자회원_로그아웃안내|영역노출', 'unit_text': ''},
                '00243_000000972|t00060|1': {'tarea_cd_old': '로그아웃|사업자회원_로그아웃안내|로그아웃_버튼선택', 'unit_text': [{"type": "tarea_addt_val", "value": "로그아웃_버튼선택"}]},
                '00243_000000972|t00060|2': {'tarea_cd_old': '로그아웃|사업자회원_로그아웃안내|로그인유지_버튼선택', 'unit_text': [{"type": "tarea_addt_val", "value": "로그인유지_버튼선택"}]}
            };

            return {
                getReactingV2Values: function (key) {
                    let copyValues = JSON.parse(JSON.stringify(reactingV2Map[key]));
                    let splitedKey = key.split('|');
                    copyValues['tarea_cd'] = splitedKey[0];
                    copyValues['tarea_dtl_cd'] = splitedKey[1];
                    
                    copyValues['braze_yn'] = (!copyValues['braze_yn']) ? 'Y' : copyValues['braze_yn'];

                    return copyValues;
                },
                setUnitTextValue: function (key, unitTextValue) {
                    reactingV2Map[key]['unit_text'][0]['value'] = unitTextValue;
                }
            };
        })();

        var member_tracking = (function () {
            const EXPOSURE_EVENT = "t00000";
            const CLICK_EVENT = "t00060";

            function init() {
                $('[data-reactingV2-key]').each(function () {
                    let key = $(this).attr('data-reactingV2-key');

                    if (key.includes(EXPOSURE_EVENT)) {
                        track(key);
                    } else if (key.includes(CLICK_EVENT)) {
                        bindClickEvent(this);
                    }
                });
            }

            function bindClickEvent(element) {
                $(element).off("click.reactV2");
                $(element).on("click.reactV2", function () {
                    track($(element).attr('data-reactingV2-key'));
                });
            }

            function track(reactingV2Key, additionalParam) {
                let reactingV2Values = reactingV2MapUtil.getReactingV2Values(reactingV2Key);
                let isBraze = reactingV2Values['braze_yn'] === 'Y'
                let param = makeParam(reactingV2Values);

                callTrackingServer(param, isBraze, additionalParam);
            }

            function setUnitTextValueAndTrack(reactingV2Key, unitTextVal, additionalParam) {
                reactingV2MapUtil.setUnitTextValue(reactingV2Key, unitTextVal)
                track(reactingV2Key, additionalParam);
            }

            function makeParam(inputValue) {
                return {
                    referrer: document.referrer,
                    url: location.href,
                    scrn_cd: "",
                    tarea_cd: inputValue.tarea_cd,
                    tarea_dtl_cd: inputValue.tarea_dtl_cd,
                    tarea_cd_old: inputValue.tarea_cd_old,
                    actn_type: "",
                    inflo_site_no: settings.curr_siteno,
                    site_no: "",
                    salestr_no: "",
                    abtest_info: "",
                    comm_type: "",
                    comm_id: "",
                    data_ver_info: "2021091001", // 필수값. 없을 시 정보계 미적재 됨
                    tarea_dtl_info: {
                        unit_type: (inputValue.unit_text != null && inputValue.unit_text !== '') ? 'text' : '',
                        unit_id: "",
                        unit_inx: "",
                        advert_yn: "",
                        mdl_info: "",
                        unit_text: inputValue.unit_text,
                        fil_info: [],
                        mkt_info: {},
                        advert_bid_id: "",
                        advert_tgt_id: "",
                        advert_bilng_type_cd: "",
                        advert_kind_cd: "",
                        advert_extens_tery_div_cd: "",
                        prior_advert_acct_grp_id: "",
                        advert_acct_cls_id: ""
                    }
                };
            }

            function callTrackingServer(param, isBraze, additionalParam) {
                const reactingV2Url = 'https://track.ssg.com' + '/react';

                $.ajax({
                    url: reactingV2Url,
                    type: "post",
                    headers: {
                        "Content-Type": "application/json"
                    },
                    xhrFields: {
                        withCredentials: true
                    },
                    data: JSON.stringify(param),

                    success: function (response) {
                    },
                    error: function (request, status, error) {
                        console.log("error: " + error);
                    }
                });

                if (isBraze) {
                    if (additionalParam) {
                        Object.assign(param, additionalParam);
                    }
                    try {
                        braze.logCustomEvent(param['tarea_cd_old'], param);
                    } catch (e) {
                        console.log("logCustomEvent : " + e)
                    }
                }
            }

            return {
                init: init,
                track: track,
                setUnitTextValueAndTrack: setUnitTextValueAndTrack
            };
        })();

        $(function () {
            member_tracking.init();
        });
    } catch (e) {
        console.log("tracing e: " + e);
    }
</script>


<script type="text/javascript" defer="defer">
    var howdyYn = '';
    var csbot = '';

    

    function goSsgpnt() {
        $.ajax({
            type: 'GET',
            url: '/m/myssg/myinfoMng/goSsgpntAjax.ssg',
            success: function (result) {
                if (result.resultCode == 'SUCCESS') {
                    document.location.href = "/spoint/extnl-sso-login-gate.ssg?serviceCd=30";
                } else {
                    document.location.reload();
                }
            },
            error: function () {
                alert('정상적으로 처리되지 않았습니다. 계속 문제가 발생되면 SSG고객센터(1577-3419)로 연락 주시기 바랍니다.');
            }
        });
    }

    
    $("#submitBtn").click(function () {
        if ($(".free_selected_agree :checked").length == 0) {
            alert('탈퇴 동의를 하셔야 회원탈퇴를 하실 수 있습니다.');
            $(".free_selected_agree :checkbox").focus();
            return false;
        }

        if (!confirm('회원탈퇴 시 보유하고 계신 SSG MONEY, 쿠폰은 자동 소멸되며 복원되지 않습니다.\n회원탈퇴를 하시겠습니까?')) {
            return false;
        }

        memberSecessionProcess();

    });

    

    function memberSecessionProcess() {

        $.ajax({
            type: "POST",
            url: "/myssg/myinfoMng/memberSecessionProcess.ssg",
            data: {"imprvMttrCntt": $("#recommend_improvement").val()},
            beforeSend: function () {
                loadingIndicator.show();
            },
            success: function (result) {
                if (result.resultCode == 'SUCCESS') {
                    
                    member_tracking.track('00195_000000743|t00060|1', {
                        'mbr_wthd_dt': '2024-05-19'
                    });

                    alert('회원탈퇴가 완료되었습니다.\n그동안 서비스를 이용해주셔서 감사합니다.');
                    if (howdyYn == 'Y') {
                        var retURL = 'http://thehowdy.ssg.com';
                        location.replace("https://member.thehowdy.ssg.com/comm/popup/sslCallback.ssg?retURL=" + retURL);
                    } else {
                        
                        if (csbot === 'Y') {
                            
                        }
                        location.replace(result.result);
                    }
                } else if (result.resultCode == 'FAIL') {
                    loadingIndicator.hide();
                    alert(result.resultMsg);
                    document.location.reload();
                }

            },
            error: function () {
                loadingIndicator.hide();
                alert('정상적으로 처리되지 않았습니다. 계속 문제가 발생되면 SSG고객센터(1577-3419)로 연락 주시기 바랍니다.');
            }
        });
        return status;
    }
</script>


</div>
		<!-- footer -->
	<div id="footer" class="common_footer common_footer_ssg common_footer_v2 react-area notranslate">
    <div class="service_support">
        <div class="f_inner">
            <h2 class="blind">정책 및 약관 메뉴</h2>
            <ul class="support_txt">
                <li><a href="https://company.ssg.com" target="_blank" title="새창 열림"><span>회사소개</span></a></li>
<li><a href="https://member.ssg.com/comm/privacy/intgInfo.ssg?site=small"><strong>개인정보처리방침</strong></a></li>
<li><a href="https://member.ssg.com/policies/terms.ssg?site=small"><span>이용약관</span></a></li>
<li><a href="https://member.ssg.com/policies/youthProtection.ssg"><span>청소년 보호방침</span></a></li>
<li><a href="https://ipr.ssgadm.com" target="_blank" title="새창 열림"><span>지식재산권센터</span></a></li>
<li><a href="https://partners.ssgadm.com" target="_blank" title="새창 열림"><span>입점상담</span></a></li>
<li><a href="https://ad.ssgadm.com" target="_blank" title="새창 열림"><strong>광고신청</strong></a></li>
</ul>
            <div class="support_site">
        <div class="family_link" id="_footer-partners-site">
            <h2><a href="#partners_site" class="btn ui_toggle">판매자서비스<span class="sel_arrow">&nbsp;</span></a></h2>
            <dl id="partners_site">
            <dt class="no_tit"><span class="blind">판매자가입</span></dt>
            <dd><a href="https://partners.ssgadm.com" target="_blank" title="새창 열림">쓱파트너스</a></dd>
            <dd><a href="https://po.ssgadm.com" target="_blank" title="새창 열림">파트너오피스</a></dd>
            <dd><a href="https://ad.ssgadm.com" target="_blank" title="새창 열림">판매자광고센터</a></dd>
            <dd><a href="https://adhome.ssgadm.com" target="_blank" title="새창 열림">SSG.COM 광고</a></dd>
            </dl>
            </div>
        <div class="family_link" id="_footer-family-site">
            <h2><a href="#family_site" class="btn ui_toggle">FAMILY SITE<span class="sel_arrow">&nbsp;</span></a></h2>
            <dl id="family_site">
                <dt class="no_tit"><span class="blind">신세계그룹</span></dt>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|신세계그룹" href="http://www.ssgblog.com" target="_blank" title="새창 열림">신세계그룹</a></dd>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|신세계포인트" href="http://www.shinsegaepoint.com" target="_blank" title="새창 열림">신세계포인트</a></dd>

                <dt><span class="txt">RETAIL</span></dt>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|신세계백화점" href="http://www.shinsegae.com" target="_blank" title="새창 열림">신세계백화점</a></dd>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|이마트" href="http://store.emart.com" target="_blank" title="새창 열림">이마트</a></dd>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|이마트 트레이더스" href="http://store.traders.co.kr" target="_blank" title="새창 열림">이마트 트레이더스</a></dd>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|이마트 에브리데이" href="http://www.emarteveryday.co.kr" target="_blank" title="새창 열림">이마트 에브리데이</a></dd>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|이마트24" href="http://www.emart24.co.kr" target="_blank" title="새창 열림">이마트24</a></dd>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|신세계TV쇼핑" href="http://www.shinsegaetvshopping.com" target="_blank" title="새창 열림">신세계TV쇼핑</a></dd>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|프리미엄아울렛" href="http://www.premiumoutlets.co.kr" target="_blank" title="새창 열림">프리미엄 아울렛</a></dd>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|스타필드" href="http://www.starfield.co.kr" target="_blank" title="새창 열림">스타필드</a></dd>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|신세계면세점(명동)" href="http://www.ssgdfm.com" target="_blank" title="새창 열림">신세계면세점(명동)</a></dd>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|신세계면세점(부산)" href="http://www.ssgdfs.com" target="_blank" title="새창 열림">신세계면세점(부산)</a></dd>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|신세계인터내셔날" href="http://www.sikorea.co.kr" target="_blank" title="새창 열림">신세계인터내셔날</a></dd>

                <dt><span class="txt">FOOD</span></dt>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|신세계푸트" href="http://www.shinsegaefood.com" target="_blank" title="새창 열림">신세계푸드</a></dd>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|신세계L&B" href="http://www.shinsegae-lnb.com" target="_blank" title="새창 열림">신세계 L&B</a></dd>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|스타벅스커피 코리아" href="http://www.istarbucks.co.kr" target="_blank" title="새창 열림">스타벅스커피 코리아</a></dd>

                <dt><span class="txt">LEISURE</span></dt>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|조선호텔앤리조트" href="https://www.josunhotel.com/intro.do" target="_blank" title="새창 열림">조선호텔앤리조트</a></dd>

                <dt><span class="txt">INFRASTRUCTURE</span></dt>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|신세계건설" href="http://www.shinsegae-enc.com" target="_blank" title="새창 열림">신세계건설</a></dd>
                <dd><a class="clickable" data-react-tarea="신몰공통|푸터|Familysite|신세계아이앤씨" href="http://www.sinc.co.kr" target="_blank" title="새창 열림">신세계아이앤씨</a></dd>
            </dl>
        </div>
    </div>
</div>
    </div>
    <div class="cmfooter_corp_wrap">
        <div class="cmfooter_corp_row">
            <div class="cmfooter_corp_in">
                <div class="cmfooter_corp_info">
                    <dl class="cmfooter_corp_mall react-area">
        <dt>(주) 에스에스지닷컴</dt>
        <dd class="cmfooter_corp_cs">
            <p>
                <span class="blind">고객센터</span><em class="cmfooter_cs_tel">1577-3419</em><em class="tx_en">(Korean only)</em><em class="tx_zh">(Korean only)</em>
                    <a href="https://www.ssg.com/customer/main.ssg?aplSiteNo=6005" class="cmfooter_corp_btn clickable" data-react-tarea="푸터|CS문의|전화문의전_클릭" target="_blank" title="새창 열림">전화문의 전 클릭</a>
                    <a href="javascript:void(0);" class="cmfooter_corp_btn _cstalk_open_pc hide_gl clickable" data-react-tarea="푸터|CS문의|1:1고객센터톡_클릭" title="새창 열림">1:1 고객센터톡</a>
                <strong class="cmfooter_corp_tx">고객센터/전자금융거래분쟁처리</strong>
                <em class="hide_ko show_gl"><a href="https://www.ssg.com/customer/counselForm.ssg" class="cmfooter_corp_btn" target="_blank" title="새창 열림"><em class="tx_en">Contact us in English</em><em class="tx_zh">Contact us in English</em></a></em>
            </p>
        </dd>
        <dd class="cmfooter_corp_txarea">
            <div class="cmfooter_corp_txwrap">
                <p>
                    <span class="cmfooter_corp_tx">대표자: 이인영</span>
                    <span class="cmfooter_corp_tx">서울특별시 강남구 테헤란로 231</span>
                    <span class="cmfooter_corp_tx">사업자등록번호: 870-88-01143</span>
                    <span class="cmfooter_corp_tx">통신판매업 신고번호: 제2022-서울강남-03751호</span>
                </p>
                <p>
                    <span class="cmfooter_corp_tx">개인정보보호책임자: 김우진</span>
                    <span class="cmfooter_corp_tx">Fax: 02-2068-7118</span>
                    <span class="cmfooter_corp_tx">ssg@ssg.com</span>
                </p>
            </div>
        </dd>
        <dd class="cmfooter_corp_btnarea">
            <a href="#" class="cmfooter_corp_btn" title="새창 열림" onclick="window.open('https://www.ftc.go.kr/bizCommPop.do?wrkr_no=8708801143', 'bizCommPop', 'scrollbars=yes,width=750, height=700;'); return false;">사업자 정보확인</a>
            <a href="https://member.ssg.com/policies/consumerDispute.ssg" class="cmfooter_corp_btn" target="_blank" title="새창 열림">소비자분쟁해결기준</a>
        </dd>
    </dl>
</div>

                <div class="cmfooter_corp_rgt translate">
                    <div class="cmfooter_sns">
                        <strong class="cmfooter_sns_tit">SSG.COM</strong>
                        <a href="https://www.facebook.com/ssgcom/" class="cmfooter_sns_fb sp_cmfooter_sns clickable" data-react-tarea="SSG공통|푸터|SNS" target="_blank" title="새창 열림"><span class="blind">SSG 페이스북</span></a>
                        <a href="https://www.instagram.com/ssg.com_official/" class="cmfooter_sns_ig sp_cmfooter_sns clickable" data-react-tarea="SSG공통|푸터|SNS" target="_blank" title="새창 열림"><span class="blind">SSG 인스타그램</span></a>
                    </div>
                    <div class="cmfooter_app">
                        <p class="cmfooter_app_ssg">
                            <span class="cmfooter_app_lft">
                                <strong class="cmfooter_app_tit">모바일 앱으로 만나세요</strong>
                            </span>
                            <span class="cmfooter_app_qrcode sp_cmfooter"><span class="blind">QR코드</span></span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="cmfooter_corp_row2">
            <div class="cmfooter_corp_in">
                <div class="cmfooter_corp_hosting">
                    <p>
                        <span class="cmfooter_corp_tx"><strong>SSG.COM 호스팅서비스 사업자 : (주)에스에스지닷컴</strong></span>
                    </p>
                </div>
                <div class="cmfooter_mark">
                    <ul>
                        <li class="cmfooter_mark_kolsa">
        <a href="https://kolsa.or.kr/%ed%9a%8c%ec%9b%90%ec%82%ac-%ed%98%84%ed%99%a9/?category1=%EC%A0%95%ED%9A%8C%EC%9B%90&mod=list&pageid=1" class="cmf_mark_kolsa" target="_blank" title="새창 열림">
            <span class="cmfooter_mark_ico sp_cmfooter"></span>
            <span class="cmfooter_mark_txt">
                한국온라인쇼핑협회<br>정회원사</span>
        </a>
    </li>
    <li class="cmfooter_mark_risk">
        <span class="cmfooter_mark_ico sp_cmfooter">
            <span class="blind">위해상품차단시스템 운영매장</span>
        </span>
    </li>
    <li class="cmfooter_mark_sgi2">
        <span class="cmfooter_mark_txt"><strong class="cmfooter_mark_tit">우리은행 채무지급보증 안내</strong><br>당사는 고객님이 현금 결제한 금액에 대해 우리은행과 채무지급보증 계약을 체결하여 안전거래를 보장하고 있습니다.</span>
        <a href="#" onclick="window.open('https://www.ssg.com/comm/popupWooriService.ssg', 'commWooriPop', 'scrollbars=yes,width=595,height=841,resizable=yes'); return false;" class="cmfooter_corp_btn" target="_blank" title="새창 열림">서비스 가입사실 확인</a>
    </li>
</ul>
                </div>
                <div class="cmfooter_corp_notice">
        <p> ㈜에스에스지닷컴은 SSG.COM 실시간 항공권 서비스의 통신판매중개자로서 거래 당사자가 아니며, 입점 판매사가 등록한 상품 정보 및 거래에 대해 책임을 지지 않습니다.</p>
        <p>㈜에스에스지닷컴 사이트의 상품/판매자/쇼핑정보, 컨텐츠, UI 등에 대한 무단 복제, 전송, 배포, 스크래핑 등의 행위는 저작권법, 콘텐츠사업 진흥법 등에 의하여 엄격히 금지됩니다. <a href="#" onclick="window.open('https://www.ssg.com/comm/popupContentsLaw.ssg', 'commContentsLawPop', 'scrollbars=yes,width=488,height=313;'); return false;" target="_blank" class="cmfooter_corp_arr_link">콘텐츠 산업 진흥법에따른 표시</a></p>
    </div>
</div>
        </div>
    </div>
    <div class="mobile_version" style="display:none" id="_moveToMobileVer">
        <a href="javascript:appBroswer('http://m.ssg.com','mo');" class="btn_def">모바일 버전으로 가기</a>
    </div>
</div>

<div id="myssgLayer"></div>
<script type="text/javascript">
//르노삼성 고객센터 전화번호 변경

    $(document).ready(function(){

        if ( $.cookie('usePCmode') == 'Y' ) {
            $('#_moveToMobileVer').show();
        }

        // 르노삼성 고객센터 전화번호 변경
        if (settings.UserInfo.isLoginYn == "Y" && settings.UserInfo.mbrcoId == "0000000048") {
            $("#footer .cmf_cs_tel").text('02-6098-1811');
        }
    });
</script>
    <script type="text/javascript" src="https://sui.ssgcdn.com/ui/ssg/js/affiliate/wiselog_makePCookie.js"></script>
<script type="text/javascript"> 
    var Nethru_domain  = Nethru_getDomain();
    var Nethru_ssgDomain  = "member";
    if ( Nethru_GetCookie("SSGDOMAIN") ){
        ;
    }else{
        Nethru_SetCookie("SSGDOMAIN",Nethru_ssgDomain,null,"/",Nethru_domain);
    }
    Nethru_makePersistentCookie("PCID",10,"/",Nethru_domain);
    Nethru_makePersistentCookie1("RC",10,"/",Nethru_domain);
</script>
</div>

<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/history.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/lib/jquery.tmpl.min.js"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/srch/rplc_keyword.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/srch/shrtc_keyword.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/srch/srch.ac.mdl.js?v=20240508"></script>

</body>
</html>