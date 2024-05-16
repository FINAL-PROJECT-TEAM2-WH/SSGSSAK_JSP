<%@ page contentType="text/html; charset=UTF-8" %>
<html><head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>믿고 사는 즐거움 SSG.COM</title>
<link rel="preload" href="//sui.ssgcdn.com/ui/ssg/css/ssg_global.css?v=20240508" as="style">
<link rel="preload" href="//sui.ssgcdn.com/ui/ssg/css/ssg_layout.css?v=20240508" as="style">
<link rel="preload" href="//sui.ssgcdn.com/ui/ssg/css/ssg_component.css?v=20240508" as="style">
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssg_global.css?v=20240508">
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssg_layout.css?v=20240508">
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssg_component.css?v=20240508">
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/scom.css?v=20240508">
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/popup.css?v=20240508">

<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/com_component.css?v=20240508">
<link rel="stylesheet" type="text/css" href="https://sui.ssgcdn.com/ui/m_ssg/css/ssg_component.css?v=20240508">
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssgday_2023.css?v=20240508">
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/lib/jquery-1.9.1.min.js"></script>
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
            cityac : 'https://auto.ssglog.com:8100/trip',
            event : 'event.ssg.com',
            howdy : 'howdy.ssg.com',
            thehowdy : '',
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
            
            trans : '//simg.ssgcdn.com/trans.ssg',
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
            itemPath : '//sitem.ssgcdn.com',
            uccPath : '//succ.ssgcdn.com',
            uploadDefaultUrl: '/temp_up/',
            cdnDomain : 'https://sui.ssgcdn.com' != '' ?
                'https://sui.ssgcdn.com' : '//sui.ssgcdn.com',
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
        loginPath : 'http://member.ssg.com/member/login.ssg',
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
            shpplocModKey : '5835078',
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
            item    : '//sitem.ssgcdn.com'
        },
        trans : '//simg.ssgcdn.com/trans.ssg',
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
        title : 'S.COM'
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
    var uploadImgPath = '//sui.ssgcdn.com';
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
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/common/commJs.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/m_ssg/js/ui/mcom.webview.js?v=20240508"></script>
</head>

<body>
	<script type="text/javascript" src="https://sui.ssgcdn.com/ui/ssg/js/ui/ssg.view.translate.js?v=20240508"></script>
<script>
$(function(){
    var oSsgViewTranslate = new ssg.View.translate({
        i18nConfig: {
            name:'Messages',
            path:'https://sui.ssgcdn.com/ui/ssg/js/i18/front',
            language:'ko',
            mode:'both',
            async: true
        }
    });
});
</script>
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/common/common_unit.css?v=20240508">
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/myssg_reivew.css?v=20240508">


