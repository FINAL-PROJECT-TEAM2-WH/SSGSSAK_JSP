<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<link rel="shortcut icon" type="image/x-icon" href="//sui.ssgcdn.com/ui/common/img/ssg.ico">
	<title class="notranslate">
		회원가입 > 본인인증, 믿고 사는 즐거움 SSG.COM</title>

	






<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/scom.css?v=20240424"/>
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/main.css?v=20240424"/>
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssg_global.css?v=20240424" />
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssg_layout.css?v=20240424" />
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/mem.css?v=20240424" />
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
<body class="body_wide">
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
        isLoginYn        : 'false' == 'true' ? 'Y' : 'N',
            mbrTypeCd        : '',
            mbrType          : 'B2C',
            mbrLoginId       : '',
            mbrLoginId2      : '',
            mbrcoId          : '000000',
            ckWhere          : 's_ggbr',
            dmId             : '',
            emSaleStrNo      : '2439',
            trSaleStrNo      : '2483',
            gmSaleStrNo      : '2449',
            gmSaleStrYn      : 'Y',
            emRsvtShppPsblYn : 'Y',
            ga : '00',
            sessionId : '',
            ip : '',
            shpplocMod : 'MY',
            shpplocModKey : '5367225',
            cartNm : '장바구니',
            mbrspMbrDivCd : '',
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
        title : '회원가입 &gt; 본인인증, 믿고 사는 즐거움 SSG.COM'
    });

    // 회원 관련 객체, 사용하지 말 것.
    var UserInfo = {
        isLoginYn : 'false'=='true'?'Y':'N',
        mbrTypeCd : '',
        ckWhere : 's_ggbr'
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
<%@ include file="../../Top.jsp" %>
<div id="category" class="category"></div>
			<div id="container"  class="cmmyssg_wrap" >
				
















<div id="content" class="cmem_ct_join">
    <div class="cmem_header">
        <div class="cmem_header_tit">
            <h2>회원가입</h2>
        </div>
        <div class="cmem_join_desc">
            <p class="cmem_join_desc_tit">믿고 사는 즐거움<br>SSG.COM에 오신것을 환영합니다.</p>
        </div>
    </div>
    <div class="cmem_cont">
        
            
                <div class="cmem_sec" data-reactingV2-key="00183_000000734|t00000|1">
                    <div class="cmem_subtit">
                        <h3>신세계포인트 통합회원</h3>
                    </div>
                    <p class="cmem_subtit_txt">신세계 유니버스 클럽 3개월 무료체험이 제공됩니다. 매월 제공되는 쿠폰 받으시고 알뜰하게 쇼핑하세요!</p>
                    <p class="cmem_subtit_txt"> * 멤버십은 3개월 후 자동 해지 됩니다.</p>
                    <ul class="cmem_join_benefit v2">
                        <li>
                            <span class="sp_cmem_join cmem_join_asset_03"></span>
                            <div class="cmem_benefit_txt">
                                <p>멤버십 신규 가입 축하<br> 1만원 할인 쿠폰</p>
                            </div>
                        </li>
                        <li>
                            <span class="sp_cmem_join cmem_join_asset_01"></span>
                            <div class="cmem_benefit_txt">
                                <p>매월 전상품<br> 7% 할인 쿠폰</p>
                            </div>
                        </li>
                        <li>
                            <span class="sp_cmem_join cmem_join_asset_02"></span>
                            <div class="cmem_benefit_txt">
                                <p>매월 전상품<br> 5% 할인 쿠폰</p>
                            </div>
                        </li>
                    </ul>
                    <div class="cmem_btnarea ty_join">
                        <button type="button" class="cmem_join_btn cmem_btn_black_alpha20" data-reactingV2-key="00183_000000734|t00060|1" onclick="location.href='<%=contextPath%>/member/join/auth.do?mbrTypeCd=10'"><span>통합회원만 가입하기</span></button>
                        <button type="button" class="cmem_join_btn cmem_btn_primary" data-reactingV2-key="00183_000000734|t00060|2" onclick="location.href='/member/join/auth.ssg?mbrTypeCd=10&bothJoinYn=Y'"><span>멤버십 혜택 받고 통합회원 가입하기</span></button>
                    </div>
                </div>
            
            
        
        <div class="cmem_sec ty_info" data-reactingV2-key="00183_000000735|t00000|1">
            <div class="cmem_subtit">
                <h3>간편회원</h3>
            </div>
            <p class="cmem_subtit_txt">자주 사용하는 SNS 또는 이메일주소 아이디로 간편하게 가입하실 수 있습니다.</p>
            <div class="cmem_join_sns_wrap">
                <ul class="cmem_join_sns">
                    <li>
                        <a href="/member/join/formEmail.ssg" data-reactingV2-key="00183_000000735|t00060|1">
                                <span class="ico_area">
                                    <span class="sp_cmem_sns cmem_ico_email2"></span>
                                </span>
                            <span class="cmem_sns_name">이메일</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" onclick="snsLogin.naver('join');" class="snsLogin" name="snsLogin" data-reactingV2-key="00183_000000735|t00060|2">
                                <span class="ico_area">
                                    <span class="sp_cmem_sns cmem_ico_naver2"></span>
                                </span>
                            <span class="cmem_sns_name">네이버</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" onclick="snsLogin.kakao('join');" class="snsLogin" name="snsLogin" data-reactingV2-key="00183_000000735|t00060|3">
                                <span class="ico_area">
                                    <span class="sp_cmem_sns cmem_ico_kakao2"></span>
                                </span>
                            <span class="cmem_sns_name">카카오</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" onclick="snsLogin.apple('join');" class="snsLogin" name="snsLogin" data-reactingV2-key="00183_000000735|t00060|4">
                                <span class="ico_area">
                                    <span class="sp_cmem_sns cmem_ico_apple2"></span>
                                </span>
                            <span class="cmem_sns_name">애플</span>
                        </a>
                    </li>
                </ul>
            </div>
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
            "pcid" 				: "17129766189179881431225"
            , "fsid" 			: "scv8kr3h3o6211n6vg03"
            , "siteno"		    : "1001" // #443767 siteno 하드코딩 요청
            , "tarea" 			: ""
            , "log_type_flag" 	: "t"
            , "memberid" 		: ""
            , "ga"				: "00"
            , "mbrgrdcd"		: ""
            , "ckwhere"		    : "s_ggbr"
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




<script type="text/javascript">

    var loginMsg = {
        "mbrNm": "이름을 입력해주세요."
        , "mbrLoginId": "아이디 또는 이메일 주소를 입력해주세요."
        , "pwd": "비밀번호를 입력해주세요."
        , "emailId": "이메일을 입력해주세요."
        , "emailDomNm": "이메일을 입력해주세요."
        , "orderNo": "주문번호를 입력해주세요."
        , 'agree': '약관에 동의하셔야 서비스를 이용하실 수 있습니다.'
        , 'entity': '정보를 입력해주세요.'
        , "keepId": "개인정보보호를 위해 개인 PC에서만 사용하세요."
        , 'personalinfo': '개인정보 수집이용에 동의하셔야 서비스를 이용하실 수 있습니다.'
    };

    var loginModel = {
        retUrl: ""
        , ref: ""            
        , retURL: ""            
        , originSite: ""    
        , flow: ""            
        , loginType: ""    
        , urlPrefix: ""
        
        , login: function () {
            var self = this;
            

            $.ajax({
                url: this.urlPrefix + "/login/process.ssg"
                , method: "post"
                , data: {
                    mbrLoginId: $("#memberLogin input[name=mbrLoginId]").val()
                    , password: $("#memberLogin input[name=password]").val()
                    , loginCertCode: $("#memberLogin input[name=loginCertCode]").val()
                    , PCID: "17129766189179881431225"
                    , loginDvicId: $("#memberLogin input[name=loginDvicId]").val()
                }
                , beforeSend: function () {
                    $(".warning_message, .cmem_warning_message").remove();
                    if (!navigator.cookieEnabled) {
                        alert("쿠키 사용이 차단되어있어 로그인이 실패하였습니다. 브라우저 설정에서 쿠키 차단을 해제하신 후 로그인을 다시 시도해주세요.");
                        return false;
                    }

                    var id = $("#memberLogin input[name=mbrLoginId]");
                    var pw = $("#memberLogin input[name=password]");

                    if ($("#memberLogin #keep_id").is(":checked")) {
                        $.cookie("keepId", "Y", {"expires": 7, "path": "/"});
                        $.cookie("mbrLoginId", id.val(), {"expires": 7, "path": "/"});
                    } else {
                        $.cookie("keepId", null, {"path": "/"});
                        $.cookie("mbrLoginId", null, {"path": "/"});
                    }

                    if (id.val() == '') {
                        alert(loginMsg["mbrLoginId"]);
                        id.focus();
                        return false;
                    }

                    if (pw.val() == '') {
                        alert(loginMsg["pwd"]);
                        pw.focus();
                        return false;
                    }

                    // 버튼 중복 클릭 방지
                    $("#memberLogin #loginBtn").attr('disabled', true);
                    return true;
                }
                , success: function (result) {
                    $(".warning_message, .cmem_warning_message").remove();
                    self.processAfterLogin(result);
                }
                , error: function (result) {
                    try {
                        alert($.parseJSON(result.responseText).errorMsg);
                    } catch (E) {
                        alert("네트워크 연결이 불안정하거나 로그인 반복 요청이 있어 로그인이 실패하였습니다.");
                    }
                    // 버튼 중복 클릭 방지 해제
                    $("#memberLogin #loginBtn").attr('disabled', false);
                }
            });
        }
        
        , noMemberLogin: function () {
            var self = this;
            $.ajax({
                url: "/member/loginByNomember.ssg"
                , method: "post"
                , data: {
                    mbrNm: $("#orderForm input[name='mbrNm']").val()
                    , tel1: $("#orderForm select[name='tel1']").val()
                    , tel2: $("#orderForm input[name='tel2']").val()
                    , tel3: $("#orderForm input[name='tel3']").val()
                    , emailId: $("#orderForm input[name='emailId']").val()
                    , emailDomNm: $("#orderForm input[name='emailDomNm']").val()
                }
                , beforeSend: function () {
                    $(".warning_message").remove();
                    var checkMsg = "";
                    
                    $("#nonmember_name_02").each(function () {
                        var val = fnReturnNotSpecialChar($(this).val());
                        $(this).val(val.substring(0, 20));
                    });

                    $("#place_order input[type=text]").each(function () {
                        if ($(this).val() == "") {
                            checkMsg = warningTemplate(loginMsg['entity']);
                            $(this).focus();
                            return false;
                        }
                    });

                    if (checkMsg != "") {
                        $("#place_order .bn_ar").before(checkMsg);
                        return false;
                    }

                    $("#place_order input[type=checkbox]").each(function () {
                        if (!this.checked) {
                            checkMsg = warningTemplate(loginMsg['personalinfo']);
                            return false;
                        }
                    });

                    if (checkMsg != "") {
                        $("#place_order .bn_ar").before(checkMsg);
                        return false;
                    }

                    return true;
                }, success: function (result) {
                    $(".warning_message").remove();
                    if (result.resultCode == 'SUCCESS') {
                        $('.dimmed, .layer_pop').show();
                    } else {
                        $("#place_order .bn_ar").before(warningTemplate(result.resultMsg));
                    }
                }, error: function (result) {
                    $("#place_order .button_area").before(warningTemplate($.parseJSON(result.responseText).errorMsg));

                }
            });
        }
        
        , noMemberOrder: function () {
            var self = this;
            $.ajax({
                url: "/member/checkOrder.ssg"
                , method: "post"
                , data: {
                    mbrNm: $("#checkOrderForm input[name='mbrNm']").val()
                    , emailId: $("#checkOrderForm input[name='emailId']").val()
                    , emailDomNm: $("#checkOrderForm input[name='emailDomNm']").val()
                    , orderNo: $("#checkOrderForm input[name='orderNo']").val()
                }
                , beforeSend: function () {
                    $(".warning_message").remove();
                    var checkMsg = "";
                    $("#checkOrderForm input[type=text]").each(function () {
                        if ($(this).val() == "") {
                            checkMsg = warningTemplate(loginMsg[$(this).attr("name")]);
                            $("#checkOrderForm .fieldset > .bn_ar").before(checkMsg);
                            $(this).focus();
                            return false;
                        }
                    });
                    if (checkMsg != "") {
                        return false;
                    }
                }
                , success: function (result) {
                    $(".warning_message").remove();
                    if (result.resultCode == 'SUCCESS') {
                        if (self.originSite) {
                            var payUrl = 'http://pay.ssg.com' + "/myssg/orderList.ssg";
                            location.href = unescape(self.originSite) + '/comm/popup/sslCallback.ssg?retURL=' + escape(payUrl);
                        } else {
                            location.href = 'https://pay.ssg.com' + "/myssg/orderList.ssg";
                        }
                    } else {
                        $("#checkOrderForm .fieldset > .bn_ar").before(warningTemplate(result.resultMsg));
                        var orderNo = $("#checkOrderForm input[name=orderNo]");
                        orderNo.val("");
                        orderNo.focus();
                    }
                }
                , error: function (result) {
                    $("#checkOrderForm .fieldset > .bn_ar").before(warningTemplate($.parseJSON(result.responseText).errorMsg));
                }
            });
        }
        
        , processAfterLogin: function (result) {
            var self = this;
            if (result.resultCode === "SUCCESS") {

                
                if (self.flow == "auth") {
                    
                    if (this.loginType === "self") {
                        document.location.replace("/member/checkAdult.ssg?retURL=" + unescape(self.retUrl));
                    } else {
                        if (window.opener !== null) {
                            document.location.replace("/member/popup/popupCheckAdult.ssg?retURL=" + unescape(self.retUrl));
                        } else {
                            document.location.replace("/member/checkAdult.ssg?retURL=" + unescape(self.retUrl));
                        }
                    }
                    return;
                }

                
                if (self.loginType === "self") {
                    var openerUrl = location.href;
                    if (self.retUrl !== "") {
                        location.href = unescape(self.retUrl);
                    } else if (openerUrl.indexOf('/member') > -1 && openerUrl.indexOf('thehowdy.ssg.com') > -1) {
                        location.href = 'http://thehowdy.ssg.com';
                    } else if (openerUrl.indexOf('/member') > -1) {
                        location.href = 'http://www.ssg.com';
                    } else {
                        location.reload(true);
                    }
                    return;
                }

                var popupParam = new Array()
                if (self.ref) {
                    popupParam.push("retURL=" + self.ref);
                }

                if (self.originSite) {
                    location.href = unescape(self.originSite) + "/comm/popup/sslCallback.ssg?" + popupParam.join("&");
                } else {
                    window.open("/comm/popup/sslCallback.ssg?" + popupParam.join("&"), "SSG_POPUP", 'toolbar=no,menubar=no,location=no,scrollbars=no,status=no,left=100,top=100,resizable=no,width=354,height=444');
                }

            } else {
                if (result.resultCode == 'FDS_ABUS_TARGET') {
                    if (window.opener) {
                        window.opener.location.href = result.result;
                        window.close();
                    }
                    location.href = result.result;
                    return;
                }
                
                if (result.action === "PAGE_RELOAD") {
                    if (result.resultMsg) {
                        alert(result.resultMsg.replaceAll("\\n", "\n"));
                    }
                    document.location.reload(true);
                    return;
                }
                if (result.action === "PAGE_MOVE") {
                    if (result.resultMsg) {
                        alert(result.resultMsg.replaceAll("\\n", "\n"));
                    }
                    if (self.originSite) {    
                        if ('') {
                            location.href = unescape(originSite) + "/comm/popup/sslCallback.ssg?retURL=" + escape(result.actionUrl + "&retURL=" + '');
                            return;
                        }
                        location.href = unescape(originSite) + "/comm/popup/sslCallback.ssg?retURL=" + escape(result.actionUrl);
                    } else { 
                        if ('') {
                            location.href = result.actionUrl + "&retURL=" + '';
                            return;
                        }
                        location.href = result.actionUrl;
                    }
                    return;
                }
                // 버튼 중복 클릭 방지 해제
                $("#memberLogin #loginBtn").attr('disabled', false);


                alert(result.resultMsg);
                $("#memberLogin input[name=password]").val('').focus();
            }
        }
        
        , callbackAfterLogin: function () {
            if (this.retUrl) {
                document.location.replace(unescape(this.retUrl));
                return;
            }

            document.location.reload(true);
        }
        
        , callbackAfterSns: function () {
            var self = this;
            $(".warning_message").remove();
            $.ajax({
                url: "/sns/login/process.ssg"
                , type: "POST"
                , contentType: "application/json"
                , success: function (result) {
                    self.processAfterLogin(result);
                }
                , error: function (jqXhr, status, error) {
                    alert("SNS 연동을 취소하셨거나 오류가 발생했습니다.(2)");
                }
            });
        }
    }
</script>



<script type="text/javascript">

    var snsLogin = {
        naver: function (linkType, retURL) {
            var url = "/sns/naver/oAuth.ssg?linkType=" + linkType;
            if (linkType === 'login' && retURL) {
                url = url + "&retURL=" + encodeURIComponent(retURL);
            }
            var win = window.open(url, "snsPopup", "titlebar=1, resizable=1, scrollbars=yes, width=500, height=650");
            win.focus();
        }
        , kakao: function (linkType, retURL) {
            var url = "/sns/kakao/oAuth.ssg?linkType=" + linkType;
            if (linkType === 'login' && retURL) {
                url = url + "&retURL=" + encodeURIComponent(retURL);
            }
            var win = window.open(url, "snsPopup", "titlebar=1, resizable=1, scrollbars=yes, width=600, height=650");
            win.focus();
        }
        , apple: function (linkType, retURL) {
            var url = "/sns/apple/oAuth.ssg?linkType=" + linkType;
            if (linkType === 'login' && retURL) {
                url = url + "&retURL=" + encodeURIComponent(retURL);
            }
            var win = window.open(url, "snsPopup", "titlebar=1, resizable=1, scrollbars=yes, width=700, height=680");
            win.focus();
        }
        , toss: function (linkType, retURL) {
            var url = "/sns/toss/oAuth.ssg?linkType=" + linkType;
            if (linkType === 'login' && retURL) {
                url = url + "&retURL=" + encodeURIComponent(retURL);
            }
            var win = window.open(url, "snsPopup", "titlebar=1, resizable=1, scrollbars=yes, width=700, height=680");
            win.focus();
        }
    }
</script>






































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
    document.title = '회원가입 > 개인회원가입, 믿고 사는 즐거움 SSG.COM';

    

    function snsCallback() {
        loginModel.callbackAfterSns();
    }
</script>
</div>
		<!-- footer -->
<%@include file="../../footer.jsp" %>