<div id="pop_wrap" class="myssg_review_write v2" style="width:500px">
	<div id="pop_header">
		<h1>리뷰 쓰기</h1></div>
	<hr>
	<form id="submitForm" name="submitForm">
	<input type="hidden" name="ordNo" value="2024041502F004">
	<input type="hidden" name="orordNo" value="2024041502F004">
	<input type="hidden" name="ordItemSeq" value="4">
	<input type="hidden" name="orordItemSeq" value="4">
	<input type="hidden" name="inqSalestrNo" value="2022">
	<input type="hidden" name="itemId" value="0000007452331">
	<input type="hidden" name="itemNm" value="[풀무원] SOGA 부드러운 찌개두부 300g">
	<input type="hidden" name="siteNo" value="6001">
	<input type="hidden" name="uitemId" value="00000">
	<input type="hidden" name="imgBeingYn" value="">
	<input type="hidden" name="vodBeingYn" value="">
	<input type="hidden" name="infloSiteNo" value="6005">
	<input type="hidden" name="dispCtgId" value="">
	<input type="hidden" name="postngId" value="">
	<input type="hidden" name="bbsId" value="">
	<input type="hidden" name="vodUrl" value="">
	<input type="hidden" name="vodThmnlImgUrl" value="">
	<input type="hidden" name="recomExpsrYn" value="Y">
	<input type="hidden" name="promId" value="">
	<input type="hidden" name="premCommentEntryYn" id="premCommentEntryYn" value="">
	<input type="hidden" name="qualityEval" id="qualityEval" value="">
	<input type="hidden" name="stdCtgId" value="">
	<input type="hidden" name="postngClsCd" id="postngClsCd" value="10">
	<input type="hidden" name="giftSengpeCntt" id="giftSengpeCntt" value="">
	<input type="hidden" name="giftSengBasisCntt" id="giftSengBasisCntt" value="">
	<input type="hidden" name="evalOnlyYn" value="N">

	<div id="pop_container">
		<button class="button_close" type="button" onclick="self.close();"><span class="blind">팝업닫기</span><span class="ir"></span></button>
		<div class="myreview_goods">
			<div class="myreview_cmt_unit">
				<div class="cmt_unit_goods">
					<div class="cmt_unit_thmb">
						<a href="https://www.ssg.com/item/itemView.ssg?itemId=0000007452331&amp;siteNo=6001&amp;salestrNo=2022" class="cmt_thumb_link">
							<div class="cmt_img"><img src="//sitem.ssgcdn.com/31/23/45/item/0000007452331_i1_110.jpg" width="100" height="100" alt="[풀무원] SOGA 부드러운 찌개두부 300g" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&amp;w=100&amp;h=100&amp;t=b5b0c237c9630d8f2dbf0999d680200098e540dc'"></div>
						</a>
					</div>
					<div class="cmt_unit_detail">
						<div class="cmt_unit_tit">
							<a href="https://www.ssg.com/item/itemView.ssg?itemId=0000007452331&amp;siteNo=6001&amp;salestrNo=2022" class="cmt_tit_link">
								<span class="cmt_brand">풀무원</span>
								<span class="cmt_name">[풀무원] SOGA 부드러운 찌개두부 300g</span>
							</a>
						</div>
						</div>
				</div>
			</div>
		</div>
		<div class="myreview_form more">
			<div class="myreview_sec">
				<div class="myreview_ratin_star_wrap">
					<div class="myreview_rating_star">
						<span class="blind">평점 5점 중</span>
						<div class="rating_star">
									<button type="button" class=""><i class="icon ty_sm icon_star_fill" aria-hidden="true"></i><span class="blind">0점 선택</span></button>
									<button type="button" value="1" class="rating_star_check "><i class="icon ty_sm icon_star_fill" aria-hidden="true"></i><span class="blind">1점 선택</span></button>
									<button type="button" value="2" class="rating_star_check "><i class="icon ty_sm icon_star_fill" aria-hidden="true"></i><span class="blind">2점 선택</span></button>
									<button type="button" value="3" class="rating_star_check "><i class="icon ty_sm icon_star_fill" aria-hidden="true"></i><span class="blind">3점 선택</span></button>
									<button type="button" value="4" class="rating_star_check "><i class="icon ty_sm icon_star_fill" aria-hidden="true"></i><span class="blind">4점 선택</span></button>
									<button type="button" value="5" class="rating_star_check on"><i class="icon ty_sm icon_star icon_star_fill" aria-hidden="true"></i><span class="blind">5점 선택</span></button>
								</div>
								<div class="rating_emotion">
									<span class="rv1">아쉽네요!</span>
									<span class="rv2">그냥그래요!</span>
									<span class="rv3">보통이에요!</span>
									<span class="rv4">좋아요!</span>
									<span class="rv5 on">최고예요!</span>
								</div>
							</div>
				</div>
			</div>

			<!-- 선물 태그 -->
			<!-- 추가평가항목 -->
			<div class="myreview_sec">
					<div class="myreview_rating_circle">
						<ul class="rating_circle_lst">
						<li>
								<span class="rating_tit">맛만족도는 어땠나요?</span>
								<div class="rating_chk" name="rating_chk_grp1">
									<span class="rating_circle">
											<input type="radio" class="blind" id="ui_circle_radio1" name="circleRadioTest1" data-stdctgid="1000028398" data-attrid="1" data-groupid="11517" data-groupcd="20">
											<label for="ui_circle_radio1">
												<span class="rating_img"></span>
												<span class="rating_txt">아쉬워요</span>
											</label>
										</span>
									<span class="rating_circle">
											<input type="radio" class="blind" id="ui_circle_radio2" name="circleRadioTest1" data-stdctgid="1000028398" data-attrid="2" data-groupid="11517" data-groupcd="20">
											<label for="ui_circle_radio2">
												<span class="rating_img"></span>
												<span class="rating_txt">보통이에요</span>
											</label>
										</span>
									<span class="rating_circle">
											<input type="radio" class="blind" id="ui_circle_radio3" name="circleRadioTest1" data-stdctgid="1000028398" data-attrid="3" data-groupid="11517" data-groupcd="20">
											<label for="ui_circle_radio3">
												<span class="rating_img"></span>
												<span class="rating_txt">맛있어요</span>
											</label>
										</span>
									</div>
							</li>
						<li>
								<span class="rating_tit">포장은 어땠나요?</span>
								<div class="rating_chk" name="rating_chk_grp2">
									<span class="rating_circle">
											<input type="radio" class="blind" id="ui_circle_radio4" name="circleRadioTest2" data-stdctgid="1000028398" data-attrid="1" data-groupid="11518" data-groupcd="20">
											<label for="ui_circle_radio4">
												<span class="rating_img"></span>
												<span class="rating_txt">아쉬워요</span>
											</label>
										</span>
									<span class="rating_circle">
											<input type="radio" class="blind" id="ui_circle_radio5" name="circleRadioTest2" data-stdctgid="1000028398" data-attrid="2" data-groupid="11518" data-groupcd="20">
											<label for="ui_circle_radio5">
												<span class="rating_img"></span>
												<span class="rating_txt">보통이에요</span>
											</label>
										</span>
									<span class="rating_circle">
											<input type="radio" class="blind" id="ui_circle_radio6" name="circleRadioTest2" data-stdctgid="1000028398" data-attrid="3" data-groupid="11518" data-groupcd="20">
											<label for="ui_circle_radio6">
												<span class="rating_img"></span>
												<span class="rating_txt">꼼꼼해요</span>
											</label>
										</span>
									</div>
							</li>
						</ul>
					</div>
				</div>
			<div class="myreview_sec">
					<h3 class="myreview_tit" id="reviewTop">지인들에게 이 상품을 추천하실 건가요?</h3>
					<div class="myreview_textarea">
						<label for="ui_textarea">
							<span>· 텍스트/사진/영상을 추가 등록하면 SSG MONEY 50원을 바로 적립해 드립니다.</span>
								<span>
										(월 40건 제한, 동일옵션 30일 이내 미적립)
									</span>
								</label>
						<textarea id="ui_textarea" name="postngCntt" onfocus="jsSetText(this)"></textarea>
						<span class="myreview_textcount"><em class="prd_txt" id="cnttBytes">0</em> / 2000(10자 이상)</span>
						<span class="myreview_tit_btn">
							<button type="button" class="myreview_modal_open pop_review_lyopen" data-layer-target=".myreview_modal_benefit">리뷰 등록/혜택 안내</button>
						</span>
					</div>
					<ul class="myreview_media_noti">
						<li>
								개인정보(이름/연락처/주소)가 노출되지 않도록 조심해주세요.</li>
						<li>
								특수기호, 동일단어 등을 3회 이상 반복하지 않도록 해주세요.</li>
						</ul>
					<div class="myreview_media_file">
						<div class="myreview_media_util">
							<button type="button" class="btn_pick img">앨범보기</button>
							<button type="button" class="btn_pick mov">동영상</button>
							<div id="fileAttach" style="height:0px;width:0px;overflow:hidden;">
								<input type="file" id="fileAttach1" name="atchFile" accept="image/*" onchange="addFilePopupBtn('fileAttach1', 0);">
								<input type="file" id="fileAttach2" name="atchFile" accept="image/*" onchange="addFilePopupBtn('fileAttach2', 1);">
								<input type="file" id="fileAttach3" name="atchFile" accept="image/*" onchange="addFilePopupBtn('fileAttach3', 2);">
							</div>
						</div>
						<div class="myreview_media_item_group">
							<ul class="myrv_md_list">
								<li><span class="myrv_md_item"></span></li>
								<li><span class="myrv_md_item"></span></li>
								<li><span class="myrv_md_item"></span></li>
								<li><span class="myrv_md_item mov"></span></li>
							</ul>
						</div>
					</div>
				</div>
			<!-- 선택태그 -->
			<!-- 맞춤정보 -->
			</div>

		<div class="myreview_premium">
			<!-- 배너 -->
			</div>

		<div class="pop_btn_area">
			<ul class="myreview_btn_area">
				<li><button type="button" class="myreview_btn" id="submitBtn"><em class="txt_btn">리뷰 등록</em></button></li></ul>
		</div>

		<div class="pop_review_layer myreview_modal_benefit" id="myreview_modal_benefit">
			<div class="pop_review_lycont">
				<div class="pop_review_tit">
					<h3>리뷰 등록/혜택 안내</h3>
				</div>
				<div class="myreview_benefit_cont">
					<p class="myreview_benefit_tit">[리뷰 등록 안내]</p>
					<ul class="myreview_benefit_list">
						<li>· 사진 :10MB미만 3개, 동영상 : 50MB미만1개 PNG, JPG만 등록 가능합니다.</li>
						<li>· 동일단어, 띄어쓰기, 칸내림은 최대 3회까지 가능합니다.</li>
						<li>· 작성해주신 리뷰는 등록 즉시 사이트에 게재되며, 등록 후 수정 및 삭제는 상시 가능합니다.(단, 리뷰 삭제 시에는 기존에 적립된 SSG MONEY가 반환되고, 한번 삭제한 리뷰는 재작성이 불가능 합니다.)</li>
						<li>· 프리미엄 리뷰로 선정 된 이후부터는 내용 수정 및 임의 삭제가 불가능 합니다.</li>
						<li>· 스페셜 리뷰는 검수완료 된 이후부터는 내용 수정 및 임의 삭제가 불가능 합니다.</li>
						<li>· 동일상품/옵션 리뷰는 30일이내 1회만 SSG MONEY 가 적립되고, 30일 이후에 리뷰 등록 적립이 혜택을 다시 받을 수 있습니다.</li>
						<li>· 월 최대 리뷰 등록 제한은 매월 1일 갱신됩니다.</li>
						<li>· 일반/선물/한달사용/체험단/쓱찬스/프리미엄 리뷰 작성은 월 제한이 없습니다 (단, 일반리뷰 월 40건까지, 스페셜리뷰 월 5건까지만 리워드 적립)</li>
						<li>· 일반/선물리뷰/스페셜리뷰 : 60일까지 작성/리워드 적립 가능</li>
						<li>· 한달사용리뷰 : 30일 이후부터 작성 가능 60일까지 작성/리워드 적립 가능합니다.</li>
						<li>· 체험단/쓱찬스 : 30일까지 작성/리워드 적립 가능합니다.</li>
						<li>· 체험단 리뷰는 기간 내 작성해야 합니다 미작성 시, 체험단 선정에서 제외 될 수 있습니다.</li>
						<li>· 동일상품/옵션 리뷰는 30일이내 리뷰 작성 시 1회만 리워드(SSG MONEY) 적립됩니다. 30일 이후 재작성 시에는 리워드 적립이 가능합니다.</li>
						<li>· 오픈마켓 상품리뷰는 판매자의 프리미엄 리뷰로 활용 될 수 있습니다.</li>
						<li>· 리뷰 작성 시, 상품과 무관하거나 스팸, 음란, 정치, 종교, 도배글 불법 내용은 통보없이 삭제되며, 지급된 SSG MONEY는 회수됩니다. 또한, 캡쳐, 동일 이미지, 무관한 이미지, 도용 이미지, 블로그 정보 또는 설명을 등록 하시면 적립금이 미지급 됩니다.</li>
						<li>· 식품, 화장품, 의료기기, 의약외품 등에 의약품으로 오인케 하는 효능·효과를 표방한 체험담 등 관련 법을 위반한 리뷰는 통보 없이 삭제될 수 있습니다. 삭제 시 지급된 SSG MONEY는 회수됩니다.</li>
						</ul>
					<p class="myreview_benefit_tit">[리뷰 혜택 안내]</p>
					<ul class="myreview_benefit_list">
						<li>· 리뷰 작성 리워드는 SSG MONEY로 적립되고 적립일로 부터 365일 이후 소멸됩니다.</li>
						<li>· 별점 리뷰만 등록 시 리뷰 작성 적립금은 지급되지 않습니다 (텍스트/포토/동영상을 함께 등록하시면 리뷰 유형에 따라 적립금을 지급해드립니다.)</li>
						<li>· 일반/선물/쓱찬스/체험단 리뷰는 SSG MONEY 50원 적립</li>
						<li>· 한달사용 리뷰는 300원 적립</li>
						<li>· 받은 선물 리뷰 첫 작성은 500원 적립</li>
						<li>· 스페셜리뷰는 1,000원 적립</li>
						<li>· 일반리뷰는 리뷰 등록 1건당 SSG MONEY 50원 리워드가 적립되고 월 최대 40건, 최대 2,000원까지 리워드가 적립됩니다. 월 최대 40건 리워드 적립 이후부터는 작성만 가능합니다.</li>
						<li>· 스페셜리뷰는 리뷰 등록 1건당 SSG MONEY 1,000원 리워드가 적립되고, 월 최대 5건 까지만 리워드 적립 가능 월 최대 5,000원까지 적립됩니다. 월 최대 5건 리워드 적립 이후 부터는 작성만 가능합니다.</li>
						<li>· 스페셜리뷰는 작성된 내용을 SSG 내부 리뷰 검수를 통해 검수 확정된 리뷰만 게시 및 리워드 지급이 됩니다 회원ID 기준, 검수 확정된 리뷰에 한하여 월 최대 5건 까지만 리워드를 제공합니다. SSG 내부 검수 기준 미달, 월5회 적립 초과 후 작성된 리뷰, 동일상품/옵션 기준으로 30일 이내 작성 한 리뷰는 리워드가 적립되지 않습니다. (월 등록 제한 수는 없으나, 리워드 적립 제한이 있음을 주의해주세요.)</li>
						<li>· 선물/한달사용/체험단/쓱찬스/프리미엄 리뷰 작성은 월 등록/리워드 적립 제한이 없습니다.</li>
						<li>· 월 최대 작성 가능한 리뷰 유형별로 SSG MONEY는 중복 적립 됩니다.</li>
						<li>· 오픈마켓 상품 리뷰는 업체가 선정한 금액으로 리워드가 적립 됩니다. 상품에 따라 리뷰 작성 리워드(SSG MONEY)가 없을 수 있고, 금액도 상이합니다.</li>
						<li>· 리뷰 적립금이 있는 경우에는, MY SSG &gt; 상품 리뷰 페이지에서 적립 가능 금액을 별도로 확인하실 수 있습니다.</li>
						</ul>
				</div>
				<div class="pop_review_btnarea">
					<ul>
						<li><button type="button" class="pop_review_btn ty_gray pop_review_lyclose">닫기</button></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</form>
</div>
<form id="updateForm" method="post" enctype="multipart/form-data" target="mediaIframe">
	<input type="hidden" name="quality" value="s">
	<input type="hidden" name="width" value="640">
	<input type="hidden" name="height" value="360">
	<input type="hidden" name="jpgWidth" value="300">
	<input type="hidden" name="jpgHeight" value="200">
	<input type="hidden" name="code" value="/umov/vc/ITEMEVAL_NEW">
	<input type="file" id="vodFileAttach" name="file" onchange="vodFileUpload();" style="display: none">
</form>
<form id="transcodingForm" method="post" target="transcodingIframe" action="//vpot.ssg.com/media/transcoding.ssg">
	<input type="hidden" id="mediaKey" name="mediaKey" value="">
</form>
<iframe name="mediaIframe" style="width:0;height:0;visibility: hidden;" title="미디어체크"></iframe>
<iframe name="transcodingIframe" style="width:0;height:0;visibility: hidden;" title="트랜스코딩"></iframe>




<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/jquery.form.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.common.pluginset.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.common.layout.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/commonUtil.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/lib/jquery.cookie.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/lib/masonry.pkgd.min.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/common/ssgGnb.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/common/commJs.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/m_ssg/js/ui/mcom.webview.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/event.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.view.layerpopup.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/shareJs.js?v=20240508"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.view.translate.js"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/myssg.view.common.js"></script>

<!--QA테스트를 위하 임시 추가-->
<script src="//sui.ssgcdn.com/ui/m_ssg/js/ui/mcom.pluginset.min.js?v=20240508"></script>
<!--QA테스트를 위하 임시 추가-->

<script type="text/javascript" defer="defer">

	var oReviewMonthLayer = new ssg.View.layerPopup({
		sTarget  : '.pop_review_lyopen',
		sClose   : '.pop_review_lyclose',
		htDefault: {
			overlayCSS: {
				backgroundColor: '#000',
				opacity: 0.6
			},
			onOverlayClick: function() { oReviewMonthLayer.closeLayer(); }
		}
	});

	document.domain = get1depthDomain(); //도메인 셋팅

	//도메인에 따른 uploadUrl 셋팅
	var domainUrl = document.URL;
	var zone = '';
	var isPay = 'N';
	if(domainUrl.indexOf('dev') > -1 || domainUrl.indexOf('local') > -1) {
		zone = 'dev-';
	} else if (domainUrl.indexOf('qa') > -1) {
		zone = 'qa-';
	} else if (domainUrl.indexOf('stg') > -1) {
		zone = 'stg-';
	}

	var recomExpsrYn = "Y";
	var mode = "insert";
	var isFirst = true;

	var imgIdx = 0;
	/* 이미지 파일첨부관련 - 현재 첨부 중인 파일의 갯수 파악 */
	var LIMIT_IMG_FILE_CNT = 3;
	var curIdx = 0;
	var videoYn = false;

	var tmpImg = new Image();
	var imgIndex = 0;
	var imgBase64List = ['','',''];

	(function () {
        var reviewTopTxt = [];
        
        reviewTopTxt.push("이 상품의 어떤 점이 좋았나요?");
        
        reviewTopTxt.push("포장과 배송 상태는 좋았나요?");
        
        reviewTopTxt.push("지인들에게 이 상품을 추천하실 건가요?");
        
        var i = 0;
        setInterval(function(){
            $("#reviewTop").html(reviewTopTxt[i++%3]);
        }, 3000);

		//별점
		var welRatingStar = $('.myreview_rating_star');
		var welStarBtns = welRatingStar.find('.rating_star button');
		var welStarEmotion = welRatingStar.find('.rating_emotion span');

		function starInit() {
			if(welStarBtns.hasClass('on')) {
				welStarBtns.find('.icon').removeClass('icon_star_fill').addClass('icon_star');
				welStarBtns.filter('.on').find('.icon').addClass('icon_star_fill').parent().prevAll().find('.icon').removeClass('icon_star').addClass('icon_star_fill');
				welStarEmotion.removeClass('on');
				welStarEmotion.eq(welStarBtns.filter('.on').index() - 1).addClass('on');
			}
		}

		welStarBtns.on('click', function(e){
			var welTarget = $(e.currentTarget),
				welTargetAll = welTarget.siblings().find('.icon'),
				welSelfTarget = welTarget.find('.icon'),
				welPrevTargets = welTarget.prevAll().find('.icon'),
				welNextTargets = welTarget.nextAll().find('.icon');

			// if(welTarget.hasClass('on')) { return; }
			welTargetAll.removeClass('icon_star_fill').addClass('icon_star');
			welSelfTarget.removeClass('icon_star').addClass('icon_star_fill').parent().prevAll().find('.icon').removeClass('icon_star').addClass('icon_star_fill');
			welTarget.addClass('on').siblings().removeClass('on');
			welStarEmotion.removeClass('on');
			welStarEmotion.eq(welTarget.index() - 1).addClass('on');
		});
		starInit();


		var welGiftLabel = $('.gift_label');
		welGiftLabel.on('click', function(e){
			var welTarget = $(e.currentTarget);
			$("#"+welTarget.attr("for").substring(0,20)+"0").val("");
		});

		var welGiftHardIpt = $(".gift_hard_ipt");
		welGiftHardIpt.on('click', function(e){
			var welTarget = $(e.currentTarget);
			$('input[name^='+welTarget.attr("name")+']').prop("checked",false);
		});

		var welReviewTextArea = $('.myreview_textarea textarea');
		var welReviewTextAreaScrollheight = $('.myreview_textarea textarea').prop('scrollHeight');
		welReviewTextArea.on('keyup paste', $.debounce(250, function(e) {
			var textarea = $(e.currentTarget);
			var label = textarea.siblings('label');
			var scrollHeight = $(this).prop('scrollHeight');
			var maxTextLine = 10;
			var paddingNum = 30;
			var maxScrollHeight = parseInt($(this).css('line-height')) * maxTextLine + paddingNum;

			if(textarea.get(0).value.length){
				label.addClass('blind');
			}

			if(scrollHeight > welReviewTextAreaScrollheight) {
				if(scrollHeight > maxScrollHeight) {return}
				$(this).height(1).height($(this).prop('scrollHeight') - paddingNum);
			}
		})).on('focusin focusout', function(e) {
			e.preventDefault();
			var textarea = $(e.currentTarget);
			var label = textarea.siblings('label');
			var isEmpty = textarea.val().replace('/\s/g','').length > 0 ? false : true;

			if(isEmpty) {
				label.removeClass('blind');
			} else {
				label.addClass('blind');
			}
		});

		welReviewTextArea.on('keyup paste', $.debounce(250, function(e) {
			var textarea = $(e.currentTarget);
			var label = textarea.siblings('label');
			if(textarea.get(0).value.length){
				label.addClass('blind');
			}
		})).on('focusin focusout', function(e) {
			e.preventDefault();
			var textarea = $(e.currentTarget);
			var label = textarea.siblings('label');
			var isEmpty = textarea.val().replace('/\s/g','').length > 0 ? false : true;

			if(isEmpty) {
				label.removeClass('blind');
			} else {
				label.addClass('blind');
			}
		});

		// 사진 첨부
		var isVideo;
		$('body').on('click', '.myreview_media_util .btn_pick', function (e) {
			isVideo = $(this).hasClass('mov');
			var liArray = [];
			if(isVideo) {
				if(videoYn){
					alert("동영상은 최대 1개, 포토는 최대 3개까지 업로드 됩니다.");
					return;
				}else{
					$('#vodFileAttach').trigger('click');
					return;
				}
			}
			if(curIdx >= 3) {return;}
			if(!isVideo) {
				$('.myrv_md_list').find('li').each(function(index, element) {
					if(!$(this).hasClass('on')) {
						liArray.push($(this).index())
					}
				});
				if((liArray.length == 1 && !videoYn) || liArray.length == 0) {
					alert("동영상은 최대 1개, 포토는 최대 3개까지 업로드 됩니다.");
					return;
				}
				curIdx = liArray[0]
				$('#fileAttach').find('input[type=file]').eq(curIdx).trigger('click');
			}
		});

		// 사진 삭제
		$('body').on('click', '.myrv_md_item .img_btn_dlt', function (e) {
			e.preventDefault();
			var delIdex = $(this).parents('li').index(),
				attachSelector = $('#fileAttach').find('input[type=file]').eq(delIdex);
			$(this).parents('li').removeClass('on').find('.myrv_md_item').html('');

			imgBase64List.splice(delIdex, 1, '');
			imgBase64List = imgBase64List.filter( data => data != '');

			// input type=file 초기화
			attachSelector.val('');
		});

		// 동영상 삭제
		$('body').on('click', '.myrv_md_item .vod_btn_dlt', function (e) {
			e.preventDefault();
			var vodAttachSelector = $('#vodFileAttach');
			var vodUrlSelector = $('input[name=vodUrl]');
			var vodThmnlImgUrlSelector = $('input[name=vodThmnlImgUrl]');
			$(this).parents('li').removeClass('on').find('.myrv_md_item').html('');

			// input type=file 초기화
			vodAttachSelector.val('');
			vodUrlSelector.val('');
			vodThmnlImgUrlSelector.val('');
			videoYn = false;
		});

		
	})();

	$(document).ready(function() {
		// 리뷰적립 토글
		$('.js_savings_btn').on('click', function (e) {
			$(this).closest('.myreview_savings').toggleClass('on');
		});

		var openPmCk = '';

		if(openPmCk == 'Y') {
			alert('프리미엄 리뷰로 선정되었네요.\n이 리뷰는 등록하신 내용을 수정하거나\n삭제할 수 없습니다.');
			window.close();
		}

		var itemDupleCheck = '0';
		var commentCntAlertMsgSiteNo = '7006';

		if(opener == null){
			alert("잘못된 경로로 접근하였습니다.");
			location.href= '/';
		}
		

		// ajax 전송 상태
		var sendStatus = "WAIT";

		var savePdtEval = function(){

			if(sendStatus != "WAIT"){
				alert("데이터 전송중입니다.");
				return;
			}else{
				sendStatus = "SEND";
			}

			setData();

			setGiftGrp('gift_ui_tag_check'); //선물태그

			var isValid = validateForm();
			if (!isValid) {
				sendStatus = "WAIT";
				return;
			}
			var recomGrp =[];
			setRecomGrp('ui_user_info_', recomGrp); //고객정보
			setRecomGrp('ui_user_ipt_attr_', recomGrp); //입력형 고객정보
			setRecomGrp('circleRadioTest', recomGrp); //추가평가항목
			setRecomGrp('ui_tag_check', recomGrp); //선택태그

			var custFitInfo =[];
			setCustFitInfo(custFitInfo); //고객맞춤정보

			var userTag = $('input[name=ui_user_tag_input]').val(); //직접태그
			if(userTag){
				userTag = userTag.substr(0,10);
			}

			if(recomExpsrYn != 'N'){
				var ui_textarea = $('#ui_textarea').val().trim();
				if(ui_textarea.length ==0){
					if (confirm('별점만 저장하시겠습니까?')) {

					}else{
						sendStatus = "WAIT";
						return;
					}
				}
			}

			var addParam = {
				name: "recomGrp",
				value: JSON.stringify(recomGrp)
			};

			var addParam2 = {
				name: "userRegTag",
				value: userTag
			};

			var addParam3 = {
				name: "custFitInfo",
				value: JSON.stringify(custFitInfo)
			};

			var formData = $('#submitForm').serializeArray();
			formData.push(addParam);
			formData.push(addParam2);
			formData.push(addParam3);

			$.ajax({
				type: "POST",
				url: "/myssg/popup/savePdtEval.ssg",
				dataType: "json",
				data : formData,
				beforeSend: function(xhr, settings){
					$('#submitBtn').attr('disabled', true);
				},
				complete: function(xhr, textStatus){
					$('#submitBtn').attr('disabled', false);
				},
				success: function(responseDto) {
					sendStatus = "WAIT";

					if (responseDto.resultCode == 'SUCCESS') {
						delayAlertFn(responseDto.resultMsg);
					} else if (responseDto.resultCode == 'FAIL') {
						alert(responseDto.resultMsg);
						if(isPay == 'Y') {
							location.href = 'https://'+ zone +'pay.ssg.com/myssg/orderDetailSslDummy.ssg';
						} else {
							
							opener.location.reload();
							window.close();
							
						}
					} else if (responseDto.resultCode == 'REG_EXPR') {
						alert(responseDto.resultMsg);
					}
				},
				error: function(request, status, error) {
					sendStatus = "WAIT";
					alert("죄송합니다. 리뷰 등록 중 에러가 발생하였습니다.\n다시 시도해 주시기 바랍니다.");
					window.close();
				}
			});
		};

		// 등록
		// 일반 및 한달리뷰
		$('#submitBtn').click(function() {
			savePdtEval();
		});

		// 수정
		$('#modifyBtn').click(function() {
			if(sendStatus != "WAIT"){
				alert("데이터 전송중입니다.");
				return;
			}else{
				sendStatus = "SEND";
			}
			setData();

			setGiftGrp('gift_ui_tag_check'); //선물태그
			var isValid = validateForm();
			if (!isValid) {
				sendStatus = "WAIT";
				return;
			}

			var recomGrp =[];
			setRecomGrp('ui_user_info_', recomGrp); //고객정보
			setRecomGrp('ui_user_ipt_attr_', recomGrp); //입력형 고객정보
			setRecomGrp('circleRadioTest', recomGrp); //추가평가항목
			setRecomGrp('ui_tag_check', recomGrp); //선택태그

			var custFitInfo =[];
			setCustFitInfo(custFitInfo); //고객맞춤정보

			var userTag = $('input[name=ui_user_tag_input]').val(); //직접태그
			if(userTag){
				userTag = userTag.substr(0,10);
			}

			var addParam = {
				name: "recomGrp",
				value: JSON.stringify(recomGrp)
			};

			var addParam2 = {
				name: "userRegTag",
				value: userTag
			};

			var addParam3 = {
				name: "custFitInfo",
				value: JSON.stringify(custFitInfo)
			};

			var formData = $('#submitForm').serializeArray();
			formData.push(addParam);
			formData.push(addParam2);
			formData.push(addParam3);

			$.ajax({
				type: "POST",
				url: "/myssg/popup/modifyPdtEval.ssg",
				dataType: "json",
				data : formData,
				beforeSend: function(xhr, settings){
					$('#modifyBtn').attr('disabled', true);
				},
				complete: function(xhr, textStatus){
					$('#modifyBtn').attr('disabled', false);
				},
				success: function(responseDto) {
					sendStatus = "WAIT";

					if (responseDto.resultCode == 'SUCCESS') {
						delayAlertFn(responseDto.resultMsg);
					} else if (responseDto.resultCode == 'FAIL') {
						alert(responseDto.resultMsg);
						snsCall();
					} else if (responseDto.resultCode == 'REG_EXPR') {
						alert(responseDto.resultMsg);
					}
				},
				error: function(request, status, error) {
					sendStatus = "WAIT";
					opener.location.reload();
					window.close();
				}
			});
		});

		if( mode == 'update' && recomExpsrYn == 'Y' ) {
			$("#cnttBytes").html($("#ui_textarea").val().length);
		}

		//태그 직접입력 keydown
		$('#userRegTag').on('keydown', function(event){
			if (event.keyCode === 13) {
				event.preventDefault();
			};
		});

		//게이트에서 넘어온 별점이 2점 이하이고 신석식품일 경우 alert 노출
		

		var videoTransUrl = "//" + zone + "vpot.ssg.com/media/transcoding.ssg";
		$("#transcodingForm").attr("action", videoTransUrl);

	});

	function setRecomGrp(inputName, recomGrp){
		$('input[name^='+inputName+']').each(function(index, ele){
			if( $(ele).data('iptAttrYn') === 'Y' ){
				if( !!$(ele).val() || $(ele).data('mndtyYn') === 'N' ){
					var param = {
						'recomAttrGrpId' : String($(ele).data('groupid'))
						,'recomAttrId' : String($(ele).data('attrid'))
						,'recomAttrNm' : String($(ele).val())
						,'recomAttrGrpCd' : String($(ele).data('groupcd'))
						,'stdCtgId' : String($(ele).data('stdctgid'))
					}
					recomGrp.push(param);
				}
			}else{
				if( $(ele).prop('checked') ){
					var param = {
						'recomAttrGrpId' : String($(ele).data('groupid'))
						,'recomAttrId' : String($(ele).data('attrid'))
						,'recomAttrGrpCd' : String($(ele).data('groupcd'))
						,'stdCtgId' : String($(ele).data('stdctgid'))
					}
					recomGrp.push(param);
				}
			}
		})
	}

	function setGiftGrp(inputName){
		if($("#"+inputName+"_1_0").val()!=null && $("#"+inputName+"_1_0").val()!=""){
			$("#giftSengpeCntt").val($("#"+inputName+"_1_0").val());
		}else{
			$('input[name^='+inputName+'_1]').each(function(index, ele){
				if( $(ele).prop('checked') ){
					$("#giftSengpeCntt").val($(ele).data("attrid"));
				}
			})
		}
		if($("#"+inputName+"_2_0").val()!=null && $("#"+inputName+"_2_0").val()!=""){
			$("#giftSengBasisCntt").val($("#"+inputName+"_2_0").val());
		}else{
			$('input[name^='+inputName+'_2]').each(function(index, ele){
				if( $(ele).prop('checked') ){
					$("#giftSengBasisCntt").val($(ele).data("attrid"));
				}
			})
		}
	}

	// 추가평가항목 체크
	function checkAttr(inputName, title){
		if($('button[name='+inputName+']').length > 0 && $('button[name='+inputName+'][class*="on"]').size() == 0){
			alert(title);
			return false;
		}
		return true;
	}

	function delayAlertFn(resMsg) {
		
		if ($('input[name="imgBeingYn"]').val() == 'Y' && isPay != 'Y') {
			setInterval(function() { alertReloadFn(resMsg); }, 1000);
		} else {
			alertReloadFn(resMsg);
		}
	}

	function alertReloadFn(resMsg) {
		alert(resMsg);
		if(snsCall()) {
			$.when(snsDeferredObj).then(function(){
				if(isPay == 'Y') {
					location.href = 'https://'+ zone +'pay.ssg.com/myssg/orderDetailSslDummy.ssg';
				} else {
					
					opener.location.reload();
					window.close();
					
				}
			});
		}
	}

	function snsCall(){
		var cntt = $("#ui_textarea").val();
		var img = 'http:https://sitem.ssgcdn.com/31/23/45/item/0000007452331_i1_240.jpg';
		var snsId = $(".share_lst").find("input:checked").attr("id");
		var shareUrl = "https://www.ssg.com/item/itemView.ssg?itemId=0000007452331&siteNo=6001&salestrNo=2022";
		var itemNm = "[풀무원] SOGA 부드러운 찌개두부 300g";
		var msg = "팝업차단으로 인하여 SNS공유하기가 정상적으로 이루어지지 않았습니다. 작성한 리뷰 리스트에서 다시 시도해주세요.";
		var isOk = true;

		switch(snsId) {
			case "snsKakao" :
				if(!kakaoStory_new(itemNm, cntt, img, shareUrl, 'ITEM_COMMENT')){
					alert(msg);
					isOk = false;
				}
				break;
			case "snsFacebook" :
				if(!facebook_share_new(itemNm, cntt, img,'' , shareUrl, 'ITEM_COMMENT')){
					alert(msg);
					isOk = false;
				}
				break;
			case "snsTwitter" :
				if(!twitter_share_new(itemNm, cntt,'' , shareUrl, 'ITEM_COMMENT')){
					alert(msg);
					isOk = false;
				}
				break;
		}

		return isOk;
	}

	function modify_Init(){
		var uccPath = "/umov/vc/";
		$('#quality').val('');
		$('#price').val('');
		$('#packing').val('');
		$('#deliveryTerm').val('' == '0' ? '' : '');
		$('#kind').val('');

		var ul = $('ul.attach_thmb');
		
	}



	// validation 체크
	function validateForm(){
		var qualityEval = $('.rating_star_check.on').val();

		if( qualityEval != undefined && qualityEval != "" ) {
			if ( qualityEval == 0 ) {
				qualityEval = 1;
			}

			$('#qualityEval').val(qualityEval);
		} else {
			alert('리뷰 점수를 선택해 주세요.');
			return false;
		}

		if(recomExpsrYn != "N"){

			var evalOnlyYn = $('input[name=evalOnlyYn]').val();

			var ui_textarea = $('#ui_textarea').val().trim();

			if ($('#premCommentEntryYn').val() == 'Y' && (isFirst || ui_textarea.length < 500) ){
				alert('프리미엄 리뷰는 500자 이상 작성해야 응모 가능합니다. 포토와 동영상도 함께 등록해보세요.');
				return false;
			}

			// 한달리뷰
			if($('#postngClsCd').val() == '20'){
				if( ui_textarea.length < 10 || (!($('input[name="imgBeingYn"]').val()== 'Y' || $('input[name="vodBeingYn"]').val()== 'Y')) ) {
					alert('한 달 사용 리뷰는 50자 이상 입력 후, 포토 또는 동영상 1개를 필수 등록해주세요.');
					return false;
				}
			}
			// 체험단 후기(이벤트응모)
			else if($('#postngClsCd').val() == '30' || $('#postngClsCd').val() == '40' ){
				if ( isFirst || ui_textarea.length < 50 || (!($('input[name="imgBeingYn"]').val() == 'Y' || $('input[name="vodBeingYn"]').val() == 'Y')) ) {
					alert("체험단 리뷰는 50자 이상 입력 후, 포토 또는 동영상 1개를 필수 등록해주세요.");
					return false;
				}
			}
			// 일반 리뷰 ( 0글자 입력 시 별점만 리뷰 )
			else if($('#postngClsCd').val() == '10'){
				if ( evalOnlyYn == 'Y' ) {
					if(ui_textarea.length >= 1 && ui_textarea.length < 10){
						alert('일반리뷰는 10자 이상 입력 후 포토 또는 동영상을 등록해주세요');
						return false;
					}
				}else{
					if(isFirst || ui_textarea.length < 10){
						alert('일반리뷰는 10자 이상 입력 후 포토 또는 동영상을 등록해주세요');
						return false;
					}
				}
			}
			// 선물 리뷰
			else if($('#postngClsCd').val() == '60'){
				if(isFirst || ui_textarea.length < 10){
					alert('선물리뷰는 10자 이상 입력 후 포토 또는 동영상을 등록해주세요.');
					return false;
				}
			}
			// 쓱찬스 리뷰
			else if($('#postngClsCd').val() == '50'){
				if(isFirst || ui_textarea.length < 10){
					alert('쓱찬스 리뷰는 10자 이상 입력 후, 포토 또는 동영상을 등록해주세요.');
					return false;
				}
			}
			else{
				if ( isFirst || ui_textarea.length < 10) {
					alert($.i18n.prop('i18n.front.itemView.상품평내자용10자.msg'));
					return false;
				}
			}

			// 리뷰 작성 텍스트 체크
			
			if(
				(function(){
					var regExpChk = /[\u3131-\u314E\u314F-\u3163!@#$%^&*()_+\-=~`"':;{}\[\]\\<>/?.,]{5,5}/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += '자음/모음/특수문자가 5회 이상 연속으로 입력되어 있습니다.\n해당 부분을 수정 또는 삭제해주세요.\n* 수정필요문구 : ';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /[bcdfghjklmnpqrstvxzBCDFGHJKLMNPQRSTVXZ]{5,5}|[aeiouwyAEIOUWY]{5,5}/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += '자음/모음/특수문자가 5회 이상 연속으로 입력되어 있습니다.\n해당 부분을 수정 또는 삭제해주세요.\n* 수정필요문구 : ';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /([\uAC00-\uD7A3])\1\1\1\1/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += '동일한 글자가 5회 이상 연속으로 입력되어 있습니다.\n해당 부분을 수정 또는 삭제해주세요.\n* 수정필요문구 : ';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /([\uAC00-\uD7A3.,!-_@#$&*+=^%></;:][\uAC00-\uD7A3.,!-_@#$&*+=^%></;:]+)\1\1/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += '동일한 단어/문장이 3회 이상 연속으로 입력되어 있습니다.\n해당 부분을 수정 또는 삭제해주세요.\n* 수정필요문구 : ';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /[\n\t]{3,3}/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += '3줄(자) 이상 띄어쓰기로 입력되어 있는 부분이 있습니다.\n해당 부분을 수정 또는 삭제해주세요.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /[\s]{5,5}/g.exec(ui_textarea);
					if(regExpChk != null){
						 // 스페이스는 서버에서 검사
						return false;
						
						var alertTxt = "";
						
						alertTxt += '영역 다음부터 5칸 이상 연속으로 띄어쓰기가 있습니다. 5번 이내로 수정해서 저장해주세요.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /항암/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /두피염증예방/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /생리불순/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /염증치료/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /발기부전치료제/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /염증 완화/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /생리통완화/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /피부염증/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /개새끼/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /프로포폴/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /소화제/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /아토피 피부/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /인사돌/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /항염/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /좆같/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /지랄/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /이가탄에프캡슐/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /당뇨/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /뱃살이 걱정되시는 분/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /부기빼는차/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /붓기빼는차/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /부기빼기/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /기넥신/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /부기제거/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /붓기제거/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /가네진/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /출산후 부기/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /붓기차/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /날씬균/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /단유차/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /붓기빼기/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /부기빠지는차/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /과민성대장증후군/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /징코민/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /붓기빠지는차/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /모유촉진/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /골다공증/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /출산후 붓기/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /GRIFFONIA SIMPLIFOLIA EXTRACT/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /정맥순환개선제/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /수퍼푸드/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /부기차/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /수유줄이기/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /뚱보균/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /기억력 강화/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /아토피성피부/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /독소배출/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /타임지가선정한/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /해독쥬스/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /암세포/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /해독/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /변비/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /성인병/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /합병증/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /저혈압/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /고지혈증/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /치매/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /간건강기능개선제/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /신경질환/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /빈혈/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /천연원료/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /간기능개선/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /간건강개선제/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /심혈관질환/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /고혈압/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /심장병/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /항종양/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /골수섬유증/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /질염/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /키가 쑥쑥/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /골수섬유종/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /YK07019-19002A/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /몰리스관리자/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /염증케어/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /면역기능활성화/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /혈액이 원활하지 않거나 혈중 중성지방 수치가 높으신 분/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /평소 콜레스테롤 수치가 높으신 분/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /염증개선/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			
			if(
				(function(){
					var regExpChk = /염증제어/g.exec(ui_textarea);
					if(regExpChk != null){
						
						var alertTxt = "";
						
						alertTxt += "'" + regExpChk[0] + "'";
						
						alertTxt += ' 을/를 제외하고 작성해주세요.\n욕설, 비속어 및 식품 등의 효능·효과는 작성할 수 없습니다.';
						alert(alertTxt);
						return true;
					}else {
						return false;
					}
				})()
			){
				return false;
			}
			

		}

		//맞춤정보 체크
		if(false){
			var input = $('input[id^='+'cfiv_'+']');
			for (let x = 0; x < input.length; x++) {
				const ele = input[x];
				if(String($(ele).val()) != ''){
					// 입력형
					if( $(ele).data('iptAttrYn') === 'Y' ){
						if (!!$(ele).data('charcntcnstrcndtval')) {
							if ($(ele).data('charcntcnstrcndtval') === 30) { // 30 글자수 동일
								if($(ele).val().length !== $(ele).data('charcnt')) {
									alert($(ele).data('groupnm') + "은(는) 숫자 " + $(ele).data('charcnt') + "자리로 입력해주세요.");
									return false;
								}
							} else if ($(ele).data('charcntcnstrcndtval') === 20) { // 20 글자수 이하
								if($(ele).val().length > $(ele).data('charcnt')) {
									alert($(ele).data('groupnm')+ "은(는) " + $(ele).data('charcnt') + "자리 내로 입력해주세요.");
									return false;
								}
							} else if ( $(ele).data('charcntcnstrcndtval') === 60 ) { // 60 범위
								if(($(ele).data('iptattrunitminval') > $(ele).val()) || ($(ele).data('iptattrunitmaxval') < $(ele).val())) {
									alert($(ele).data('groupnm') + "은(는) " + $(ele).data('iptattrunitminval') + "~" + $(ele).data('iptattrunitmaxval') +"내로 입력해주세요.");
									return false;
								}
							}
						}
						// 참고 베이스 컬러
						if ($(ele).data('groupid') === 10004 && $(ele).val()) { // 값이 하나라도 있으면 둘 다 있어야함.
							if (!$('[data-groupId="10004"]')[0].value || !$('[data-groupId="10004"]')[1].value) {
								alert("참고 베이스 컬러는 브랜드와 색상 각각 한글/영어/숫자 10자리 내로 브랜드와 색상을 모두 입력해주세요.");
								return false;
							}
						}
					}
				}
			}
		}

		//고객정보 체크 여부
		if(false){
			var len = $('[name^=user_chk_grp_]').length + 1;
			for(var index=1; index<len; index++){
				var userAttr = $('[name=user_chk_grp_'+index+']');
				if( userAttr.data('mndtyYn') !== 'N' && userAttr.find('input').is(':checked') == false ){
					alert('');
					return false;
				}
			}

			//입력형 고객정보 체크 여부
			len = $('[name^=ui_user_ipt_attr_]').length + 1;
			for(var index=1; index<len; index++){
				var userIptAttr = $('input[name=ui_user_ipt_attr_'+index+']');
				if( userIptAttr.data('mndtyYn') !== 'N' ){
					if( !userIptAttr.val() ){
						alert('');
						return false;
					}else if( !(isAlphaNumeric(userIptAttr.val()) && $.isNumeric(userIptAttr.val())) ){
						alert('숫자만 입력 가능합니다.');
						return false;
					}else{
						var nUserIptAttr = Number(userIptAttr.val());
						var iptAttrUnitMinVal = Number(userIptAttr.data('iptAttrUnitMinVal'));
						var iptAttrUnitMaxVal = Number(userIptAttr.data('iptAttrUnitMaxVal'));
						var recomAttrGrpNm = String(userIptAttr.data('recomAttrGrpNm'));
						var iptAttrUnitNm = String(userIptAttr.data('iptAttrUnitNm'));

						if( nUserIptAttr < iptAttrUnitMinVal || nUserIptAttr > iptAttrUnitMaxVal ){
							alert(recomAttrGrpNm + '는(은) ' + iptAttrUnitMinVal + ' ~ ' + iptAttrUnitMaxVal + iptAttrUnitNm + ' 내에서 입력 가능합니다.');
							return false;
						}
					}
				}
			}
		}

		//추가평가항목 체크 여부
		if(true){
			var len = $('[name^=rating_chk_grp]').length + 1;
			for(var index=1; index<len; index++){
				if($('[name=rating_chk_grp'+index+']').find('input').is(':checked') == false){
					alert('이 상품은 어떠셨는지 선택해주세요.');
					return false;
				}
			}
		}
		
		return true;

	}

	// 전송데이터 셋팅
	function setData(){
		// textarea 줄바꿈 <br> 처리
		if(recomExpsrYn != 'N'){
			$('#ui_textarea').val($('#ui_textarea').val().replace(/\r\n/g, '<br>'));
		}

		if($('.myrv_md_list').find('.check_img').length > 0){
			$('input[name="imgBeingYn"]').val("Y");
		} else {
			$('input[name="imgBeingYn"]').val("N");
		}

		if($('.myrv_md_list').find('.check_vod').length > 0){
			$('input[name="vodBeingYn"]').val("Y");
		} else {
			$('input[name="vodBeingYn"]').val("N");
		}

		if($('#userRegTag').length > 0 && $('#userRegTag').val().length > 10){
			$('#userRegTag').val($('#userRegTag').val().slice(0, 10));
		}

	}

	// 파일첨부관련 - 파일 첨부 팝업
	function addFilePopupBtn(id, idx) {
		var $this = $('#' + id);
		var atchFile = $this.val();

		if (atchFile == "") {
			alert('파일을 선택해주십시오.');
			return false;
		}

		/* 입력값에 대한 유효성 검사 */
		var isImg = new RegExp('\.(jpg|jpeg|png)$', 'i').test(atchFile.replace(/^.*[\\\/]/, ''));

		if (!isImg) {
			alert('이미지파일은 jpg, jpeg, png 형식만 등록 가능합니다.');
			return false;
		}
		// 이미지 파일 나머지 부분에 대해서 input type=file 초기화 ( ajax 통신 시 atchFile 여러개가 입력되어도 최초 한개만 처리되기 때문)
		for(var i = 0; i<3 ; i++){
			if(idx != i){
				$('#fileAttach').find('input[type=file]').eq(i).val('');
			}
		}

		imgIndex = $this[0].id.slice(-1) - 1;

		fnComparison($this[0]).then(function(){
			if(imgCheck()) {
				alert("동일한 이미지가 이미 등록되어 있습니다. \n다른 이미지를 등록해 주세요.");
				return false;
			} else {
				var limitSize = 10;
				$('[name=submitForm]').ajaxSubmit({
					url : '/upload/0/image.ssg?fieldName=atchFile',
					type : "POST",
					dataType : 'json',
					success : function(data) {
						if (data.fileSize <= limitSize * 1024 * 1024) { // 파일 사이즈 조건 검사
							if (data.resultMsg == 'SUCCESS') {
								addFileInfo(data);
							} else {
								alert(data.resultMsg);
							}
						} else {
							alert('파일 크기는 ' + limitSize + 'MB를 초과할수 없습니다.');
						}
					},
					error : function(data) {
						alert('서버와의 통신중 에러가 발생하였습니다.');
					}
				});
			}
		});
	}

	// 파일첨부관련 - 첨부될 파일 정보 화면에 노출
	function addFileInfo(data) {
		var strImg = '<img src="' + data.url + '" height="80" alt="대체 텍스트" class="check_img"><a href="#" class="btn_dlt img_btn_dlt"><i class="icon_file_del" aria-hidden="true"></i></a>'
		var fileName = '<input type="hidden" name="fileNames" value="' + data.fileName + '" />';
		var url = '<input type="hidden" name="urls" value="' + data.url + '" />';
		$('.myrv_md_list').find('li').eq(curIdx).addClass('on').find('.myrv_md_item').html(strImg + fileName + url);
	}

	//vod 파일 업로드
	function vodFileUpload(){
		var atchFile = $("#vodFileAttach").val();
		if (atchFile == "") {
			alert('파일을 선택해주십시오.');
			return false;
		}

		// 입력값에 대한 유효성 검사
		var isVmg = new RegExp('\.(wmv|avi|mpg|mov|mp4|skm)$', 'i').test(atchFile.replace(/^.*[\\\/]/, ''));

		if (!isVmg) {
		   alert('동영상 파일은 WMV,AVI, MPG, MOV, MP4, SKM 형식만 등록 가능합니다.');
		   return false;
		}
		$('#updateForm').ajaxSubmit({
            type: "POST",
			url: "//" + zone + "vpot.ssg.com/media/uploadx.ssg",
            async : false,
            dataType: "json",
			success: function(map) {
				if (map.code === "200") {
					uploadCallBack(map.data);
				}
			},
            error: function(request, status, error) {
				alert("등록 중 오류가 발생하였습니다. 다시 시도해주세요.");
				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
        });
	}

	var isCallBack = false;

	$('iframe[name=mediaIframe]').load(function(){
		if(!isCallBack){ //callBack 함수 호출 전에 iframe이 로딩되는 케이스는 웹서버에서 사이즈 용량 문제로 에러 리턴하는 케이스다.
		  alert('최대 50MB의 파일만 업로드가 가능합니다.');
		}
	});

	//VOD 업로드 callBack함수
	function uploadCallBack(result) {
		isCallBack = true;
		if(result.error != undefined) {
			$.each(result.error,function(key,value) {
				alert(value);
				return false;
			});
		}
		//트랜스코딩 요청
		$("#mediaKey").val(result.mediaKey);
		$("#transcodingForm").submit();

		addVodFileInfo(result);
	}

	/* 파일첨부관련 - 첨부될 동영상 파일 정보 화면에 노출 */
	function addVodFileInfo(data) {
		if(data && data.mp4File && data.jpgFile){
			//동영상 파일 및 섬네일 이미지 경로 셋팅
			$("input[name=vodUrl]").val(data.mp4File[0]);
			$("input[name=vodThmnlImgUrl]").val(data.jpgFile);

			//섬네일 이미지 만들어지는 시간이 있어서 setTimeout 함수 사용
			setTimeout("vodImgHtml()", 2000);
		}
	}

	function vodImgHtml(){
		var vodThmnlImgUrl = $("input[name=vodThmnlImgUrl]").val();
		var strVod = '<img src="//'+ zone + 'vpot.ssg.com' + vodThmnlImgUrl + '" height="80" alt="대체 텍스트" class="check_vod"><a href="#" class="btn_dlt vod_btn_dlt"><i class="icon_file_del" aria-hidden="true"></i></a><i class="icon_file_mov"></i>';
		$('.myrv_md_list').find('li').eq(3).addClass('on').find('.myrv_md_item').html(strVod);
		videoYn = true;
	}

	// 취소
	function closePopup(){
		window.close();
	}

	function jsSetText (obj){
		if(isFirst){
			obj.value = "";
			$("#cnttBytes").html($("#ui_textarea").val().length);
			isFirst = false;
		}
	}

	//신고내용 영역 최대바이트수 체크
	$('#ui_textarea').on({
		'keyup paste': function(e) {
			var length = this.value.length;
			var maxLength = 2000;

			if(length > maxLength) {
				this.value = this.value.substring(0, maxLength);
				alert(maxLength + '글자까지만 작성이 가능합니다.');
			}

			$("#cnttBytes").html(this.value.length);
		}
	});

	var checkBox = $("#chk_ui_premium");

	checkBox.on("click", function(e){
		var chkFlag = $("#premCommentEntryYn").val();
		if( chkFlag == "" || chkFlag == 'N' ) {
			$("#premCommentEntryYn").val('Y');
		} else {
			$("#premCommentEntryYn").val('N');
		}
	});

	function moveOpenerAndClose(url) {
		if(opener) {
			opener.location.href = url;
			window.close(true);
		} else {
			location.href = url;
		}
	}


	function setCustFitInfo(custFitInfo){
		$('input[id^='+'cfiv_'+']').each(function(index, ele){
			if(String($(ele).val()) != ''){
				if( $(ele).data('iptAttrYn') === 'Y' ){ // 입력형
					if(!!$(ele).val()){
						var param = {
							'custFitInfoAttrGrpId' : String($(ele).data('groupid'))
							,'custFitInfoAttrId' : String($(ele).data('attrid'))
							,'custRegInfoCntt' : String($(ele).val())
							,'custFitInfoId' : String($(ele).data('infoid'))
							,'stdCtgId' : String($(ele).data('stdctgid'))
							,'custFitInfoTemplId' : String($(ele).data('templid'))
						}
						custFitInfo.push(param);
					}
				}
				else{ // 선택형
					if ($(ele).attr('aria-activedescendant') !== undefined) {
						var attrId = [];
						$('div[data-name^='+$(ele).attr('id')+']').each(function(idx, div){
							if($(div).attr('aria-selected') === 'true'){
								attrId.push($(div).attr('id').split('_')[2]);
							}
						});
						var param = {
							'custFitInfoAttrGrpId' : String($(ele).data('groupid'))
							,'custFitInfoAttrId' : String(attrId)
							,'custFitInfoId' : String($(ele).data('infoid'))
							,'stdCtgId' : String($(ele).data('stdctgid'))
							,'custFitInfoTemplId' : String($(ele).data('templid'))
						}
						custFitInfo.push(param);
					}
				}
			}
		});
	}


	function moveCustFitInfoReg(url) {
		if (confirm('작성 중인 리뷰는 삭제되며, MYSSG 맞춤정보 등록 시 이후 리뷰 작성이 편리해집니다. \n맞춤정보를 등록/수정하러 가시겠습니까?')) {
			if(opener) {
				opener.location.href = url;
				window.close(true);
			} else {
				location.href = url;
			}
		}
	}

	// 상품평 쓰기
	 function fn_write(ordNo, ordItemSeq, itemId, uitemId, postngClsCd, promId) {
		 var qualityEval = $('.rating_star_check.on').val();
		 if( qualityEval != undefined ) {
			 if (confirm('내용 작성중에 다른 리뷰 유형으로 이동하시면, \n현재 등록중이던 리뷰 내용이\n모두 초기화됩니다.\n이동하시겠습니까?')) {
				 document.location.href = "/myssg/popup/myPdtEvalReg.ssg?_mpop=new&postngClsCd="+ postngClsCd+"&ordNo="+ordNo+"&ordItemSeq="+ordItemSeq+"&itemId="+itemId+"&uitemId="+uitemId+"&promId=" + promId+"&qualityEval=" + qualityEval;
			 }
		 } else {
			 alert('상품평 점수를 선택해주세요.');
			 return false;
		 }
	 }

	function fnComparison(e) {
		var fileArr = Array.prototype.slice.call(e.files);
		var reader = new FileReader();

		reader.onload = function(e) {
			tmpImg.src = e.target.result;
		};
		reader.readAsDataURL(fileArr[0]);

		return new Promise(function(resolve){
			setTimeout(function() {
				resolve();
			}, 1000);
		});
	}

	function imgCheck(){
		var base64 = getBase64Image(tmpImg);
		return isDuplicate(base64);
	}

	function getBase64Image(img) {
		var canvas = document.createElement("canvas");
		canvas.width = img.width;
		canvas.height = img.height;

		var ctx = canvas.getContext("2d");
		ctx.drawImage(img, 0, 0);

		var dataURL = canvas.toDataURL("image/png");

		return dataURL.replace(/^data:image\/(png|jpg);base64,/, "");
	}

	function isDuplicate(base64) {
		var isDup = [];
		isDup.push(imgBase64List.some(function(array) {
			return array === base64;
		}));

		if(isDup.includes(true)){
			return true; // 동일 이미지 존재
		}else {
			imgBase64List.splice(imgIndex, 1, base64);
			return false;
		}
	}
</script>



<script>
	function cnttFirstInit() {
		
	}

	var addCnttInfo = [];

	function cnttInit() {
		var attr = {};
		var attrGrp = {};
		var attrList = [];
		var attrGrpList = [];
		
	}

	document.addEventListener("DOMContentLoaded", function(){
		// 최초화면 cntt 데이터 세팅(디폴트는 첫번째 add 데이터)
		cnttFirstInit();
		// add별 cntt 데이터 세팅
		cnttInit();
	});

	// 유아동/반려 라디오버튼 클릭 시
	const tabInputs = document.querySelectorAll(`.myinfo_rdo`);
	tabInputs.forEach((tabInput, index) => {
		tabInput.addEventListener('change', () => {
			// 정보 초기화
			const comboBox = document.querySelectorAll(`.myinfo_combo`);
			comboBox.forEach((combo) => {
				combo.querySelector(`input`).value = "";
			});
			$('input[name^='+'cfiv_'+']').val("");

			// 정보 재 입력
			var idx = $('input[name=_addInfo]:checked').data('index');

			if(addCnttInfo[idx] != null && addCnttInfo[idx] != undefined){
				for( let i = 0 ; i < addCnttInfo[idx].length ; i++ ) {
					if(addCnttInfo[idx][i].pcCustFitAttrCd == '10'){
						for(let l = 0 ; l < addCnttInfo[idx][i].custFitInfoAttr.length ; l++){
							$("#cfiv_"+ addCnttInfo[idx][i].custFitInfoAttrGrpId +"_"+ addCnttInfo[idx][i].custFitInfoAttr[l].custFitInfoAttrId).val(addCnttInfo[idx][i].custFitInfoAttr[l].custRegInfoCntt);
						}
					}
					if(addCnttInfo[idx][i].pcCustFitAttrCd == '20' || addCnttInfo[idx][i].pcCustFitAttrCd == '30' || addCnttInfo[idx][i].pcCustFitAttrCd == '40'){
						for(let l = 0 ; l < addCnttInfo[idx][i].custFitInfoAttr.length ; l++){
							$("#cfiv_"+ addCnttInfo[idx][i].custFitInfoAttrGrpId +"_"+ addCnttInfo[idx][i].custFitInfoAttr[l].custFitInfoAttrId).click();
						}
					}
				}
			}
		});
	});
</script>

<span id="transObserver" class="blind" style="position:fixed;top:0px;display:none" data-default-txt="언어 번역">언어 번역</span></body></html>