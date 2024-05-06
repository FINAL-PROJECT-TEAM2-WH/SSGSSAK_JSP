<%@page import="java.net.URLDecoder"%>
<%@page import="member.domain.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="shortcut icon" type="image/x-icon" href="//sui.ssgcdn.com/ui/common/img/ssg.ico">
    <link rel="image_src" href="//sui.ssgcdn.com/ui/common/img/sns/ssg.png"  />
    <title class="notranslate">믿고 사는 즐거움 SSG.COM</title>
    <meta name="title" content="믿고 사는 즐거움 SSG.COM" />
    <meta name="description" content="신세계 그룹의 온라인 쇼핑 플랫폼, SSG.COM. 신세계몰, 신세계백화점, 이마트몰, 트레이더스, 신세계라이브쇼핑, S.I. Village가 SSG.COM 이라는 이름으로 하나가 되었어요." />
    <meta name="google-site-verification" content="riDJ-IX46HanskLx25pj6-y8ANf2qTgZNfv_UJvkHq8" />
    <meta name="facebook-domain-verification" content="ctgl43lmqq8gm4thxgg7j3b38sfqau" />
    <link rel="preload" href="//sui.ssgcdn.com/ui/ssg/css/ssg_global.css?v=20240424" as="style" />
<link rel="preload" href="//sui.ssgcdn.com/ui/ssg/css/ssg_layout.css?v=20240424" as="style" />
<link rel="preload" href="//sui.ssgcdn.com/ui/ssg/css/ssg_component.css?v=20240424" as="style"/>
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssg_global.css?v=20240424"/>
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssg_layout.css?v=20240424"/>
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssg_component.css?v=20240424"/>
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/main_new.css?v=20240424"/>
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/mndmoon_ssg.css?v=20240424"/>
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssgday_2023.css?v=20240424"/>


<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/com_component.css?v=20240424" />
<link rel="stylesheet" type="text/css" href="https://sui.ssgcdn.com/ui/m_ssg/css/ssg_component.css?v=20240424" />
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssgday_2023.css?v=20240424" />
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','GA4_dataLayer','GTM-PWBFGRL');</script>

<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/lib/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/lib/jquery.cookie.min.js"></script>
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
        /* siteno : {
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
        }, */
       /*  sitenm : {
    6005: 'SSG.COM', 6004: '신세계몰', 6009: '신세계백화점', 7018: '이마트몰', 6001: '이마트몰', 6002: '트레이더스', 7009: '새벽배송', 7011: '까사미아', 7012: 'CHICOR', 6100: 'howdy', 6200: '신세계라이브쇼핑', 6300: 'S.I.VILLAGE', 7008: '프리미엄아울렛', 7013: '여행', 6400: '스타필드'
    }, */
   /*  curr_siteno : '6005', */
        mediaCd : '10',
        loginPath : 'http://member.ssg.com/member/login.ssg',
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
            ckWhere          : 'ssg_ggbr',
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
        isLoginYn : 'false'=='true'?'Y':'N',
        mbrTypeCd : '',
        ckWhere : 'ssg_ggbr'
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
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ssg.ad.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/common/ssg.react.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.view.layerpopup.js?v=20240424"></script><script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/netfunnel.js?v=20240424" charset="UTF-8"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/netfunnel_skin.js?v=20240424"></script>

<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/affiliate/affiliateGnb.js"></script>
<script type="text/javascript">
var agent = navigator.userAgent.toLowerCase();

if ( (navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf("msie") != -1) ) {
    // ie skip
} else {
    !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
    n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
    n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
    t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
    document,'script','https://connect.facebook.net/en_US/fbevents.js');

    fbq('init', '1668002603429849');
    fbq('track', "PageView");
}
</script>
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=1668002603429849&ev=PageView&noscript=1"
/></noscript>
<script type="text/javascript">
    window.GA4_dataLayer = window.GA4_dataLayer || [];
    function gtmPush() {
        GA4_dataLayer.push(arguments);
    }
</script>

<script async src="https://www.googletagmanager.com/gtag/js?id=AW-1005118937"></script>
<script type="text/javascript">
    window.dataLayer = window.dataLayer || [];
    function gtag() {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());
    gtag('config', 'AW-1005118937');
    gtag('config', 'AW-704173742');
</script>

<script type="text/javascript" src="//dynamic.criteo.com/js/ld/ld.js?a=49618&a=106273" async="true"></script>
<script type="text/javascript">
  +function(a,p,P,b,y){a.braze={};a.brazeQueue=[];for(var s="BrazeSdkMetadata DeviceProperties Card Card.prototype.dismissCard Card.prototype.removeAllSubscriptions Card.prototype.removeSubscription Card.prototype.subscribeToClickedEvent Card.prototype.subscribeToDismissedEvent Card.fromContentCardsJson Banner CaptionedImage ClassicCard ControlCard ContentCards ContentCards.prototype.getUnviewedCardCount Feed Feed.prototype.getUnreadCardCount ControlMessage InAppMessage InAppMessage.SlideFrom InAppMessage.ClickAction InAppMessage.DismissType InAppMessage.OpenTarget InAppMessage.ImageStyle InAppMessage.Orientation InAppMessage.TextAlignment InAppMessage.CropType InAppMessage.prototype.closeMessage InAppMessage.prototype.removeAllSubscriptions InAppMessage.prototype.removeSubscription InAppMessage.prototype.subscribeToClickedEvent InAppMessage.prototype.subscribeToDismissedEvent InAppMessage.fromJson FullScreenMessage ModalMessage HtmlMessage SlideUpMessage User User.Genders User.NotificationSubscriptionTypes User.prototype.addAlias User.prototype.addToCustomAttributeArray User.prototype.addToSubscriptionGroup User.prototype.getUserId User.prototype.incrementCustomUserAttribute User.prototype.removeFromCustomAttributeArray User.prototype.removeFromSubscriptionGroup User.prototype.setCountry User.prototype.setCustomLocationAttribute User.prototype.setCustomUserAttribute User.prototype.setDateOfBirth User.prototype.setEmail User.prototype.setEmailNotificationSubscriptionType User.prototype.setFirstName User.prototype.setGender User.prototype.setHomeCity User.prototype.setLanguage User.prototype.setLastKnownLocation User.prototype.setLastName User.prototype.setPhoneNumber User.prototype.setPushNotificationSubscriptionType InAppMessageButton InAppMessageButton.prototype.removeAllSubscriptions InAppMessageButton.prototype.removeSubscription InAppMessageButton.prototype.subscribeToClickedEvent FeatureFlag FeatureFlag.prototype.getStringProperty FeatureFlag.prototype.getNumberProperty FeatureFlag.prototype.getBooleanProperty automaticallyShowInAppMessages destroyFeed hideContentCards showContentCards showFeed showInAppMessage toggleContentCards toggleFeed changeUser destroy getDeviceId initialize isPushBlocked isPushPermissionGranted isPushSupported logCardClick logCardDismissal logCardImpressions logContentCardImpressions logContentCardClick logContentCardsDisplayed logCustomEvent logFeedDisplayed logInAppMessageButtonClick logInAppMessageClick logInAppMessageHtmlClick logInAppMessageImpression logPurchase openSession requestPushPermission removeAllSubscriptions removeSubscription requestContentCardsRefresh requestFeedRefresh refreshFeatureFlags requestImmediateDataFlush enableSDK isDisabled setLogger setSdkAuthenticationSignature addSdkMetadata disableSDK subscribeToContentCardsUpdates subscribeToFeedUpdates subscribeToInAppMessage subscribeToSdkAuthenticationFailures toggleLogging unregisterPush wipeData handleBrazeAction subscribeToFeatureFlagsUpdates getAllFeatureFlags".split(" "),i=0;i<s.length;i++){for(var m=s[i],k=a.braze,l=m.split("."),j=0;j<l.length-1;j++)k=k[l[j]];k[l[j]]=(new Function("return function "+m.replace(/\./g,"_")+"(){window.brazeQueue.push(arguments); return true}"))()}window.braze.getCachedContentCards=function(){return new window.braze.ContentCards};window.braze.getCachedFeed=function(){return new window.braze.Feed};window.braze.getUser=function(){return new window.braze.User};window.braze.getFeatureFlag=function(){return new window.braze.FeatureFlag};(y=p.createElement(P)).type='text/javascript';
    y.src='https://js.appboycdn.com/web-sdk/4.6/braze.min.js';
    y.async=1;(b=p.getElementsByTagName(P)[0]).parentNode.insertBefore(y,b)
  }(window,document,'script');
</script>

<script type="text/javascript">
    if(typeof brazeManager === 'undefined') {
        let brazeManager = (function () {
            
            const apiKey = '4a23e2c2-9255-4dd0-97c0-64c0e4036eb5';
            let initialized = false;
            if (apiKey !== '') {
                initialized = braze.initialize(apiKey, {
                    baseUrl: 'sdk.iad-05.braze.com',
                    enableLogging: false
                });

                if (initialized) {

                    braze.automaticallyShowInAppMessages();

                    
                            if ($.cookie && $.cookie('PCID')) {
                                braze.changeUser($.cookie('PCID'));
                            }
                        

                    // braze.openSession();
                }
            }

            return {
                logCustomEvent: function (eventName, data = {}) {
                    if (!initialized) {
                        console.warn('braze is not initialized.');
                        return;
                    }
                    braze.logCustomEvent(eventName, data);
                }
            };
        })();
    }
</script>

<script type="text/javascript">
        try {
           (function(h,o,u,n,d) {
               h=h[d]=h[d]||{q:[],onReady:function(c){h.q.push(c)}}
               d=o.createElement(u);d.async=1;d.src=n
               n=o.getElementsByTagName(u)[0];n.parentNode.insertBefore(d,n)
           })(window,document,'script','https://www.datadoghq-browser-agent.com/datadog-rum-v4.js','DD_RUM')
           DD_RUM.onReady(function() {
               DD_RUM.init({
                   clientToken: 'pubac24b901ad56e749ee6c07bb375b8882',
                   applicationId: '7fbd6977-4594-4ef2-a112-4059b74bb4e6',
                   site: 'datadoghq.com',
                   service: 'ssg-ssgmall-webapp',
                   env: 'prod',
                   sessionSampleRate: 0.01,
                   sessionReplaySampleRate: 0,
                   trackUserInteractions: true,
                   trackResources: true,
                   trackLongTasks: true,
                   defaultPrivacyLevel: 'mask-user-input',
                   trackInteractions: true,
                   trackSessionAcrossSubdomains: true,
                   enableExperimentalFeatures: ['clickmap']
               });
               DD_RUM.startSessionReplayRecording();
           })
        } catch(e) {}
    </script>

<%@include file="/Top.jsp"  %>

<%@include file="/category.jsp" %>

<script id="_tmplNavigation" type="text/x-jquery-tmpl">
{{tmpl "#_tmplNavigation-menu"}}
{{if hasKillerCategory}}
    <div class="cmctg_sub_side has_kilr">
    {{tmpl(data) "#_tmplNavigation-killer"}}
    </div>
    {{else hasSideBanner}}
    <div class="cmctg_sub_side">
    {{tmpl(data.L[0]) "#_tmplNavigation-banner"}}
    </div>
{{/if}}
</script>
<script id="_tmplNavigation-menu" type="text/x-jquery-tmpl">
<div class="cmctg_sub_menu">
{{each(i, header) data.L}}
    <ul class="cmctg_sub_lst" role="menu">
        <li class="cmctg_sub_tit">
            <a role="menuitem" href="/disp/category.ssg?ctgId={{= header.C}}" class="cmctg_sub_lnk clickable" data-react-tarea="SSG공통|GNB 띠메뉴|SSG카테고리|{{= header.N}}">{{= header.N}}</a>
        </li>
        {{if header.L.length > 0}}
            {{each(i, submenu) header.L}}
            <li class="cmctg_sub_mn">
                <a role="menuitem" href="/disp/category.ssg?ctgId={{= submenu.C}}" class="cmctg_sub_lnk clickable" data-react-tarea="SSG공통|GNB 띠메뉴|SSG카테고리|{{= submenu.N}}">{{= submenu.N}}</a>
            </li>
            {{/each}}
        {{/if}}
    </ul>
{{/each}}
</div>
</script>
<script id="_tmplNavigation-banner" type="text/x-jquery-tmpl">
<div class="cmctg_bn">
    <a href="/plan/planShop.ssg?planShopId={{= PNSHOP_ID}}" class="cmctg_bn_lnk clickable" data-react-tarea="SSG공통|GNB 띠메뉴|기획전|{{= I_TIT}}">
        <div class="cmctg_bn_img">
            <img src="{{= I}}" alt="{{= I_TIT}}" onerror="this.onerror=null;this.src='//simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=290&h=290&edit=c'">
        </div>
        <div class="cmctg_bn_tit">
            <span class="cmctg_bn_main">{{= I_TIT}}</span>
            <span class="cmctg_bn_sub">{{= I_SUB_TIT}}</span>
        </div>
    </a>
</div>
</script>
<script id="_tmplNavigation-killer" type="text/x-jquery-tmpl">
<div class="cmctg_kilr{{if C === "5410000002"}} ty_mndmoon{{/if}}{{if C === "5410000004"}} ty_baby{{/if}}{{if C === "1000015889"}} ty_trip{{/if}}{{if C === "1000015890"}} ty_trip{{/if}}">
    {{if KILR_SERVICE.TOT_LINK_URL && KILR_SERVICE.TOT_IMG}}
    <div class="cmctg_kilr_bn">
        <a href="{{= KILR_SERVICE.TOT_LINK_URL}}" class="cmctg_kilr_bnlnk clickable" data-react-tarea="SSG공통|GNB 띠메뉴|{{if C === "5410000002"}}먼데이문 배너{{/if}}{{if C === "5410000004"}}유아동 배너{{/if}}{{if C === "1000015889"}}여행 배너{{/if}}{{if C === "1000015890"}}갤러리 배너{{/if}}">
            <div class="cmctg_kilr_bnimg">
                <img src="{{= KILR_SERVICE.TOT_IMG}}" alt="" onerror="this.onerror=null;this.src='//simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=290&h=290&edit=c'">
            </div>
        </a>
    </div>
    {{/if}}

    {{if KILR_SERVICE.L && KILR_SERVICE.L.length > 0}}
        <ul class="cmctg_kilr_lst">
        {{each(i, serviceMenu) KILR_SERVICE.L}}
            {{if serviceMenu.SHOW_YN === "ALL" || serviceMenu.SHOW_YN === "LOGIN" && typeof settings !== "undefined" && settings.UserInfo.isLoginYn === "Y"}}
                <li class="cmctg_kilr_mn">
                    <a href="{{= serviceMenu.LINK_URL}}" class="cmctg_kilr_lnk" data-react-tarea="SSG공통|GNB 띠메뉴|{{= N}} 서비스매장|{{= serviceMenu.NM}}">
                        <span class="cmctg_kilr_name">{{= serviceMenu.NM}}</span>
                        {{if serviceMenu.IMG !== ""}}<span class="cmctg_kilr_badge"><img src="{{= serviceMenu.IMG}}" alt=""></span>{{/if}}
                    </a>
                </li>
            {{/if}}
        {{/each}}
        </ul>
    {{/if}}
</div>
</script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.view.common.gnb.js?v=20240424"></script>

<script type="text/javascript">
    $(function(){
        var oSsgMallCategory = new ssg.Model.mallCategory({
            sUrl: 'https://sui.ssgcdn.com/common/ui/json/pc_ctg_list_0000_NORMAL.js'
        });
        oSsgMallCategory.getCategoryInfo().done(function(data) {
            var sSsgMallCode = "6005";
            var oSsgViewNavigation = new ssg.View.navigation({
                htCtgData: oSsgMallCategory.getCtgDataByMallCode(sSsgMallCode, data)
            });
        });

        // 배송매장 ( 새벽배송 )의 경우 이마트 / 새벽배송이 같은 차수이면 비노출 처리한다.
        deferredObj.done(function() {
            $("#cmgnb_ship a").each(function() {
                if ( this.href.indexOf("morning/dvstore.ssg") > -1 && settings.UserInfo.isSameEmGm == "true" ) {
                    $(this).hide();
                } else {
                    $(this).show();
                }
            });
        });
    });
</script>

<script type="text/javascript">
    function goSmileClub(notMbrLinkUrl, leaveMbrLinkUrl, mbrLinkUrl) {
        if(settings.UserInfo.mbrspMbrDivCd == '2002') {
            location.href = leaveMbrLinkUrl;
        } else if(settings.UserInfo.mbrspMbrDivCd == '2003' || settings.UserInfo.mbrspMbrDivCd == '2004') {
            location.href = mbrLinkUrl;
        } else {
            location.href = notMbrLinkUrl;
        }
    }
</script>
<div id="category" class="category"></div>

    <!-- 메인 레이어팝업 (s) -->
    <div class="cmmain_notipop" id="cmmain_notipop_div" style="display: none;">
    <div class="cmmain_notipop_inr" id="cmmain_notipop_inr_div">
    </div>
</div>

<script type="text/javascript">

    $(function(){
        /*팝업갯수만큼 쿠키값확인 하여 쿠키값없을경우 show*/
        // 메인 레이어 팝업 & 긴급공지 팝업
        deferredObj.done(function() {
            var mainLayerPcEmergencyFlag = settings && settings.emergency && settings.emergency.MAIN_LAYER_PC_OFF == 'Y';
            if(!mainLayerPcEmergencyFlag) {
                if( "" != "" ) {
                    ajaxMainLayerPopupPc('6005', 'preview');
                } else {
                    if('main' == 'main'){
                        ajaxMainLayerPopupPc('6005', 'main');
                    } else {
                        ajaxMainLayerPopupPc('6005', 'page');
                    }
                }
            }
        });
    });

    // 메인 레이어 팝업 제어
    function noticeMainUnlimitedClose(closeId) {
        // #486560 domain 추가 전체 전몰 쿠키 공유
        $.cookie('popup_' + closeId,'Y',{expires:365,path:'/',domain:'.ssg.com'});
        $("#popup_" + closeId).hide();
    };
    
    // 메인 레이어 팝업 제어
    function noticeMainTodayClose(closeId) {
        // #486560 domain 추가 전체 전몰 쿠키 공유
        $.cookie('popup_' + closeId,'Y',{expires:1,path:'/'});
        $("#popup_" + closeId).hide();
    };

    function noticeMainPopupClose(closeId) {
        $("#popup_" + closeId).hide();
    };
    
    function getNoticeCookieMain(name) {
        var nameOfCookie = name + "=";
        var x = 0;
        while ( x <= document.cookie.length ){
            var y = (x+nameOfCookie.length);
            if ( document.cookie.substring( x, y ) == nameOfCookie ) {
                if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
                    endOfCookie = document.cookie.length;
                return unescape( document.cookie.substring( y, endOfCookie ) );
            }
            x = document.cookie.indexOf( " ", x ) + 1;
            if ( x == 0 )
                break;
        }
        return "";
    }

    var oPasswordCampaignModal;
    function callMemberAfterClose (popupId, param) {
        var url = '/comm/ajaxMbrPopupBlock.ssg?cmpnPopupCd=' + param;
        $.ajax({
            type : "GET",
            url : url,
            dataType : "json",
            success:function(data) {
                if(data.resultCode == "SUCCESS") {
                    alert(data.resultMsg);
                    if(popupId == 'cm_password_campaign' && typeof oPasswordCampaignModal != 'undefined' && typeof oPasswordCampaignModal == 'object') {
                        oPasswordCampaignModal.closeLayer();
                    } else {
                        $("#" + popupId).hide();
                    }
                } else {
                    alert(data.resultMsg);
                }
            }
        });
    }

    //배송지 등록 팝업
    function fn_MemberInsertMyShppLoc(url) {
        $('#popup_lyRegiAd').hide();
        popupWin(url + "?callbackUrl=" + encodeURIComponent(location.href), "", 750, 822, "yes", "no");
    }

    //배송지 변경 팝업
    function fn_MemberModifyMyShppLoc(url) {
        $('#popup_lyRegiAd2').hide();
        popupWin(url + "&callbackUrl=" + encodeURIComponent(location.href), "", 750, 822, "yes", "no");
    }
    
    //레이어 팝업 조회
    function ajaxMainLayerPopupPc(siteNoParam, typeParam) {

        
                var url = '/main/ajaxMainLayerPopupPc.ssg?siteNo='+siteNoParam+'&type='+typeParam;
                if(typeParam == 'preview') {
                    url = "/main/ajaxMainLayerPopupPcForPreview?popupId=" + "";
                }
            
        $.ajax({
            type : "GET",
            url : url,
            dataType : "html",
            success:function(html) {
                var showFlag = false;
                var $tempDiv = $('<div/>').html(html);
                // 긴급공지 팝업 노출 결정
                $tempDiv.find('.noti').each(function(idx, data) {
                    var popupId = $(data).attr('id');
    
                    if (getNoticeCookieMain(popupId) != "Y") {
                        $("#cmmain_notipop_inr_div").append(data);
                        showFlag = true;
                    }
                });

                // 비밀번호 변경 팝업
                $tempDiv.find('.cm_lypop_pwcampaign').each(function (idx, data) {
                    $("#wrap").append(data);

                    oPasswordCampaignModal = new ssg.View.layerPopup({
                        sTarget  : '.cm_lypop_open',
                        sClose   : '.cm_lypop_close',
                        htDefault: {
                            overlayCSS: {
                                backgroundColor: '#fff',
                                opacity: 0.8
                            },
                            onOverlayClick: function() { oPasswordCampaignModal.closeLayer(); }
                        }
                    });

                    oPasswordCampaignModal.showByTarget('#cm_password_campaign');
                });

                // 배송지 등록/수정
                $tempDiv.find('.regi_ad').each(function (idx, data) {
                    var popupId = $(data).attr('id');

                    if (getNoticeCookieMain(popupId) != "Y") {
                        $("#cmmain_notipop_inr_div").append(data);
                        showFlag = true;
                    }
                });

                // 로그인 보안 설정
                $tempDiv.find('.logsecurity').each(function (idx, data) {
                    var popupId = $(data).attr('id');

                    if (getNoticeCookieMain(popupId) != "Y") {
                        $("#cmmain_notipop_inr_div").append(data);
                        showFlag = true;
                    }
                });

                if ( showFlag ) {
                    $("#cmmain_notipop_div").show();
                } else {
                    $("#cmmain_notipop_div").hide();
                }
            }
        });//end ajax
    }
    
</script>
<!-- 메인 레이어팝업 (e) -->
	<%@include file="mainBanner.jsp" %>
    <%@include file="secondBanner.jsp" %>
<div class="main_ssgday" id="main_ssgday" style="display:none"></div>
    <input type="hidden" value="7">
<!-- 그룹사 프로모션 -->
    <div class="cmmain_sec_brandstore" id="group-promotion" data-react-tarea-cd="00052_000000495">
        <div class="cmmain_heading">
            <h2 class="cmmain_heading_tit">믿고 사는 즐거움</h2>
        </div>
        <div class="cmmain_tabwrap js_cmmain_tabwrap" data-tabname="brandstore">
            <ul class="cmmain_tablist ty_txtmenu js_cmmain_tablist">
                <li role="presentation" class="on"
                        data-react-unit-type="text"
                        data-react-unit-text='[{"type":"text","value":"까사미아"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="true"
                                data-react-tarea-dtl-cd="t00014"
                        >까사미아</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="text"
                        data-react-unit-text='[{"type":"text","value":"STARBUCKS"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-react-tarea-dtl-cd="t00014"
                        >STARBUCKS</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="text"
                        data-react-unit-text='[{"type":"text","value":"CHICOR"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-react-tarea-dtl-cd="t00014"
                        >CHICOR</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="text"
                        data-react-unit-text='[{"type":"text","value":"신세계라이브쇼핑"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-react-tarea-dtl-cd="t00014"
                        >신세계라이브쇼핑</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="text"
                        data-react-unit-text='[{"type":"text","value":"S.I.VILLAGE"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-react-tarea-dtl-cd="t00014"
                        >S.I.VILLAGE</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="text"
                        data-react-unit-text='[{"type":"text","value":"프리미엄아울렛"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-react-tarea-dtl-cd="t00014"
                        >프리미엄아울렛</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="text"
                        data-react-unit-text='[{"type":"text","value":"스타필드"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-react-tarea-dtl-cd="t00014"
                        >스타필드</button>
                    </li>
                </ul>
            <div class="cmmain_tabcont">
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel on">
                        <div class="cmmain_brandstore_banner">
                            <div class="cmmain_brandstore_img">
                                <img src="//sui.ssgcdn.com/cmpt/banner/202401/2024011009560771555043463604_500.jpg" alt="까사미아" loading="lazy">
                            </div>
                            <div class="cmmain_brandstore_cont"
                                 data-react-unit-type="banr"
                                 data-react-unit-id="2003317666"
                                 data-react-unit-text='[{"type":"text","value":"까사미아 (비전시금지)"}]'>
                                <a href="https://casamia.family.ssg.com" class="cmmain_brandstore_link clickable"
                                   data-react-tarea-dtl-cd="t00001"
                                >
                                <div class="cmmain_brandstore_logo">
                                        <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202309/2023091319473714078776873977_423.png&w=476&h=145&edit=c&t=724468d9381a11a4ca8f014b9b8aa99ce58d2f5c" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202309/2023091319473714078776873977_423.png&w=952&h=290&edit=c&t=8a4ceacb2e0976fada6abbe073c6d0dfcd2fc747 2x" alt="까사미아" loading="lazy">
                                    </div>
                                    <div class="cmmain_brandstore_tit">
                                        <span class="cmmain_brandstore_tittx">오직 당신의 집을 생각하는</span>
                                        <span class="cmmain_brandstore_tittx">신세계까사의 리빙 & 라이프스타일 브랜드</span>
                                    </div>
                                </a>
                            </div>
                            <div class="cmmain_brandstore_more"
                                 data-react-unit-type="text"
                                 data-react-unit-text='[{"type":"text","value":"까사미아"}]'>
                                <a href="https://casamia.family.ssg.com" class="cmmain_brandstore_morebtn clickable"
                                   data-react-tarea-dtl-cd="t00014">
                                    <div class="cmmain_brandstore_moretx">
                                        <span class="cmmain_brandstore_moretx1">까사미아</span>
                                        <span class="cmmain_brandstore_moretx2">바로가기</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="cmmain_cunit_items">
                                <ul class="cunit_thmb_lst cunit_thmb_lst6">
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000275667918"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000275667918","shpp_type_dtl_cd":"98","item_img_url":"https://sitem.ssgcdn.com/18/79/66/item/1000275667918_i1_550.jpg","lwst_sellprc":303050,"usabl_inv_qty":99999,"brand_id":"3000025066"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/dealItemView.ssg?itemId=1000275667918&siteNo=7011&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[Made by GUUD] 까사미아 콜라보레이션 특별 혜택_1000275667918" data-info="1000275667918" data-index="1" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/18/79/66/item/1000275667918_i1_550.jpg, //sitem.ssgcdn.com/18/79/66/item/1000275667918_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/18/79/66/item/1000275667918_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[Made by GUUD] 까사미아 콜라보레이션 특별 혜택"  loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/dealItemView.ssg?itemId=1000275667918&siteNo=7011&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000275667918" data-index="1" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[Made by GUUD] 까사미아 콜라보레이션 특별 혜택"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000275667918" data-idx="1" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[Made by GUUD] 까사미아 콜라보레이션 특별 혜택" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"N","itemChrctDivCd":"10","itemLnkd":"/item/dealItemView.ssg?itemId=1000275667918&siteNo=7011&salestrNo=6005","giftBtnMsg":"선물하기 불가 상품 입니다.","bothSsgMorningShppYn":"N","shppTypeDtlCd":"98","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000275667918","dealItemYn":"Y","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7011","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7011">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000275667918">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[Made by GUUD] 까사미아 콜라보레이션 특별 혜택">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/18/79/66/item/1000275667918_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000275667918" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mncasamia"><span class="blind">까사미아</span></i>
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
        <a href="/item/dealItemView.ssg?itemId=1000275667918&siteNo=7011&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[Made by GUUD] 까사미아 콜라보레이션 특별 혜택"
            data-info="1000275667918" data-index="1" data-position="view" data-unit="img">
                <em class="tx_ko">[Made by GUUD] 까사미아 콜라보레이션 특별 혜택</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">303,050</em>
                    <span class="ssg_tx">원<span class="cm_tx_opt">~</span></span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦303,050)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:88.0%"><span class="blind">별점 4.45점</span></span>
            </div>
            <span class="rate_tx">(<em>138</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000205041847"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000205041847","shpp_type_dtl_cd":"14","item_img_url":"https://sitem.ssgcdn.com/47/18/04/item/1000205041847_i1_550.jpg","lwst_sellprc":303050,"usabl_inv_qty":99999,"brand_id":"3000025066"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000205041847&siteNo=7011&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[made by GUUD] 일상고백  다온 아쿠아텍스 3인 소파 세트_1000205041847" data-info="1000205041847" data-index="2" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/47/18/04/item/1000205041847_i1_550.jpg, //sitem.ssgcdn.com/47/18/04/item/1000205041847_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/47/18/04/item/1000205041847_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[made by GUUD] 일상고백  다온 아쿠아텍스 3인 소파 세트"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/47/18/04/item/1000205041847_i2_550.jpg, //sitem.ssgcdn.com/47/18/04/item/1000205041847_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/47/18/04/item/1000205041847_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="[made by GUUD] 일상고백  다온 아쿠아텍스 3인 소파 세트" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_coupon"><span class="blind">쿠폰포함</span>5<em class="per">%</em></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000205041847&siteNo=7011&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000205041847" data-index="2" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[made by GUUD] 일상고백  다온 아쿠아텍스 3인 소파 세트"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000205041847" data-idx="2" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[made by GUUD] 일상고백  다온 아쿠아텍스 3인 소파 세트" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000205041847&siteNo=7011&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"14","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000205041847","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7011","useForcedSsg":"N","cartPsblType":"","uitemId":"00001","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7011">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000205041847">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00001">
                <input type="hidden" name="notiTitle" value="[made by GUUD] 일상고백  다온 아쿠아텍스 3인 소파 세트">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/47/18/04/item/1000205041847_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000205041847" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mncasamia"><span class="blind">까사미아</span></i>
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
        <a href="/item/itemView.ssg?itemId=1000205041847&siteNo=7011&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[made by GUUD] 일상고백  다온 아쿠아텍스 3인 소파 세트"
            data-info="1000205041847" data-index="2" data-position="view" data-unit="img">
                <em class="tx_ko">[made by GUUD] 일상고백  다온 아쿠아텍스 3인 소파 세트</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">303,050</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦303,050)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">319,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>319,000</dd>
                            </dl>
                    <dl class="dis">
                        <dt>쿠폰</dt><dd>15,950원</dd>
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>303,050</dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:92.0%"><span class="blind">별점 4.67점</span></span>
            </div>
            <span class="rate_tx">(<em>67</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000337646883"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000337646883","shpp_type_dtl_cd":"14","item_img_url":"https://sitem.ssgcdn.com/83/68/64/item/1000337646883_i1_550.jpg","lwst_sellprc":790000,"usabl_inv_qty":99999,"brand_id":"3000025066"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000337646883&siteNo=7011&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|onion 리켓 와이드서랍장_1000337646883" data-info="1000337646883" data-index="3" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/83/68/64/item/1000337646883_i1_550.jpg, //sitem.ssgcdn.com/83/68/64/item/1000337646883_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/83/68/64/item/1000337646883_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="onion 리켓 와이드서랍장"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/83/68/64/item/1000337646883_i2_550.jpg, //sitem.ssgcdn.com/83/68/64/item/1000337646883_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/83/68/64/item/1000337646883_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="onion 리켓 와이드서랍장" aria-hidden="true" loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000337646883&siteNo=7011&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000337646883" data-index="3" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|onion 리켓 와이드서랍장"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000337646883" data-idx="3" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|onion 리켓 와이드서랍장" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000337646883&siteNo=7011&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"14","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000337646883","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7011","useForcedSsg":"N","cartPsblType":"","uitemId":"00001","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7011">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000337646883">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00001">
                <input type="hidden" name="notiTitle" value="onion 리켓 와이드서랍장">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/83/68/64/item/1000337646883_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000337646883" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mncasamia"><span class="blind">까사미아</span></i>
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
        <a href="/item/itemView.ssg?itemId=1000337646883&siteNo=7011&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|onion 리켓 와이드서랍장"
            data-info="1000337646883" data-index="3" data-position="view" data-unit="img">
                <em class="tx_ko">onion 리켓 와이드서랍장</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">790,000</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦790,000)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:100.0%"><span class="blind">별점 5점</span></span>
            </div>
            <span class="rate_tx">(<em>2</em>개)</span>
        </div>
    </div>
    <div class="cunit_bene">
        <div class="spt_deiv">
            <div class="tx_deiv">
                <span>무료배송</span>
                    </div>
            </div>
        </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000576619893"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000576619893","shpp_type_dtl_cd":"98","item_img_url":"https://sitem.ssgcdn.com/93/98/61/item/1000576619893_i1_550.jpg","lwst_sellprc":490000,"usabl_inv_qty":99999,"brand_id":"3000025066"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/dealItemView.ssg?itemId=1000576619893&siteNo=7011&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[비밀혜택 S머니적립] 까사미아BEST 소파/침대/식탁 外_1000576619893" data-info="1000576619893" data-index="4" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/93/98/61/item/1000576619893_i1_550.jpg, //sitem.ssgcdn.com/93/98/61/item/1000576619893_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/93/98/61/item/1000576619893_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[비밀혜택 S머니적립] 까사미아BEST 소파/침대/식탁 外"  loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/dealItemView.ssg?itemId=1000576619893&siteNo=7011&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000576619893" data-index="4" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[비밀혜택 S머니적립] 까사미아BEST 소파/침대/식탁 外"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000576619893" data-idx="4" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[비밀혜택 S머니적립] 까사미아BEST 소파/침대/식탁 外" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"N","itemChrctDivCd":"10","itemLnkd":"/item/dealItemView.ssg?itemId=1000576619893&siteNo=7011&salestrNo=6005","giftBtnMsg":"선물하기 불가 상품 입니다.","bothSsgMorningShppYn":"N","shppTypeDtlCd":"98","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000576619893","dealItemYn":"Y","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7011","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7011">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000576619893">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[비밀혜택 S머니적립] 까사미아BEST 소파/침대/식탁 外">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/93/98/61/item/1000576619893_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000576619893" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mncasamia"><span class="blind">까사미아</span></i>
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
        <a href="/item/dealItemView.ssg?itemId=1000576619893&siteNo=7011&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[비밀혜택 S머니적립] 까사미아BEST 소파/침대/식탁 外"
            data-info="1000576619893" data-index="4" data-position="view" data-unit="img">
                <em class="tx_ko">[비밀혜택 S머니적립] 까사미아BEST 소파/침대/식탁 外</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">490,000</em>
                    <span class="ssg_tx">원<span class="cm_tx_opt">~</span></span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦490,000)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:90.0%"><span class="blind">별점 4.5점</span></span>
            </div>
            <span class="rate_tx">(<em>2</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000039776261"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000039776261","shpp_type_dtl_cd":"14","item_img_url":"https://sitem.ssgcdn.com/61/62/77/item/1000039776261_i1_550.jpg","lwst_sellprc":722000,"usabl_inv_qty":605,"brand_id":"3000025066"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000039776261&siteNo=7011&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[made by GUUD] 까사미아 x 바이노만  코모도 1인 리클라이너 카멜_1000039776261" data-info="1000039776261" data-index="5" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/61/62/77/item/1000039776261_i1_550.jpg, //sitem.ssgcdn.com/61/62/77/item/1000039776261_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/61/62/77/item/1000039776261_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[made by GUUD] 까사미아 x 바이노만  코모도 1인 리클라이너 카멜"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/61/62/77/item/1000039776261_i2_550.jpg, //sitem.ssgcdn.com/61/62/77/item/1000039776261_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/61/62/77/item/1000039776261_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="[made by GUUD] 까사미아 x 바이노만  코모도 1인 리클라이너 카멜" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_coupon"><span class="blind">쿠폰포함</span>5<em class="per">%</em></span>
            </div>
<div class="cm_bdg_c">
                </div>
            </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000039776261&siteNo=7011&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000039776261" data-index="5" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[made by GUUD] 까사미아 x 바이노만  코모도 1인 리클라이너 카멜"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000039776261" data-idx="5" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[made by GUUD] 까사미아 x 바이노만  코모도 1인 리클라이너 카멜" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000039776261&siteNo=7011&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"14","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000039776261","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7011","useForcedSsg":"N","cartPsblType":"","uitemId":"00001","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7011">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000039776261">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00001">
                <input type="hidden" name="notiTitle" value="[made by GUUD] 까사미아 x 바이노만  코모도 1인 리클라이너 카멜">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/61/62/77/item/1000039776261_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000039776261" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mncasamia"><span class="blind">까사미아</span></i>
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
        <a href="/item/itemView.ssg?itemId=1000039776261&siteNo=7011&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[made by GUUD] 까사미아 x 바이노만  코모도 1인 리클라이너 카멜"
            data-info="1000039776261" data-index="5" data-position="view" data-unit="img">
                <em class="tx_ko">[made by GUUD] 까사미아 x 바이노만  코모도 1인 리클라이너 카멜</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">722,000</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦722,000)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">760,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>760,000</dd>
                            </dl>
                    <dl class="dis">
                        <dt>쿠폰</dt><dd>38,000원</dd>
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>722,000</dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:92.0%"><span class="blind">별점 4.67점</span></span>
            </div>
            <span class="rate_tx">(<em>12</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000036037671"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000036037671","shpp_type_dtl_cd":"14","item_img_url":"https://sitem.ssgcdn.com/71/76/03/item/1000036037671_i1_550.jpg","lwst_sellprc":4530000,"usabl_inv_qty":99999,"brand_id":"3000025066"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000036037671&siteNo=7011&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|캄포 클래식 4인 카우치소파 IV_1000036037671" data-info="1000036037671" data-index="6" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/71/76/03/item/1000036037671_i1_550.jpg, //sitem.ssgcdn.com/71/76/03/item/1000036037671_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/71/76/03/item/1000036037671_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="캄포 클래식 4인 카우치소파 IV"  loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000036037671&siteNo=7011&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000036037671" data-index="6" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|캄포 클래식 4인 카우치소파 IV"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000036037671" data-idx="6" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|캄포 클래식 4인 카우치소파 IV" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000036037671&siteNo=7011&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"14","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000036037671","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7011","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7011">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000036037671">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="캄포 클래식 4인 카우치소파 IV">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/71/76/03/item/1000036037671_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000036037671" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mncasamia"><span class="blind">까사미아</span></i>
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
        <a href="/item/itemView.ssg?itemId=1000036037671&siteNo=7011&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|캄포 클래식 4인 카우치소파 IV"
            data-info="1000036037671" data-index="6" data-position="view" data-unit="img">
                <em class="tx_ko">캄포 클래식 4인 카우치소파 IV</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">4,530,000</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦4,530,000)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:100.0%"><span class="blind">별점 5점</span></span>
            </div>
            <span class="rate_tx">(<em>17</em>개)</span>
        </div>
    </div>
    <div class="cunit_bene">
        <div class="spt_deiv">
            <div class="tx_deiv">
                <span>무료배송</span>
                    </div>
            </div>
        </div>
    <div class="cunit_tag v2 hide_gl">
    <a href="/search.ssg?src_area=listtag&query=%23%eb%aa%a8%eb%8d%98" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_태그|캄포 클래식 4인 카우치소파 IV" class="clickable" data-info="1000036037671" data-index="0" data-position="tag" data-tagnm="모던">#모던</a>
    <a href="/search.ssg?src_area=listtag&query=%23%ed%98%bc%ec%88%98" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_태그|캄포 클래식 4인 카우치소파 IV" class="clickable" data-info="1000036037671" data-index="1" data-position="tag" data-tagnm="혼수">#혼수</a>
    </div>
    </div>
</li>
                                    </ul>
                            </div>
                        <div class="cmmain_more"
                             data-react-unit-type="text"
                             data-react-unit-text='[{"type":"text","value":"까사미아"}]'>
                            <a href="https://casamia.family.ssg.com"
                               class="cmmain_more_btn btn_moreview clickable"
                               data-react-tarea-dtl-cd="t00014"
                            >까사미아 바로가기</a>
                        </div>
                    </div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel ">
                        <div class="cmmain_brandstore_banner">
                            <div class="cmmain_brandstore_img">
                                <img src="//sui.ssgcdn.com/cmpt/banner/202401/2024011009554812221596710259_961.jpg" alt="스타벅스" loading="lazy">
                            </div>
                            <div class="cmmain_brandstore_cont"
                                 data-react-unit-type="banr"
                                 data-react-unit-id="2003317477"
                                 data-react-unit-text='[{"type":"text","value":"스타벅스 (비전시금지)"}]'>
                                <a href="https://starbucks.family.ssg.com" class="cmmain_brandstore_link clickable"
                                   data-react-tarea-dtl-cd="t00001"
                                >
                                <div class="cmmain_brandstore_logo">
                                        <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202211/2022112914015206451642578164_41.png&w=476&h=145&edit=c&t=9c88c9d1cb202f0de0f64d8f0b1bfcfea5116535" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202211/2022112914015206451642578164_41.png&w=952&h=290&edit=c&t=f0c1a5f403e63b86c96155773c35227c32bf8986 2x" alt="스타벅스" loading="lazy">
                                    </div>
                                    <div class="cmmain_brandstore_tit">
                                        <span class="cmmain_brandstore_tittx">일상에 특별함을 더해주는</span>
                                        <span class="cmmain_brandstore_tittx">스타벅스 상품들을 만나보세요</span>
                                    </div>
                                </a>
                            </div>
                            <div class="cmmain_brandstore_more"
                                 data-react-unit-type="text"
                                 data-react-unit-text='[{"type":"text","value":"STARBUCKS"}]'>
                                <a href="https://starbucks.family.ssg.com" class="cmmain_brandstore_morebtn clickable"
                                   data-react-tarea-dtl-cd="t00014">
                                    <div class="cmmain_brandstore_moretx">
                                        <span class="cmmain_brandstore_moretx1">STARBUCKS</span>
                                        <span class="cmmain_brandstore_moretx2">바로가기</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="cmmain_cunit_items">
                                <ul class="cunit_thmb_lst cunit_thmb_lst6">
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000576805201"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000576805201","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/01/52/80/item/1000576805201_i1_550.jpg","lwst_sellprc":20000,"usabl_inv_qty":108,"brand_id":"2000016468"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000576805201&siteNo=7015&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[스타벅스] 사이렌 하우스 머그 473ml_1000576805201" data-info="1000576805201" data-index="1" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/01/52/80/item/1000576805201_i1_550.jpg, //sitem.ssgcdn.com/01/52/80/item/1000576805201_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/01/52/80/item/1000576805201_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[스타벅스] 사이렌 하우스 머그 473ml"  loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000576805201&siteNo=7015&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000576805201" data-index="1" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[스타벅스] 사이렌 하우스 머그 473ml"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000576805201" data-idx="1" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[스타벅스] 사이렌 하우스 머그 473ml" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000576805201&siteNo=7015&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000576805201","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7015","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7015">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000576805201">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[스타벅스] 사이렌 하우스 머그 473ml">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/01/52/80/item/1000576805201_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000576805201" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mnstarbucks"><span class="blind">스타벅스</span></i>
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
        <a href="/item/itemView.ssg?itemId=1000576805201&siteNo=7015&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[스타벅스] 사이렌 하우스 머그 473ml"
            data-info="1000576805201" data-index="1" data-position="view" data-unit="img">
                <em class="tx_ko">[스타벅스] 사이렌 하우스 머그 473ml</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">20,000</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦20,000)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:92.0%"><span class="blind">별점 4.67점</span></span>
            </div>
            <span class="rate_tx">(<em>3</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000576803727"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000576803727","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/27/37/80/item/1000576803727_i1_550.jpg","lwst_sellprc":19000,"usabl_inv_qty":158,"brand_id":"2000016468"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000576803727&siteNo=7015&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[스타벅스] 사이렌 하우스 머그 355ml_1000576803727" data-info="1000576803727" data-index="2" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/27/37/80/item/1000576803727_i1_550.jpg, //sitem.ssgcdn.com/27/37/80/item/1000576803727_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/27/37/80/item/1000576803727_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[스타벅스] 사이렌 하우스 머그 355ml"  loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000576803727&siteNo=7015&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000576803727" data-index="2" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[스타벅스] 사이렌 하우스 머그 355ml"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000576803727" data-idx="2" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[스타벅스] 사이렌 하우스 머그 355ml" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000576803727&siteNo=7015&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000576803727","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7015","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7015">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000576803727">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[스타벅스] 사이렌 하우스 머그 355ml">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/27/37/80/item/1000576803727_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000576803727" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mnstarbucks"><span class="blind">스타벅스</span></i>
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
        <a href="/item/itemView.ssg?itemId=1000576803727&siteNo=7015&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[스타벅스] 사이렌 하우스 머그 355ml"
            data-info="1000576803727" data-index="2" data-position="view" data-unit="img">
                <em class="tx_ko">[스타벅스] 사이렌 하우스 머그 355ml</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">19,000</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦19,000)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:90.0%"><span class="blind">별점 4.5점</span></span>
            </div>
            <span class="rate_tx">(<em>2</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000576802730"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000576802730","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/30/27/80/item/1000576802730_i1_550.jpg","lwst_sellprc":18000,"usabl_inv_qty":36,"brand_id":"2000016468"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000576802730&siteNo=7015&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[스타벅스] 사이렌 하우스 머그 237ml_1000576802730" data-info="1000576802730" data-index="3" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/30/27/80/item/1000576802730_i1_550.jpg, //sitem.ssgcdn.com/30/27/80/item/1000576802730_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/30/27/80/item/1000576802730_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[스타벅스] 사이렌 하우스 머그 237ml"  loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000576802730&siteNo=7015&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000576802730" data-index="3" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[스타벅스] 사이렌 하우스 머그 237ml"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000576802730" data-idx="3" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[스타벅스] 사이렌 하우스 머그 237ml" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000576802730&siteNo=7015&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000576802730","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7015","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7015">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000576802730">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[스타벅스] 사이렌 하우스 머그 237ml">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/30/27/80/item/1000576802730_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000576802730" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mnstarbucks"><span class="blind">스타벅스</span></i>
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
        <a href="/item/itemView.ssg?itemId=1000576802730&siteNo=7015&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[스타벅스] 사이렌 하우스 머그 237ml"
            data-info="1000576802730" data-index="3" data-position="view" data-unit="img">
                <em class="tx_ko">[스타벅스] 사이렌 하우스 머그 237ml</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">18,000</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦18,000)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:100.0%"><span class="blind">별점 5점</span></span>
            </div>
            <span class="rate_tx">(<em>1</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000573643682"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000573643682","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/82/36/64/item/1000573643682_i1_550.jpg","lwst_sellprc":25000,"usabl_inv_qty":19,"brand_id":"2000016468"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000573643682&siteNo=7015&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[스타벅스] 청룡 글라스 세트(2p)_1000573643682" data-info="1000573643682" data-index="4" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/82/36/64/item/1000573643682_i1_550.jpg, //sitem.ssgcdn.com/82/36/64/item/1000573643682_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/82/36/64/item/1000573643682_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[스타벅스] 청룡 글라스 세트(2p)"  loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000573643682&siteNo=7015&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000573643682" data-index="4" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[스타벅스] 청룡 글라스 세트(2p)"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000573643682" data-idx="4" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[스타벅스] 청룡 글라스 세트(2p)" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000573643682&siteNo=7015&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000573643682","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7015","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7015">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000573643682">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[스타벅스] 청룡 글라스 세트(2p)">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/82/36/64/item/1000573643682_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000573643682" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mnstarbucks"><span class="blind">스타벅스</span></i>
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
        <a href="/item/itemView.ssg?itemId=1000573643682&siteNo=7015&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[스타벅스] 청룡 글라스 세트(2p)"
            data-info="1000573643682" data-index="4" data-position="view" data-unit="img">
                <em class="tx_ko">[스타벅스] 청룡 글라스 세트(2p)</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">25,000</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦25,000)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:100.0%"><span class="blind">별점 5점</span></span>
            </div>
            <span class="rate_tx">(<em>4</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000570092399"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000570092399","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/99/23/09/item/1000570092399_i1_550.jpg","lwst_sellprc":35000,"usabl_inv_qty":200,"brand_id":"2000016468"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000570092399&siteNo=7015&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[스타벅스] 버라이어티 리유저블 컵세트 473ml (6P)_1000570092399" data-info="1000570092399" data-index="5" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/99/23/09/item/1000570092399_i1_550.jpg, //sitem.ssgcdn.com/99/23/09/item/1000570092399_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/99/23/09/item/1000570092399_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[스타벅스] 버라이어티 리유저블 컵세트 473ml (6P)"  loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000570092399&siteNo=7015&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000570092399" data-index="5" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[스타벅스] 버라이어티 리유저블 컵세트 473ml (6P)"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000570092399" data-idx="5" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[스타벅스] 버라이어티 리유저블 컵세트 473ml (6P)" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000570092399&siteNo=7015&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000570092399","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7015","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7015">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000570092399">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[스타벅스] 버라이어티 리유저블 컵세트 473ml (6P)">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/99/23/09/item/1000570092399_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000570092399" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mnstarbucks"><span class="blind">스타벅스</span></i>
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
        <a href="/item/itemView.ssg?itemId=1000570092399&siteNo=7015&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[스타벅스] 버라이어티 리유저블 컵세트 473ml (6P)"
            data-info="1000570092399" data-index="5" data-position="view" data-unit="img">
                <em class="tx_ko">[스타벅스] 버라이어티 리유저블 컵세트 473ml (6P)</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">35,000</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦35,000)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:20.0%"><span class="blind">별점 1점</span></span>
            </div>
            <span class="rate_tx">(<em>1</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000570092195"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000570092195","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/95/21/09/item/1000570092195_i1_550.jpg","lwst_sellprc":41000,"usabl_inv_qty":111,"brand_id":"2000016468"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000570092195&siteNo=7015&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[스타벅스]  SS 크리스마스 클래식 켄처 텀블러 591ml_1000570092195" data-info="1000570092195" data-index="6" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/95/21/09/item/1000570092195_i1_550.jpg, //sitem.ssgcdn.com/95/21/09/item/1000570092195_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/95/21/09/item/1000570092195_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[스타벅스]  SS 크리스마스 클래식 켄처 텀블러 591ml"  loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000570092195&siteNo=7015&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000570092195" data-index="6" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[스타벅스]  SS 크리스마스 클래식 켄처 텀블러 591ml"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000570092195" data-idx="6" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[스타벅스]  SS 크리스마스 클래식 켄처 텀블러 591ml" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000570092195&siteNo=7015&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000570092195","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7015","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7015">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000570092195">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[스타벅스]  SS 크리스마스 클래식 켄처 텀블러 591ml">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/95/21/09/item/1000570092195_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000570092195" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mnstarbucks"><span class="blind">스타벅스</span></i>
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
        <a href="/item/itemView.ssg?itemId=1000570092195&siteNo=7015&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[스타벅스]  SS 크리스마스 클래식 켄처 텀블러 591ml"
            data-info="1000570092195" data-index="6" data-position="view" data-unit="img">
                <em class="tx_ko">[스타벅스]  SS 크리스마스 클래식 켄처 텀블러 591ml</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">41,000</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦41,000)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:84.0%"><span class="blind">별점 4.2점</span></span>
            </div>
            <span class="rate_tx">(<em>5</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    </ul>
                            </div>
                        <div class="cmmain_more"
                             data-react-unit-type="text"
                             data-react-unit-text='[{"type":"text","value":"STARBUCKS"}]'>
                            <a href="https://starbucks.family.ssg.com"
                               class="cmmain_more_btn btn_moreview clickable"
                               data-react-tarea-dtl-cd="t00014"
                            >STARBUCKS 바로가기</a>
                        </div>
                    </div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel ">
                        <div class="cmmain_brandstore_banner">
                            <div class="cmmain_brandstore_img">
                                <img src="//sui.ssgcdn.com/cmpt/banner/202404/2024042615162200910383795138_237.jpg" alt="5월 시코르" loading="lazy">
                            </div>
                            <div class="cmmain_brandstore_cont"
                                 data-react-unit-type="banr"
                                 data-react-unit-id="2003593891"
                                 data-react-unit-text='[{"type":"text","value":"5월 시코르"}]'>
                                <a href="https://chicor.family.ssg.com" class="cmmain_brandstore_link clickable"
                                   data-react-tarea-dtl-cd="t00001"
                                >
                                <div class="cmmain_brandstore_logo">
                                        <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202211/2022112914015925208320823832_497.png&w=476&h=145&edit=c&t=96ec0e0cba9f83c856677e690eef72fd12ee585f" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202211/2022112914015925208320823832_497.png&w=952&h=290&edit=c&t=a6232387fa21040b3963651ffadf7af5ff3bee41 2x" alt="시코르" loading="lazy">
                                    </div>
                                    <div class="cmmain_brandstore_tit">
                                        <span class="cmmain_brandstore_tittx">뷰티풀 라운지, 시코르</span>
                                        <span class="cmmain_brandstore_tittx">기프트세트 부터 정품증정세트,이득템 까지!</span>
                                    </div>
                                </a>
                            </div>
                            <div class="cmmain_brandstore_more"
                                 data-react-unit-type="text"
                                 data-react-unit-text='[{"type":"text","value":"CHICOR"}]'>
                                <a href="https://chicor.family.ssg.com" class="cmmain_brandstore_morebtn clickable"
                                   data-react-tarea-dtl-cd="t00014">
                                    <div class="cmmain_brandstore_moretx">
                                        <span class="cmmain_brandstore_moretx1">CHICOR</span>
                                        <span class="cmmain_brandstore_moretx2">바로가기</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="cmmain_cunit_items">
                                <ul class="cunit_thmb_lst cunit_thmb_lst6">
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000033540086"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000033540086","shpp_type_dtl_cd":"21","item_img_url":"https://sitem.ssgcdn.com/86/00/54/item/1000033540086_i1_550.jpg","lwst_sellprc":92000,"usabl_inv_qty":28,"brand_id":"2000012463"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000033540086&siteNo=7012&salestrNo=1004" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|포티샤 두피&모발강화 샴푸 600ml 듀오(+포티샤샴푸200ml증정)_1000033540086" data-info="1000033540086" data-index="1" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/86/00/54/item/1000033540086_i1_550.jpg, //sitem.ssgcdn.com/86/00/54/item/1000033540086_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/86/00/54/item/1000033540086_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="포티샤 두피&모발강화 샴푸 600ml 듀오(+포티샤샴푸200ml증정)"  loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <i class="badge badge_ssgsale_coupon_shape" aria-label="쓱세일 쿠폰"></i>
            <span class="di_coupon"><span class="blind">쿠폰포함</span>15<em class="per">%</em></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000033540086&siteNo=7012&salestrNo=1004" class="blank clickable"  target="_blank"
                    data-info="1000033540086" data-index="1" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|포티샤 두피&모발강화 샴푸 600ml 듀오(+포티샤샴푸200ml증정)"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000033540086" data-idx="1" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|포티샤 두피&모발강화 샴푸 600ml 듀오(+포티샤샴푸200ml증정)" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000033540086&siteNo=7012&salestrNo=1004","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"21","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000033540086","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7012","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"1004","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7012">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000033540086">
                <input type="hidden" name="attnTgtIdnfNo2" value="1004">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="포티샤 두피&모발강화 샴푸 600ml 듀오(+포티샤샴푸200ml증정)">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/86/00/54/item/1000033540086_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000033540086" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mnchicor"><span class="blind">CHICOR</span></i>
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
                <em class="tx_ko">르네휘테르</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000033540086&siteNo=7012&salestrNo=1004" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|포티샤 두피&모발강화 샴푸 600ml 듀오(+포티샤샴푸200ml증정)"
            data-info="1000033540086" data-index="1" data-position="view" data-unit="img">
                <em class="tx_ko">포티샤 두피&amp;모발강화 샴푸 600ml 듀오(+포티샤샴푸200ml증정)</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">92,000</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦92,000)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">120,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>120,000</dd>
                            </dl>
                    <dl class="dis">
                        <dt>쿠폰</dt><dd>18,000원</dd>
                        <dt>SSG MONEY 할인쿠폰</dt><dd>10,000원</dd>
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>92,000</dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:96.0%"><span class="blind">별점 4.88점</span></span>
            </div>
            <span class="rate_tx">(<em>810</em>개)</span>
        </div>
    </div>
    <div class="cunit_bene">
        <div class="spt_deiv">
            </div>
        <div class="cunit_bene_lst">
        </div>
    </div>
    <div class="cunit_tag v2 hide_gl">
    <a href="/search.ssg?src_area=listtag&query=%23%ea%b3%bc%ec%9d%bc%ed%96%a5" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_태그|포티샤 두피&모발강화 샴푸 600ml 듀오(+포티샤샴푸200ml증정)" class="clickable" data-info="1000033540086" data-index="0" data-position="tag" data-tagnm="과일향">#과일향</a>
    <a href="/search.ssg?src_area=listtag&query=%23%eb%af%bc%ea%b0%90%ec%84%b1%ed%94%bc%eb%b6%80%ec%9a%a9" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_태그|포티샤 두피&모발강화 샴푸 600ml 듀오(+포티샤샴푸200ml증정)" class="clickable" data-info="1000033540086" data-index="1" data-position="tag" data-tagnm="민감성피부용">#민감성피부용</a>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000256814255"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000256814255","shpp_type_dtl_cd":"21","item_img_url":"https://sitem.ssgcdn.com/55/42/81/item/1000256814255_i1_550.jpg","lwst_sellprc":95400,"usabl_inv_qty":497,"brand_id":"2010024537"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000256814255&siteNo=7012&salestrNo=1020" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[5월] 시몽 테르미크 150ml 듀오 세트_1000256814255" data-info="1000256814255" data-index="2" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/55/42/81/item/1000256814255_i1_550.jpg, //sitem.ssgcdn.com/55/42/81/item/1000256814255_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/55/42/81/item/1000256814255_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[5월] 시몽 테르미크 150ml 듀오 세트"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/55/42/81/item/1000256814255_i2_550.jpg, //sitem.ssgcdn.com/55/42/81/item/1000256814255_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/55/42/81/item/1000256814255_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="[5월] 시몽 테르미크 150ml 듀오 세트" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <i class="badge badge_ssgsale_coupon_shape" aria-label="쓱세일 쿠폰"></i>
            <span class="di_coupon"><span class="blind">쿠폰포함</span>15<em class="per">%</em></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000256814255&siteNo=7012&salestrNo=1020" class="blank clickable"  target="_blank"
                    data-info="1000256814255" data-index="2" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[5월] 시몽 테르미크 150ml 듀오 세트"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000256814255" data-idx="2" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[5월] 시몽 테르미크 150ml 듀오 세트" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000256814255&siteNo=7012&salestrNo=1020","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"21","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000256814255","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7012","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"1020","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7012">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000256814255">
                <input type="hidden" name="attnTgtIdnfNo2" value="1020">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[5월] 시몽 테르미크 150ml 듀오 세트">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/55/42/81/item/1000256814255_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000256814255" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mnchicor"><span class="blind">CHICOR</span></i>
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
                <em class="tx_ko">케라스타즈</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000256814255&siteNo=7012&salestrNo=1020" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[5월] 시몽 테르미크 150ml 듀오 세트"
            data-info="1000256814255" data-index="2" data-position="view" data-unit="img">
                <em class="tx_ko">[5월] 시몽 테르미크 150ml 듀오 세트</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">95,400</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦95,400)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">124,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>124,000</dd>
                            </dl>
                    <dl class="dis">
                        <dt>쿠폰</dt><dd>18,600원</dd>
                        <dt>SSG MONEY 할인쿠폰</dt><dd>10,000원</dd>
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>95,400</dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:96.0%"><span class="blind">별점 4.87점</span></span>
            </div>
            <span class="rate_tx">(<em>444</em>개)</span>
        </div>
    </div>
    <div class="cunit_bene">
        <div class="spt_deiv">
            </div>
        <div class="cunit_bene_lst">
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000026532717"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000026532717","shpp_type_dtl_cd":"21","item_img_url":"https://sitem.ssgcdn.com/17/27/53/item/1000026532717_i1_550.jpg","lwst_sellprc":50220,"usabl_inv_qty":437,"brand_id":"2010024537"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000026532717&siteNo=7012&salestrNo=1020" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|시몽 테르미크 150ml [No.1 헤어에센스-손상모발용]_1000026532717" data-info="1000026532717" data-index="3" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/17/27/53/item/1000026532717_i1_550.jpg, //sitem.ssgcdn.com/17/27/53/item/1000026532717_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/17/27/53/item/1000026532717_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="시몽 테르미크 150ml [No.1 헤어에센스-손상모발용]"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/17/27/53/item/1000026532717_i2_550.jpg, //sitem.ssgcdn.com/17/27/53/item/1000026532717_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/17/27/53/item/1000026532717_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="시몽 테르미크 150ml [No.1 헤어에센스-손상모발용]" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <i class="badge badge_ssgsale_coupon_shape" aria-label="쓱세일 쿠폰"></i>
            <span class="di_coupon"><span class="blind">쿠폰포함</span>10<em class="per">%</em></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000026532717&siteNo=7012&salestrNo=1020" class="blank clickable"  target="_blank"
                    data-info="1000026532717" data-index="3" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|시몽 테르미크 150ml [No.1 헤어에센스-손상모발용]"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000026532717" data-idx="3" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|시몽 테르미크 150ml [No.1 헤어에센스-손상모발용]" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000026532717&siteNo=7012&salestrNo=1020","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"21","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000026532717","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7012","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"1020","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7012">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000026532717">
                <input type="hidden" name="attnTgtIdnfNo2" value="1020">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="시몽 테르미크 150ml [No.1 헤어에센스-손상모발용]">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/17/27/53/item/1000026532717_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000026532717" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mnchicor"><span class="blind">CHICOR</span></i>
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
                <em class="tx_ko">케라스타즈</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000026532717&siteNo=7012&salestrNo=1020" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|시몽 테르미크 150ml [No.1 헤어에센스-손상모발용]"
            data-info="1000026532717" data-index="3" data-position="view" data-unit="img">
                <em class="tx_ko">시몽 테르미크 150ml [No.1 헤어에센스-손상모발용]</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">50,220</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦50,220)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">62,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>62,000</dd>
                            </dl>
                    <dl class="dis">
                        <dt>쿠폰</dt><dd>6,200원</dd>
                        <dt>SSG MONEY 할인쿠폰</dt><dd>5,580원</dd>
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>50,220</dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:96.0%"><span class="blind">별점 4.84점</span></span>
            </div>
            <span class="rate_tx">(<em>1,537</em>개)</span>
        </div>
    </div>
    <div class="cunit_tag v2 hide_gl">
    <a href="/search.ssg?src_area=listtag&query=%23%ec%9c%a4%ea%b8%b0%eb%b6%80%ec%97%ac" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_태그|시몽 테르미크 150ml [No.1 헤어에센스-손상모발용]" class="clickable" data-info="1000026532717" data-index="0" data-position="tag" data-tagnm="윤기부여">#윤기부여</a>
    <a href="/search.ssg?src_area=listtag&query=%23%ec%98%81%ec%96%91%ea%b3%b5%ea%b8%89" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_태그|시몽 테르미크 150ml [No.1 헤어에센스-손상모발용]" class="clickable" data-info="1000026532717" data-index="1" data-position="tag" data-tagnm="영양공급">#영양공급</a>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000264732370"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000264732370","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/70/23/73/item/1000264732370_i1_550.jpg","lwst_sellprc":38250,"usabl_inv_qty":7310,"brand_id":"3000011781"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000264732370&siteNo=7012&salestrNo=1004" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|에센셜 스킨 누더 쿠션(리필 포함)(누더컨실러미니+캡슐선5ml 증정)_1000264732370" data-info="1000264732370" data-index="4" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/70/23/73/item/1000264732370_i1_550.jpg, //sitem.ssgcdn.com/70/23/73/item/1000264732370_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/70/23/73/item/1000264732370_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="에센셜 스킨 누더 쿠션(리필 포함)(누더컨실러미니+캡슐선5ml 증정)"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/70/23/73/item/1000264732370_i2_550.jpg, //sitem.ssgcdn.com/70/23/73/item/1000264732370_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/70/23/73/item/1000264732370_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="에센셜 스킨 누더 쿠션(리필 포함)(누더컨실러미니+캡슐선5ml 증정)" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <i class="badge badge_ssgsale_coupon_shape" aria-label="쓱세일 쿠폰"></i>
            <span class="di_coupon"><span class="blind">쿠폰포함</span>15<em class="per">%</em></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000264732370&siteNo=7012&salestrNo=1004" class="blank clickable"  target="_blank"
                    data-info="1000264732370" data-index="4" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|에센셜 스킨 누더 쿠션(리필 포함)(누더컨실러미니+캡슐선5ml 증정)"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000264732370" data-idx="4" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|에센셜 스킨 누더 쿠션(리필 포함)(누더컨실러미니+캡슐선5ml 증정)" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000264732370&siteNo=7012&salestrNo=1004","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000264732370","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7012","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"1004","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7012">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000264732370">
                <input type="hidden" name="attnTgtIdnfNo2" value="1004">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="에센셜 스킨 누더 쿠션(리필 포함)(누더컨실러미니+캡슐선5ml 증정)">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/70/23/73/item/1000264732370_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000264732370" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mnchicor"><span class="blind">CHICOR</span></i>
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
                <em class="tx_ko">정샘물</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000264732370&siteNo=7012&salestrNo=1004" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|에센셜 스킨 누더 쿠션(리필 포함)(누더컨실러미니+캡슐선5ml 증정)"
            data-info="1000264732370" data-index="4" data-position="view" data-unit="img">
                <em class="tx_ko">에센셜 스킨 누더 쿠션(리필 포함)(누더컨실러미니+캡슐선5ml 증정)</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">38,250</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦38,250)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">45,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>45,000</dd>
                            </dl>
                    <dl class="dis">
                        <dt>쿠폰</dt><dd>6,750원</dd>
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>38,250</dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:96.0%"><span class="blind">별점 4.8점</span></span>
            </div>
            <span class="rate_tx">(<em>313</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000040553930"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000040553930","shpp_type_dtl_cd":"21","item_img_url":"https://sitem.ssgcdn.com/30/39/55/item/1000040553930_i1_550.jpg","lwst_sellprc":102200,"usabl_inv_qty":13,"brand_id":"2000012463"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000040553930&siteNo=7012&salestrNo=1004" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|트리파직 앰플 샴푸 600ml 듀오(+트리파직샴푸200ml증정)_1000040553930" data-info="1000040553930" data-index="5" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/30/39/55/item/1000040553930_i1_550.jpg, //sitem.ssgcdn.com/30/39/55/item/1000040553930_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/30/39/55/item/1000040553930_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="트리파직 앰플 샴푸 600ml 듀오(+트리파직샴푸200ml증정)"  loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <i class="badge badge_ssgsale_coupon_shape" aria-label="쓱세일 쿠폰"></i>
            <span class="di_coupon"><span class="blind">쿠폰포함</span>15<em class="per">%</em></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000040553930&siteNo=7012&salestrNo=1004" class="blank clickable"  target="_blank"
                    data-info="1000040553930" data-index="5" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|트리파직 앰플 샴푸 600ml 듀오(+트리파직샴푸200ml증정)"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000040553930" data-idx="5" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|트리파직 앰플 샴푸 600ml 듀오(+트리파직샴푸200ml증정)" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000040553930&siteNo=7012&salestrNo=1004","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"21","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000040553930","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7012","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"1004","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7012">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000040553930">
                <input type="hidden" name="attnTgtIdnfNo2" value="1004">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="트리파직 앰플 샴푸 600ml 듀오(+트리파직샴푸200ml증정)">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/30/39/55/item/1000040553930_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000040553930" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mnchicor"><span class="blind">CHICOR</span></i>
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
                <em class="tx_ko">르네휘테르</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000040553930&siteNo=7012&salestrNo=1004" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|트리파직 앰플 샴푸 600ml 듀오(+트리파직샴푸200ml증정)"
            data-info="1000040553930" data-index="5" data-position="view" data-unit="img">
                <em class="tx_ko">트리파직 앰플 샴푸 600ml 듀오(+트리파직샴푸200ml증정)</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">102,200</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦102,200)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">132,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>132,000</dd>
                            </dl>
                    <dl class="dis">
                        <dt>쿠폰</dt><dd>19,800원</dd>
                        <dt>SSG MONEY 할인쿠폰</dt><dd>10,000원</dd>
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>102,200</dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:96.0%"><span class="blind">별점 4.89점</span></span>
            </div>
            <span class="rate_tx">(<em>357</em>개)</span>
        </div>
    </div>
    <div class="cunit_bene">
        <div class="spt_deiv">
            </div>
        <div class="cunit_bene_lst">
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000593104744"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000593104744","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/44/47/10/item/1000593104744_i1_550.jpg","lwst_sellprc":54000,"usabl_inv_qty":63,"brand_id":"3000025946"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000593104744&siteNo=7012&salestrNo=1027" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[CHICOR X 아워글래스] 팬텀 글로시밤 기획 (+3종 증정)_1000593104744" data-info="1000593104744" data-index="6" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/44/47/10/item/1000593104744_i1_550.jpg, //sitem.ssgcdn.com/44/47/10/item/1000593104744_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/44/47/10/item/1000593104744_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[CHICOR X 아워글래스] 팬텀 글로시밤 기획 (+3종 증정)"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/44/47/10/item/1000593104744_i2_550.jpg, //sitem.ssgcdn.com/44/47/10/item/1000593104744_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/44/47/10/item/1000593104744_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="[CHICOR X 아워글래스] 팬텀 글로시밤 기획 (+3종 증정)" aria-hidden="true" loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000593104744&siteNo=7012&salestrNo=1027" class="blank clickable"  target="_blank"
                    data-info="1000593104744" data-index="6" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[CHICOR X 아워글래스] 팬텀 글로시밤 기획 (+3종 증정)"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000593104744" data-idx="6" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[CHICOR X 아워글래스] 팬텀 글로시밤 기획 (+3종 증정)" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000593104744&siteNo=7012&salestrNo=1027","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000593104744","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7012","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"1027","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7012">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000593104744">
                <input type="hidden" name="attnTgtIdnfNo2" value="1027">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[CHICOR X 아워글래스] 팬텀 글로시밤 기획 (+3종 증정)">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/44/47/10/item/1000593104744_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000593104744" data-react-tarea-dtl-cd="t00003" >
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
    <i class="mnchicor"><span class="blind">CHICOR</span></i>
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
                <em class="tx_ko">아워글래스</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000593104744&siteNo=7012&salestrNo=1027" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[CHICOR X 아워글래스] 팬텀 글로시밤 기획 (+3종 증정)"
            data-info="1000593104744" data-index="6" data-position="view" data-unit="img">
                <em class="tx_ko">[CHICOR X 아워글래스] 팬텀 글로시밤 기획 (+3종 증정)</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_origin_price">최초출시가 <em class="ssg_price">54,000</em>원</div>
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">54,000</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦54,000)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    </div>
    </div>
</li>
                                    </ul>
                            </div>
                        <div class="cmmain_more"
                             data-react-unit-type="text"
                             data-react-unit-text='[{"type":"text","value":"CHICOR"}]'>
                            <a href="https://chicor.family.ssg.com"
                               class="cmmain_more_btn btn_moreview clickable"
                               data-react-tarea-dtl-cd="t00014"
                            >CHICOR 바로가기</a>
                        </div>
                    </div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel ">
                        <div class="cmmain_brandstore_banner">
                            <div class="cmmain_brandstore_img">
                                <img src="//sui.ssgcdn.com/cmpt/banner/202306/2023061317282984015062184506_558.jpg" alt="신세계라이브쇼핑" loading="lazy">
                            </div>
                            <div class="cmmain_brandstore_cont"
                                 data-react-unit-type="banr"
                                 data-react-unit-id="2003317481"
                                 data-react-unit-text='[{"type":"text","value":"신세계라이브쇼핑 (비전시금지)"}]'>
                                <a href="https://live.family.ssg.com" class="cmmain_brandstore_link clickable"
                                   data-react-tarea-dtl-cd="t00001"
                                >
                                <div class="cmmain_brandstore_logo">
                                        <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202211/2022112914020737090125052112_634.png&w=476&h=145&edit=c&t=a3e7bd82c184751f70c737952bc2e8cac03a7392" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202211/2022112914020737090125052112_634.png&w=952&h=290&edit=c&t=3b23dc32e1f77334c4cff435e2b1eb80d5b0a608 2x" alt="신세계라이브쇼핑" loading="lazy">
                                    </div>
                                    <div class="cmmain_brandstore_tit">
                                        <span class="cmmain_brandstore_tittx">트렌디한 쇼핑리더</span>
                                        <span class="cmmain_brandstore_tittx">신세계라이브쇼핑 대표상품 만나보기</span>
                                    </div>
                                </a>
                            </div>
                            <div class="cmmain_brandstore_more"
                                 data-react-unit-type="text"
                                 data-react-unit-text='[{"type":"text","value":"신세계라이브쇼핑"}]'>
                                <a href="https://live.family.ssg.com" class="cmmain_brandstore_morebtn clickable"
                                   data-react-tarea-dtl-cd="t00014">
                                    <div class="cmmain_brandstore_moretx">
                                        <span class="cmmain_brandstore_moretx1">신세계라이브쇼핑</span>
                                        <span class="cmmain_brandstore_moretx2">바로가기</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="cmmain_cunit_items">
                                <ul class="cunit_thmb_lst cunit_thmb_lst6">
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000430894284"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000430894284","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/84/42/89/item/1000430894284_i1_550.jpg","lwst_sellprc":1549800,"usabl_inv_qty":227,"brand_id":"3000063794"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000430894284&siteNo=6200&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|진도 엘페 휘메일 풀스킨 롱 밍크 코트 - 실버블루, 로얄네이비, 와인(EC02)_1000430894284" data-info="1000430894284" data-index="1" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/84/42/89/item/1000430894284_i1_550.jpg, //sitem.ssgcdn.com/84/42/89/item/1000430894284_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/84/42/89/item/1000430894284_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="진도 엘페 휘메일 풀스킨 롱 밍크 코트 - 실버블루, 로얄네이비, 와인(EC02)"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/84/42/89/item/1000430894284_i2_550.jpg, //sitem.ssgcdn.com/84/42/89/item/1000430894284_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/84/42/89/item/1000430894284_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="진도 엘페 휘메일 풀스킨 롱 밍크 코트 - 실버블루, 로얄네이비, 와인(EC02)" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_coupon"><span class="blind">쿠폰포함</span>18<em class="per">%</em></span>
            </div>
<div class="cm_bdg_c">
                </div>
            </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000430894284&siteNo=6200&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000430894284" data-index="1" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|진도 엘페 휘메일 풀스킨 롱 밍크 코트 - 실버블루, 로얄네이비, 와인(EC02)"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000430894284" data-idx="1" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|진도 엘페 휘메일 풀스킨 롱 밍크 코트 - 실버블루, 로얄네이비, 와인(EC02)" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000430894284&siteNo=6200&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000430894284","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6200","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6200">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000430894284">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="진도 엘페 휘메일 풀스킨 롱 밍크 코트 - 실버블루, 로얄네이비, 와인(EC02)">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/84/42/89/item/1000430894284_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000430894284" data-react-tarea-dtl-cd="t00003" >
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
    <i class="tv"><span class="blind">신세계라이브쇼핑</span></i>
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
        <a href="/item/itemView.ssg?itemId=1000430894284&siteNo=6200&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|진도 엘페 휘메일 풀스킨 롱 밍크 코트 - 실버블루, 로얄네이비, 와인(EC02)"
            data-info="1000430894284" data-index="1" data-position="view" data-unit="img">
                <em class="tx_ko">진도 엘페 휘메일 풀스킨 롱 밍크 코트 - 실버블루, 로얄네이비, 와인(EC02)</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">1,549,800</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦1,549,800)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">1,890,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>1,890,000</dd>
                            </dl>
                    <dl class="dis">
                        <dt>쿠폰</dt><dd>340,200원</dd>
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>1,549,800</dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:82.0%"><span class="blind">별점 4.14점</span></span>
            </div>
            <span class="rate_tx">(<em>7</em>개)</span>
        </div>
    </div>
    <div class="cunit_bene">
        <div class="spt_deiv">
            <div class="tx_deiv">
                <span>무료배송</span>
                    </div>
            </div>
        </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000430894242"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000430894242","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/42/42/89/item/1000430894242_i1_550.jpg","lwst_sellprc":1385800,"usabl_inv_qty":272,"brand_id":"3000063794"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000430894242&siteNo=6200&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|진도 엘페 휘메일 풀스킨 롱 밍크 코트 - 블랙(EC02)_1000430894242" data-info="1000430894242" data-index="2" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/42/42/89/item/1000430894242_i1_550.jpg, //sitem.ssgcdn.com/42/42/89/item/1000430894242_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/42/42/89/item/1000430894242_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="진도 엘페 휘메일 풀스킨 롱 밍크 코트 - 블랙(EC02)"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/42/42/89/item/1000430894242_i2_550.jpg, //sitem.ssgcdn.com/42/42/89/item/1000430894242_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/42/42/89/item/1000430894242_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="진도 엘페 휘메일 풀스킨 롱 밍크 코트 - 블랙(EC02)" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_coupon"><span class="blind">쿠폰포함</span>18<em class="per">%</em></span>
            </div>
<div class="cm_bdg_c">
                </div>
            </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000430894242&siteNo=6200&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000430894242" data-index="2" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|진도 엘페 휘메일 풀스킨 롱 밍크 코트 - 블랙(EC02)"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000430894242" data-idx="2" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|진도 엘페 휘메일 풀스킨 롱 밍크 코트 - 블랙(EC02)" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000430894242&siteNo=6200&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000430894242","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6200","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6200">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000430894242">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="진도 엘페 휘메일 풀스킨 롱 밍크 코트 - 블랙(EC02)">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/42/42/89/item/1000430894242_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000430894242" data-react-tarea-dtl-cd="t00003" >
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
    <i class="tv"><span class="blind">신세계라이브쇼핑</span></i>
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
        <a href="/item/itemView.ssg?itemId=1000430894242&siteNo=6200&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|진도 엘페 휘메일 풀스킨 롱 밍크 코트 - 블랙(EC02)"
            data-info="1000430894242" data-index="2" data-position="view" data-unit="img">
                <em class="tx_ko">진도 엘페 휘메일 풀스킨 롱 밍크 코트 - 블랙(EC02)</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">1,385,800</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦1,385,800)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">1,690,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>1,690,000</dd>
                            </dl>
                    <dl class="dis">
                        <dt>쿠폰</dt><dd>304,200원</dd>
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>1,385,800</dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:94.0%"><span class="blind">별점 4.79점</span></span>
            </div>
            <span class="rate_tx">(<em>14</em>개)</span>
        </div>
    </div>
    <div class="cunit_bene">
        <div class="spt_deiv">
            <div class="tx_deiv">
                <span>무료배송</span>
                    </div>
            </div>
        </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000564795419"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000564795419","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/19/54/79/item/1000564795419_i1_550.jpg","lwst_sellprc":53956,"usabl_inv_qty":70265,"brand_id":"3000063794"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000564795419&siteNo=6200&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[TINTON] 틴톤 꽃 립스틱 총 4개 + 크리스탈 립스틱 + 아가타 토트백 패키지_1000564795419" data-info="1000564795419" data-index="3" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/19/54/79/item/1000564795419_i1_550.jpg, //sitem.ssgcdn.com/19/54/79/item/1000564795419_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/19/54/79/item/1000564795419_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[TINTON] 틴톤 꽃 립스틱 총 4개 + 크리스탈 립스틱 + 아가타 토트백 패키지"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/19/54/79/item/1000564795419_i2_550.jpg, //sitem.ssgcdn.com/19/54/79/item/1000564795419_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/19/54/79/item/1000564795419_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="[TINTON] 틴톤 꽃 립스틱 총 4개 + 크리스탈 립스틱 + 아가타 토트백 패키지" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_coupon"><span class="blind">쿠폰포함</span>22<em class="per">%</em></span>
            </div>
<div class="cm_bdg_c">
                </div>
            </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000564795419&siteNo=6200&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000564795419" data-index="3" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[TINTON] 틴톤 꽃 립스틱 총 4개 + 크리스탈 립스틱 + 아가타 토트백 패키지"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000564795419" data-idx="3" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[TINTON] 틴톤 꽃 립스틱 총 4개 + 크리스탈 립스틱 + 아가타 토트백 패키지" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000564795419&siteNo=6200&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000564795419","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6200","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6200">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000564795419">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[TINTON] 틴톤 꽃 립스틱 총 4개 + 크리스탈 립스틱 + 아가타 토트백 패키지">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/19/54/79/item/1000564795419_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000564795419" data-react-tarea-dtl-cd="t00003" >
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
    <i class="tv"><span class="blind">신세계라이브쇼핑</span></i>
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
        <a href="/item/itemView.ssg?itemId=1000564795419&siteNo=6200&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[TINTON] 틴톤 꽃 립스틱 총 4개 + 크리스탈 립스틱 + 아가타 토트백 패키지"
            data-info="1000564795419" data-index="3" data-position="view" data-unit="img">
                <em class="tx_ko">[TINTON] 틴톤 꽃 립스틱 총 4개 + 크리스탈 립스틱 + 아가타 토트백 패키지</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">53,956</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦53,956)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">69,900</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>69,900</dd>
                            </dl>
                    <dl class="dis">
                        <dt>쿠폰</dt><dd>11,883원</dd>
                        <dt>SSG MONEY 할인쿠폰</dt><dd>4,061원</dd>
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>53,956</dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:94.0%"><span class="blind">별점 4.75점</span></span>
            </div>
            <span class="rate_tx">(<em>4</em>개)</span>
        </div>
    </div>
    <div class="cunit_bene">
        <div class="spt_deiv">
            <div class="tx_deiv">
                <span>무료배송</span>
                    </div>
            </div>
        </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000582035713"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000582035713","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/13/57/03/item/1000582035713_i1_550.jpg","lwst_sellprc":139000,"usabl_inv_qty":111,"brand_id":"2000006059"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000582035713&siteNo=6200&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|24년]여성 스케쳐스 맥스쿠셔닝 워킹화_1000582035713" data-info="1000582035713" data-index="4" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/13/57/03/item/1000582035713_i1_550.jpg, //sitem.ssgcdn.com/13/57/03/item/1000582035713_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/13/57/03/item/1000582035713_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="24년]여성 스케쳐스 맥스쿠셔닝 워킹화"  loading="lazy">
                <div class="cm_bdg_c">
                </div>
            </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000582035713&siteNo=6200&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000582035713" data-index="4" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|24년]여성 스케쳐스 맥스쿠셔닝 워킹화"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000582035713" data-idx="4" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|24년]여성 스케쳐스 맥스쿠셔닝 워킹화" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000582035713&siteNo=6200&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000582035713","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6200","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6200">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000582035713">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="24년]여성 스케쳐스 맥스쿠셔닝 워킹화">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/13/57/03/item/1000582035713_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000582035713" data-react-tarea-dtl-cd="t00003" >
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
    <i class="tv"><span class="blind">신세계라이브쇼핑</span></i>
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
                <em class="tx_ko">스케쳐스</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000582035713&siteNo=6200&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|24년]여성 스케쳐스 맥스쿠셔닝 워킹화"
            data-info="1000582035713" data-index="4" data-position="view" data-unit="img">
                <em class="tx_ko">24년]여성 스케쳐스 맥스쿠셔닝 워킹화</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">139,000</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦139,000)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:100.0%"><span class="blind">별점 5점</span></span>
            </div>
            <span class="rate_tx">(<em>3</em>개)</span>
        </div>
    </div>
    <div class="cunit_bene">
        <div class="spt_deiv">
            <div class="tx_deiv">
                <span>무료배송</span>
                    </div>
            </div>
        </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000075798586"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000075798586","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/86/85/79/item/1000075798586_i1_550.jpg","lwst_sellprc":150000,"usabl_inv_qty":267,"brand_id":"2000020652"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000075798586&siteNo=6200&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|홍삼톤 (50ml*60포)+쇼핑백_1000075798586" data-info="1000075798586" data-index="5" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/86/85/79/item/1000075798586_i1_550.jpg, //sitem.ssgcdn.com/86/85/79/item/1000075798586_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/86/85/79/item/1000075798586_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="홍삼톤 (50ml*60포)+쇼핑백"  loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000075798586&siteNo=6200&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000075798586" data-index="5" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|홍삼톤 (50ml*60포)+쇼핑백"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000075798586" data-idx="5" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|홍삼톤 (50ml*60포)+쇼핑백" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000075798586&siteNo=6200&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000075798586","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6200","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6200">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000075798586">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="홍삼톤 (50ml*60포)+쇼핑백">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/86/85/79/item/1000075798586_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000075798586" data-react-tarea-dtl-cd="t00003" >
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
    <i class="tv"><span class="blind">신세계라이브쇼핑</span></i>
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
                <em class="tx_ko">정관장</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000075798586&siteNo=6200&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|홍삼톤 (50ml*60포)+쇼핑백"
            data-info="1000075798586" data-index="5" data-position="view" data-unit="img">
                <em class="tx_ko">홍삼톤 (50ml*60포)+쇼핑백</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">150,000</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦150,000)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:100.0%"><span class="blind">별점 5점</span></span>
            </div>
            <span class="rate_tx">(<em>8</em>개)</span>
        </div>
    </div>
    <div class="cunit_bene">
        <div class="spt_deiv">
            <div class="tx_deiv">
                <span>무료배송</span>
                    </div>
            </div>
        </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000580074982"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000580074982","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/82/49/07/item/1000580074982_i1_550.jpg","lwst_sellprc":119000,"usabl_inv_qty":599,"brand_id":"2000006059"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000580074982&siteNo=6200&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|24년]여성 스케쳐스 아치핏 디럭스 슬립온_1000580074982" data-info="1000580074982" data-index="6" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/82/49/07/item/1000580074982_i1_550.jpg, //sitem.ssgcdn.com/82/49/07/item/1000580074982_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/82/49/07/item/1000580074982_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="24년]여성 스케쳐스 아치핏 디럭스 슬립온"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/82/49/07/item/1000580074982_i2_550.jpg, //sitem.ssgcdn.com/82/49/07/item/1000580074982_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/82/49/07/item/1000580074982_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="24년]여성 스케쳐스 아치핏 디럭스 슬립온" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_c">
                </div>
            </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000580074982&siteNo=6200&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000580074982" data-index="6" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|24년]여성 스케쳐스 아치핏 디럭스 슬립온"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000580074982" data-idx="6" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|24년]여성 스케쳐스 아치핏 디럭스 슬립온" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000580074982&siteNo=6200&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000580074982","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6200","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6200">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000580074982">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="24년]여성 스케쳐스 아치핏 디럭스 슬립온">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/82/49/07/item/1000580074982_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000580074982" data-react-tarea-dtl-cd="t00003" >
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
    <i class="tv"><span class="blind">신세계라이브쇼핑</span></i>
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
                <em class="tx_ko">스케쳐스</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000580074982&siteNo=6200&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|24년]여성 스케쳐스 아치핏 디럭스 슬립온"
            data-info="1000580074982" data-index="6" data-position="view" data-unit="img">
                <em class="tx_ko">24년]여성 스케쳐스 아치핏 디럭스 슬립온</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">119,000</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦119,000)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:86.0%"><span class="blind">별점 4.33점</span></span>
            </div>
            <span class="rate_tx">(<em>6</em>개)</span>
        </div>
    </div>
    <div class="cunit_bene">
        <div class="spt_deiv">
            <div class="tx_deiv">
                <span>무료배송</span>
                    </div>
            </div>
        </div>
    </div>
</li>
                                    </ul>
                            </div>
                        <div class="cmmain_more"
                             data-react-unit-type="text"
                             data-react-unit-text='[{"type":"text","value":"신세계라이브쇼핑"}]'>
                            <a href="https://live.family.ssg.com"
                               class="cmmain_more_btn btn_moreview clickable"
                               data-react-tarea-dtl-cd="t00014"
                            >신세계라이브쇼핑 바로가기</a>
                        </div>
                    </div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel ">
                        <div class="cmmain_brandstore_banner">
                            <div class="cmmain_brandstore_img">
                                <img src="//sui.ssgcdn.com/cmpt/banner/202401/2024011814390991241614112261_832.jpg" alt="S.I.VILLAGE" loading="lazy">
                            </div>
                            <div class="cmmain_brandstore_cont"
                                 data-react-unit-type="banr"
                                 data-react-unit-id="2003317671"
                                 data-react-unit-text='[{"type":"text","value":"S.I.VILLAGE 기본 배너(비전시금지)"}]'>
                                <a href="https://si.family.ssg.com" class="cmmain_brandstore_link clickable"
                                   data-react-tarea-dtl-cd="t00001"
                                >
                                <div class="cmmain_brandstore_logo">
                                        <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202211/2022112914021423655071688507_27.png&w=476&h=145&edit=c&t=7da8caecfd18c4c39bb2b8e049bc8063597133de" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202211/2022112914021423655071688507_27.png&w=952&h=290&edit=c&t=29a735d532ce9d8856f1a16b1f2df17e9d1ee9f9 2x" alt="SIV" loading="lazy">
                                    </div>
                                    <div class="cmmain_brandstore_tit">
                                        <span class="cmmain_brandstore_tittx">신세계인터내셔날의 공식 온라인 쇼핑 스토어</span>
                                        <span class="cmmain_brandstore_tittx"></span>
                                    </div>
                                </a>
                            </div>
                            <div class="cmmain_brandstore_more"
                                 data-react-unit-type="text"
                                 data-react-unit-text='[{"type":"text","value":"S.I.VILLAGE"}]'>
                                <a href="https://si.family.ssg.com" class="cmmain_brandstore_morebtn clickable"
                                   data-react-tarea-dtl-cd="t00014">
                                    <div class="cmmain_brandstore_moretx">
                                        <span class="cmmain_brandstore_moretx1">S.I.VILLAGE</span>
                                        <span class="cmmain_brandstore_moretx2">바로가기</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="cmmain_cunit_items">
                                <ul class="cunit_thmb_lst cunit_thmb_lst6">
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000563057849"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000563057849","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/49/78/05/item/1000563057849_i1_550.jpg","lwst_sellprc":49900,"usabl_inv_qty":440,"brand_id":"3000006197"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000563057849&siteNo=6300&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|여 클라우드 다운필 배색 숏 점퍼 J103401007056_1000563057849" data-info="1000563057849" data-index="1" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/49/78/05/item/1000563057849_i1_550.jpg, //sitem.ssgcdn.com/49/78/05/item/1000563057849_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/49/78/05/item/1000563057849_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="여 클라우드 다운필 배색 숏 점퍼 J103401007056"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/49/78/05/item/1000563057849_i2_550.jpg, //sitem.ssgcdn.com/49/78/05/item/1000563057849_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/49/78/05/item/1000563057849_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="여 클라우드 다운필 배색 숏 점퍼 J103401007056" aria-hidden="true" loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000563057849&siteNo=6300&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000563057849" data-index="1" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|여 클라우드 다운필 배색 숏 점퍼 J103401007056"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000563057849" data-idx="1" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|여 클라우드 다운필 배색 숏 점퍼 J103401007056" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000563057849&siteNo=6300&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000563057849","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6300","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6300">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000563057849">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="여 클라우드 다운필 배색 숏 점퍼 J103401007056">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/49/78/05/item/1000563057849_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000563057849" data-react-tarea-dtl-cd="t00003" >
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
    <i class="si"><span class="blind">S.I.VILLAGE</span></i>
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
                <em class="tx_ko">JAJU</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000563057849&siteNo=6300&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|여 클라우드 다운필 배색 숏 점퍼 J103401007056"
            data-info="1000563057849" data-index="1" data-position="view" data-unit="img">
                <em class="tx_ko">여 클라우드 다운필 배색 숏 점퍼 J103401007056</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_origin_price">최초출시가 <em class="ssg_price">79,900</em>원</div>
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">49,900</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦49,900)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:94.0%"><span class="blind">별점 4.71점</span></span>
            </div>
            <span class="rate_tx">(<em>24</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000557518156"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000557518156","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/56/81/51/item/1000557518156_i1_550.jpg","lwst_sellprc":49900,"usabl_inv_qty":489,"brand_id":"3000006197"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000557518156&siteNo=6300&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|여 브이넥 버튼 자켓 J103301022071_1000557518156" data-info="1000557518156" data-index="2" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/56/81/51/item/1000557518156_i1_550.jpg, //sitem.ssgcdn.com/56/81/51/item/1000557518156_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/56/81/51/item/1000557518156_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="여 브이넥 버튼 자켓 J103301022071"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/56/81/51/item/1000557518156_i2_550.jpg, //sitem.ssgcdn.com/56/81/51/item/1000557518156_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/56/81/51/item/1000557518156_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="여 브이넥 버튼 자켓 J103301022071" aria-hidden="true" loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000557518156&siteNo=6300&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000557518156" data-index="2" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|여 브이넥 버튼 자켓 J103301022071"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000557518156" data-idx="2" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|여 브이넥 버튼 자켓 J103301022071" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000557518156&siteNo=6300&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000557518156","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6300","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6300">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000557518156">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="여 브이넥 버튼 자켓 J103301022071">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/56/81/51/item/1000557518156_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000557518156" data-react-tarea-dtl-cd="t00003" >
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
    <i class="si"><span class="blind">S.I.VILLAGE</span></i>
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
                <em class="tx_ko">JAJU</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000557518156&siteNo=6300&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|여 브이넥 버튼 자켓 J103301022071"
            data-info="1000557518156" data-index="2" data-position="view" data-unit="img">
                <em class="tx_ko">여 브이넥 버튼 자켓 J103301022071</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_origin_price">최초출시가 <em class="ssg_price">89,900</em>원</div>
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">49,900</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦49,900)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:92.0%"><span class="blind">별점 4.67점</span></span>
            </div>
            <span class="rate_tx">(<em>12</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000554936578"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000554936578","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/78/65/93/item/1000554936578_i1_550.jpg","lwst_sellprc":49900,"usabl_inv_qty":132,"brand_id":"3000006197"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000554936578&siteNo=6300&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|여 빅카라 셔링 소매 셔츠 원피스 J133301011099_1000554936578" data-info="1000554936578" data-index="3" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/78/65/93/item/1000554936578_i1_550.jpg, //sitem.ssgcdn.com/78/65/93/item/1000554936578_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/78/65/93/item/1000554936578_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="여 빅카라 셔링 소매 셔츠 원피스 J133301011099"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/78/65/93/item/1000554936578_i2_550.jpg, //sitem.ssgcdn.com/78/65/93/item/1000554936578_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/78/65/93/item/1000554936578_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="여 빅카라 셔링 소매 셔츠 원피스 J133301011099" aria-hidden="true" loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000554936578&siteNo=6300&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000554936578" data-index="3" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|여 빅카라 셔링 소매 셔츠 원피스 J133301011099"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000554936578" data-idx="3" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|여 빅카라 셔링 소매 셔츠 원피스 J133301011099" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000554936578&siteNo=6300&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000554936578","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6300","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6300">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000554936578">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="여 빅카라 셔링 소매 셔츠 원피스 J133301011099">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/78/65/93/item/1000554936578_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000554936578" data-react-tarea-dtl-cd="t00003" >
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
    <i class="si"><span class="blind">S.I.VILLAGE</span></i>
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
                <em class="tx_ko">JAJU</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000554936578&siteNo=6300&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|여 빅카라 셔링 소매 셔츠 원피스 J133301011099"
            data-info="1000554936578" data-index="3" data-position="view" data-unit="img">
                <em class="tx_ko">여 빅카라 셔링 소매 셔츠 원피스 J133301011099</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_origin_price">최초출시가 <em class="ssg_price">69,900</em>원</div>
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">49,900</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦49,900)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:100.0%"><span class="blind">별점 5점</span></span>
            </div>
            <span class="rate_tx">(<em>8</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000591344312"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000591344312","shpp_type_dtl_cd":"98","item_img_url":"https://sitem.ssgcdn.com/12/43/34/item/1000591344312_i1_550.jpg","lwst_sellprc":29900,"usabl_inv_qty":2857,"brand_id":"3000006197"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/dealItemView.ssg?itemId=1000591344312&siteNo=6300&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|23 S/S 파자마 세트 + 로그인시 최대 15%_1000591344312" data-info="1000591344312" data-index="4" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/12/43/34/item/1000591344312_i1_550.jpg, //sitem.ssgcdn.com/12/43/34/item/1000591344312_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/12/43/34/item/1000591344312_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="23 S/S 파자마 세트 + 로그인시 최대 15%"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/12/43/34/item/1000591344312_i2_550.jpg, //sitem.ssgcdn.com/12/43/34/item/1000591344312_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/12/43/34/item/1000591344312_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="23 S/S 파자마 세트 + 로그인시 최대 15%" aria-hidden="true" loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/dealItemView.ssg?itemId=1000591344312&siteNo=6300&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000591344312" data-index="4" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|23 S/S 파자마 세트 + 로그인시 최대 15%"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000591344312" data-idx="4" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|23 S/S 파자마 세트 + 로그인시 최대 15%" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"N","itemChrctDivCd":"10","itemLnkd":"/item/dealItemView.ssg?itemId=1000591344312&siteNo=6300&salestrNo=6005","giftBtnMsg":"선물하기 불가 상품 입니다.","bothSsgMorningShppYn":"N","shppTypeDtlCd":"98","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000591344312","dealItemYn":"Y","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6300","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6300">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000591344312">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="23 S/S 파자마 세트 + 로그인시 최대 15%">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/12/43/34/item/1000591344312_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000591344312" data-react-tarea-dtl-cd="t00003" >
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
    <i class="si"><span class="blind">S.I.VILLAGE</span></i>
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
                <em class="tx_ko">JAJU</em>
            </strong>
        <a href="/item/dealItemView.ssg?itemId=1000591344312&siteNo=6300&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|23 S/S 파자마 세트 + 로그인시 최대 15%"
            data-info="1000591344312" data-index="4" data-position="view" data-unit="img">
                <em class="tx_ko">23 S/S 파자마 세트 + 로그인시 최대 15%</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">29,900</em>
                    <span class="ssg_tx">원<span class="cm_tx_opt">~</span></span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦29,900)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:94.0%"><span class="blind">별점 4.75점</span></span>
            </div>
            <span class="rate_tx">(<em>407</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000538138767"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000538138767","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/67/87/13/item/1000538138767_i1_550.jpg","lwst_sellprc":29900,"usabl_inv_qty":1264,"brand_id":"3000006197"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000538138767&siteNo=6300&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|여 BETTER 코튼 시어서커 체크 5부 파자마 세트 J213201014058_1000538138767" data-info="1000538138767" data-index="5" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/67/87/13/item/1000538138767_i1_550.jpg, //sitem.ssgcdn.com/67/87/13/item/1000538138767_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/67/87/13/item/1000538138767_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="여 BETTER 코튼 시어서커 체크 5부 파자마 세트 J213201014058"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/67/87/13/item/1000538138767_i2_550.jpg, //sitem.ssgcdn.com/67/87/13/item/1000538138767_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/67/87/13/item/1000538138767_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="여 BETTER 코튼 시어서커 체크 5부 파자마 세트 J213201014058" aria-hidden="true" loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000538138767&siteNo=6300&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000538138767" data-index="5" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|여 BETTER 코튼 시어서커 체크 5부 파자마 세트 J213201014058"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000538138767" data-idx="5" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|여 BETTER 코튼 시어서커 체크 5부 파자마 세트 J213201014058" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000538138767&siteNo=6300&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000538138767","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6300","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6300">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000538138767">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="여 BETTER 코튼 시어서커 체크 5부 파자마 세트 J213201014058">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/67/87/13/item/1000538138767_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000538138767" data-react-tarea-dtl-cd="t00003" >
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
    <i class="si"><span class="blind">S.I.VILLAGE</span></i>
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
                <em class="tx_ko">JAJU</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000538138767&siteNo=6300&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|여 BETTER 코튼 시어서커 체크 5부 파자마 세트 J213201014058"
            data-info="1000538138767" data-index="5" data-position="view" data-unit="img">
                <em class="tx_ko">여 BETTER 코튼 시어서커 체크 5부 파자마 세트 J213201014058</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_origin_price">최초출시가 <em class="ssg_price">39,900</em>원</div>
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">29,900</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦29,900)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:94.0%"><span class="blind">별점 4.78점</span></span>
            </div>
            <span class="rate_tx">(<em>49</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000552317327"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000552317327","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/27/73/31/item/1000552317327_i1_550.jpg","lwst_sellprc":29900,"usabl_inv_qty":48,"brand_id":"3000006197"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000552317327&siteNo=6300&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|여 7부 루즈핏 오픈 카라 셔츠 J113303005006_1000552317327" data-info="1000552317327" data-index="6" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/27/73/31/item/1000552317327_i1_550.jpg, //sitem.ssgcdn.com/27/73/31/item/1000552317327_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/27/73/31/item/1000552317327_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="여 7부 루즈핏 오픈 카라 셔츠 J113303005006"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/27/73/31/item/1000552317327_i2_550.jpg, //sitem.ssgcdn.com/27/73/31/item/1000552317327_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/27/73/31/item/1000552317327_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="여 7부 루즈핏 오픈 카라 셔츠 J113303005006" aria-hidden="true" loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000552317327&siteNo=6300&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000552317327" data-index="6" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|여 7부 루즈핏 오픈 카라 셔츠 J113303005006"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000552317327" data-idx="6" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|여 7부 루즈핏 오픈 카라 셔츠 J113303005006" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000552317327&siteNo=6300&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000552317327","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6300","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6300">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000552317327">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="여 7부 루즈핏 오픈 카라 셔츠 J113303005006">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/27/73/31/item/1000552317327_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000552317327" data-react-tarea-dtl-cd="t00003" >
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
    <i class="si"><span class="blind">S.I.VILLAGE</span></i>
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
                <em class="tx_ko">JAJU</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000552317327&siteNo=6300&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|여 7부 루즈핏 오픈 카라 셔츠 J113303005006"
            data-info="1000552317327" data-index="6" data-position="view" data-unit="img">
                <em class="tx_ko">여 7부 루즈핏 오픈 카라 셔츠 J113303005006</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_origin_price">최초출시가 <em class="ssg_price">39,900</em>원</div>
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">29,900</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦29,900)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:100.0%"><span class="blind">별점 5점</span></span>
            </div>
            <span class="rate_tx">(<em>12</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    </ul>
                            </div>
                        <div class="cmmain_more"
                             data-react-unit-type="text"
                             data-react-unit-text='[{"type":"text","value":"S.I.VILLAGE"}]'>
                            <a href="https://si.family.ssg.com"
                               class="cmmain_more_btn btn_moreview clickable"
                               data-react-tarea-dtl-cd="t00014"
                            >S.I.VILLAGE 바로가기</a>
                        </div>
                    </div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel ">
                        <div class="cmmain_brandstore_banner">
                            <div class="cmmain_brandstore_img">
                                <img src="//sui.ssgcdn.com/cmpt/banner/202401/2024011009552501905342668534_587.jpg" alt="프리미엄아울렛 기본배너" loading="lazy">
                            </div>
                            <div class="cmmain_brandstore_cont"
                                 data-react-unit-type="banr"
                                 data-react-unit-id="2003317679"
                                 data-react-unit-text='[{"type":"text","value":"프리미엄아울렛 기본배너 (비전시 금지)"}]'>
                                <a href="https://premiumoutlets.family.ssg.com" class="cmmain_brandstore_link clickable"
                                   data-react-tarea-dtl-cd="t00001"
                                >
                                <div class="cmmain_brandstore_logo">
                                        <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202211/2022112914022164333703187370_41.png&w=476&h=145&edit=c&t=edef25e83abf6633ea1a9ad5296f723c0e87acb5" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202211/2022112914022164333703187370_41.png&w=952&h=290&edit=c&t=ecc22f8848943bf8472e31bf84f654b85f80b7ab 2x" alt="프리미엄아울렛" loading="lazy">
                                    </div>
                                    <div class="cmmain_brandstore_tit">
                                        <span class="cmmain_brandstore_tittx">SSG에서 만나는</span>
                                        <span class="cmmain_brandstore_tittx">프리미엄 아울렛 득템의 신세계</span>
                                    </div>
                                </a>
                            </div>
                            <div class="cmmain_brandstore_more"
                                 data-react-unit-type="text"
                                 data-react-unit-text='[{"type":"text","value":"프리미엄아울렛"}]'>
                                <a href="https://premiumoutlets.family.ssg.com" class="cmmain_brandstore_morebtn clickable"
                                   data-react-tarea-dtl-cd="t00014">
                                    <div class="cmmain_brandstore_moretx">
                                        <span class="cmmain_brandstore_moretx1">프리미엄아울렛</span>
                                        <span class="cmmain_brandstore_moretx2">바로가기</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="cmmain_cunit_items">
                                <ul class="cunit_thmb_lst cunit_thmb_lst6">
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000527396910"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000527396910","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/10/69/39/item/1000527396910_i1_550.jpg","lwst_sellprc":159600,"usabl_inv_qty":17,"brand_id":"2000003807"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000527396910&siteNo=7008&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[시흥점] 폴라 카라 립조직 스웨터 드레스 EF1183-52G_1000527396910" data-info="1000527396910" data-index="1" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/10/69/39/item/1000527396910_i1_550.jpg, //sitem.ssgcdn.com/10/69/39/item/1000527396910_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/10/69/39/item/1000527396910_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[시흥점] 폴라 카라 립조직 스웨터 드레스 EF1183-52G"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/10/69/39/item/1000527396910_i2_550.jpg, //sitem.ssgcdn.com/10/69/39/item/1000527396910_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/10/69/39/item/1000527396910_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="[시흥점] 폴라 카라 립조직 스웨터 드레스 EF1183-52G" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_sale"><span class="blind">세일</span>60<em class="per">%</em></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000527396910&siteNo=7008&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000527396910" data-index="1" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[시흥점] 폴라 카라 립조직 스웨터 드레스 EF1183-52G"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000527396910" data-idx="1" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[시흥점] 폴라 카라 립조직 스웨터 드레스 EF1183-52G" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000527396910&siteNo=7008&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000527396910","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7008","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7008">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000527396910">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[시흥점] 폴라 카라 립조직 스웨터 드레스 EF1183-52G">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/10/69/39/item/1000527396910_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000527396910" data-react-tarea-dtl-cd="t00003" >
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
    <i class="outlet"><span class="blind">프리미엄 아울렛</span></i>
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
                <em class="tx_ko">라코스테</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000527396910&siteNo=7008&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[시흥점] 폴라 카라 립조직 스웨터 드레스 EF1183-52G"
            data-info="1000527396910" data-index="1" data-position="view" data-unit="img">
                <em class="tx_ko">[시흥점] 폴라 카라 립조직 스웨터 드레스 EF1183-52G</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">159,600</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦159,600)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">399,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>399,000</dd>
                                <dt>세일가</dt>
                                <dd>159,600</dd>
                            </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:40.0%"><span class="blind">별점 2점</span></span>
            </div>
            <span class="rate_tx">(<em>1</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000582382833"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000582382833","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/33/28/38/item/1000582382833_i1_550.jpg","lwst_sellprc":32500,"usabl_inv_qty":20,"brand_id":"2000007146"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000582382833&siteNo=7008&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|(남여공용) 슬립온 뮬 트랙 (Slip-On Mule Trk)(VN0005V850K)_1000582382833" data-info="1000582382833" data-index="2" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/33/28/38/item/1000582382833_i1_550.jpg, //sitem.ssgcdn.com/33/28/38/item/1000582382833_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/33/28/38/item/1000582382833_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="(남여공용) 슬립온 뮬 트랙 (Slip-On Mule Trk)(VN0005V850K)"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/33/28/38/item/1000582382833_i2_550.jpg, //sitem.ssgcdn.com/33/28/38/item/1000582382833_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/33/28/38/item/1000582382833_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="(남여공용) 슬립온 뮬 트랙 (Slip-On Mule Trk)(VN0005V850K)" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_sale"><span class="blind">세일</span>50<em class="per">%</em></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000582382833&siteNo=7008&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000582382833" data-index="2" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|(남여공용) 슬립온 뮬 트랙 (Slip-On Mule Trk)(VN0005V850K)"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000582382833" data-idx="2" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|(남여공용) 슬립온 뮬 트랙 (Slip-On Mule Trk)(VN0005V850K)" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000582382833&siteNo=7008&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000582382833","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7008","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7008">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000582382833">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="(남여공용) 슬립온 뮬 트랙 (Slip-On Mule Trk)(VN0005V850K)">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/33/28/38/item/1000582382833_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000582382833" data-react-tarea-dtl-cd="t00003" >
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
    <i class="outlet"><span class="blind">프리미엄 아울렛</span></i>
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
                <em class="tx_ko">반스</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000582382833&siteNo=7008&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|(남여공용) 슬립온 뮬 트랙 (Slip-On Mule Trk)(VN0005V850K)"
            data-info="1000582382833" data-index="2" data-position="view" data-unit="img">
                <em class="tx_ko">(남여공용) 슬립온 뮬 트랙 (Slip-On Mule Trk)(VN0005V850K)</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">32,500</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦32,500)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">65,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>65,000</dd>
                                <dt>세일가</dt>
                                <dd>32,500</dd>
                            </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000565628895"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000565628895","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/95/88/62/item/1000565628895_i1_550.jpg","lwst_sellprc":29000,"usabl_inv_qty":41,"brand_id":"2000007146"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000565628895&siteNo=7008&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[시흥점] 남여공용 스니커즈 클래식 슬립온  린넨 (블랙) (VN0A7Q5DBMA)_1000565628895" data-info="1000565628895" data-index="3" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/95/88/62/item/1000565628895_i1_550.jpg, //sitem.ssgcdn.com/95/88/62/item/1000565628895_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/95/88/62/item/1000565628895_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[시흥점] 남여공용 스니커즈 클래식 슬립온  린넨 (블랙) (VN0A7Q5DBMA)"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/95/88/62/item/1000565628895_i2_550.jpg, //sitem.ssgcdn.com/95/88/62/item/1000565628895_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/95/88/62/item/1000565628895_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="[시흥점] 남여공용 스니커즈 클래식 슬립온  린넨 (블랙) (VN0A7Q5DBMA)" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_sale"><span class="blind">세일</span>61<em class="per">%</em></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000565628895&siteNo=7008&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000565628895" data-index="3" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[시흥점] 남여공용 스니커즈 클래식 슬립온  린넨 (블랙) (VN0A7Q5DBMA)"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000565628895" data-idx="3" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[시흥점] 남여공용 스니커즈 클래식 슬립온  린넨 (블랙) (VN0A7Q5DBMA)" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000565628895&siteNo=7008&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000565628895","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7008","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7008">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000565628895">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[시흥점] 남여공용 스니커즈 클래식 슬립온  린넨 (블랙) (VN0A7Q5DBMA)">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/95/88/62/item/1000565628895_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000565628895" data-react-tarea-dtl-cd="t00003" >
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
    <i class="outlet"><span class="blind">프리미엄 아울렛</span></i>
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
                <em class="tx_ko">반스</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000565628895&siteNo=7008&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[시흥점] 남여공용 스니커즈 클래식 슬립온  린넨 (블랙) (VN0A7Q5DBMA)"
            data-info="1000565628895" data-index="3" data-position="view" data-unit="img">
                <em class="tx_ko">[시흥점] 남여공용 스니커즈 클래식 슬립온  린넨 (블랙) (VN0A7Q5DBMA)</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">29,000</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦29,000)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">75,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>75,000</dd>
                                <dt>세일가</dt>
                                <dd>29,000</dd>
                            </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:94.0%"><span class="blind">별점 4.79점</span></span>
            </div>
            <span class="rate_tx">(<em>14</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000567741071"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000567741071","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/71/10/74/item/1000567741071_i1_550.jpg","lwst_sellprc":132300,"usabl_inv_qty":22,"brand_id":"2000003807"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000567741071&siteNo=7008&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|남성 린넨 스트라이프 셔츠 CH726E-53GO_1000567741071" data-info="1000567741071" data-index="4" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/71/10/74/item/1000567741071_i1_550.jpg, //sitem.ssgcdn.com/71/10/74/item/1000567741071_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/71/10/74/item/1000567741071_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="남성 린넨 스트라이프 셔츠 CH726E-53GO"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/71/10/74/item/1000567741071_i2_550.jpg, //sitem.ssgcdn.com/71/10/74/item/1000567741071_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/71/10/74/item/1000567741071_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="남성 린넨 스트라이프 셔츠 CH726E-53GO" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_sale"><span class="blind">세일</span>30<em class="per">%</em></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000567741071&siteNo=7008&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000567741071" data-index="4" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|남성 린넨 스트라이프 셔츠 CH726E-53GO"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000567741071" data-idx="4" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|남성 린넨 스트라이프 셔츠 CH726E-53GO" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000567741071&siteNo=7008&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000567741071","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7008","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7008">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000567741071">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="남성 린넨 스트라이프 셔츠 CH726E-53GO">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/71/10/74/item/1000567741071_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000567741071" data-react-tarea-dtl-cd="t00003" >
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
    <i class="outlet"><span class="blind">프리미엄 아울렛</span></i>
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
                <em class="tx_ko">라코스테</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000567741071&siteNo=7008&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|남성 린넨 스트라이프 셔츠 CH726E-53GO"
            data-info="1000567741071" data-index="4" data-position="view" data-unit="img">
                <em class="tx_ko">남성 린넨 스트라이프 셔츠 CH726E-53GO</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">132,300</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦132,300)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">189,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>189,000</dd>
                                <dt>세일가</dt>
                                <dd>132,300</dd>
                            </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:100.0%"><span class="blind">별점 5점</span></span>
            </div>
            <span class="rate_tx">(<em>1</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000230564837"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000230564837","shpp_type_dtl_cd":"98","item_img_url":"https://sitem.ssgcdn.com/37/48/56/item/1000230564837_i1_550.jpg","lwst_sellprc":67600,"usabl_inv_qty":18,"brand_id":"2000003807"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/dealItemView.ssg?itemId=1000230564837&siteNo=7008&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[시흥점] 아울렛 단독 특가 BEST_1000230564837" data-info="1000230564837" data-index="5" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/37/48/56/item/1000230564837_i1_550.jpg, //sitem.ssgcdn.com/37/48/56/item/1000230564837_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/37/48/56/item/1000230564837_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[시흥점] 아울렛 단독 특가 BEST"  loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/dealItemView.ssg?itemId=1000230564837&siteNo=7008&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000230564837" data-index="5" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[시흥점] 아울렛 단독 특가 BEST"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000230564837" data-idx="5" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[시흥점] 아울렛 단독 특가 BEST" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"N","itemChrctDivCd":"10","itemLnkd":"/item/dealItemView.ssg?itemId=1000230564837&siteNo=7008&salestrNo=6005","giftBtnMsg":"선물하기 불가 상품 입니다.","bothSsgMorningShppYn":"N","shppTypeDtlCd":"98","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000230564837","dealItemYn":"Y","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7008","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7008">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000230564837">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[시흥점] 아울렛 단독 특가 BEST">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/37/48/56/item/1000230564837_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000230564837" data-react-tarea-dtl-cd="t00003" >
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
    <i class="outlet"><span class="blind">프리미엄 아울렛</span></i>
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
                <em class="tx_ko">라코스테</em>
            </strong>
        <a href="/item/dealItemView.ssg?itemId=1000230564837&siteNo=7008&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[시흥점] 아울렛 단독 특가 BEST"
            data-info="1000230564837" data-index="5" data-position="view" data-unit="img">
                <em class="tx_ko">[시흥점] 아울렛 단독 특가 BEST</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">67,600</em>
                    <span class="ssg_tx">원<span class="cm_tx_opt">~</span></span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦67,600)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:94.0%"><span class="blind">별점 4.7점</span></span>
            </div>
            <span class="rate_tx">(<em>40</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000530053337"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000530053337","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/37/33/05/item/1000530053337_i1_550.jpg","lwst_sellprc":65400,"usabl_inv_qty":4,"brand_id":"2011000934"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000530053337&siteNo=7008&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[시흥점] N221UPT070 남여공용 디머 우븐 TRAINING SET L/PANTS_1000530053337" data-info="1000530053337" data-index="6" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/37/33/05/item/1000530053337_i1_550.jpg, //sitem.ssgcdn.com/37/33/05/item/1000530053337_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/37/33/05/item/1000530053337_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[시흥점] N221UPT070 남여공용 디머 우븐 TRAINING SET L/PANTS"  loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000530053337&siteNo=7008&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000530053337" data-index="6" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[시흥점] N221UPT070 남여공용 디머 우븐 TRAINING SET L/PANTS"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000530053337" data-idx="6" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[시흥점] N221UPT070 남여공용 디머 우븐 TRAINING SET L/PANTS" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000530053337&siteNo=7008&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000530053337","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"7008","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="7008">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000530053337">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[시흥점] N221UPT070 남여공용 디머 우븐 TRAINING SET L/PANTS">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/37/33/05/item/1000530053337_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000530053337" data-react-tarea-dtl-cd="t00003" >
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
    <i class="outlet"><span class="blind">프리미엄 아울렛</span></i>
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
                <em class="tx_ko">내셔널지오그래픽</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000530053337&siteNo=7008&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[시흥점] N221UPT070 남여공용 디머 우븐 TRAINING SET L/PANTS"
            data-info="1000530053337" data-index="6" data-position="view" data-unit="img">
                <em class="tx_ko">[시흥점] N221UPT070 남여공용 디머 우븐 TRAINING SET L/PANTS</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">65,400</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦65,400)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:92.0%"><span class="blind">별점 4.66점</span></span>
            </div>
            <span class="rate_tx">(<em>56</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    </ul>
                            </div>
                        <div class="cmmain_more"
                             data-react-unit-type="text"
                             data-react-unit-text='[{"type":"text","value":"프리미엄아울렛"}]'>
                            <a href="https://premiumoutlets.family.ssg.com"
                               class="cmmain_more_btn btn_moreview clickable"
                               data-react-tarea-dtl-cd="t00014"
                            >프리미엄아울렛 바로가기</a>
                        </div>
                    </div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel ">
                        <div class="cmmain_brandstore_banner">
                            <div class="cmmain_brandstore_img">
                                <img src="//sui.ssgcdn.com/cmpt/banner/202404/2024041216071753267865533886_202.jpg" alt="배너" loading="lazy">
                            </div>
                            <div class="cmmain_brandstore_cont"
                                 data-react-unit-type="banr"
                                 data-react-unit-id="2003535554"
                                 data-react-unit-text='[{"type":"text","value":"4/15일 주차 배너"}]'>
                                <a href="https://www.ssg.com/plan/planShop.ssg?dispCmptId=6000393431" class="cmmain_brandstore_link clickable"
                                   data-react-tarea-dtl-cd="t00001"
                                >
                                <div class="ssgcommon_adinfo adty_rect">
                                        <span class="ssgcommon_adinfo_txt">AD</span>
                                    </div>
                                <div class="cmmain_brandstore_logo">
                                        <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202309/2023092710102525063077193407_536.png&w=476&h=145&edit=c&t=8a6166b21080246cebc27cf9e05b639fafb55c38" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202309/2023092710102525063077193407_536.png&w=952&h=290&edit=c&t=da0f5794fde67a4b93078acddf1a1f9903306574 2x" alt="스타필드" loading="lazy">
                                    </div>
                                    <div class="cmmain_brandstore_tit">
                                        <span class="cmmain_brandstore_tittx">대한민국 첫 번째 쇼핑 테마파크</span>
                                        <span class="cmmain_brandstore_tittx">스타필드를 ssg에서 만나보세요</span>
                                    </div>
                                </a>
                            </div>
                            <div class="cmmain_brandstore_more"
                                 data-react-unit-type="text"
                                 data-react-unit-text='[{"type":"text","value":"스타필드"}]'>
                                <a href="https://starfield.ssg.com" class="cmmain_brandstore_morebtn clickable"
                                   data-react-tarea-dtl-cd="t00014">
                                    <div class="cmmain_brandstore_moretx">
                                        <span class="cmmain_brandstore_moretx1">스타필드</span>
                                        <span class="cmmain_brandstore_moretx2">바로가기</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="cmmain_cunit_items">
                                <ul class="cunit_thmb_lst cunit_thmb_lst6">
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000293942172"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000293942172","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/72/21/94/item/1000293942172_i1_550.jpg","lwst_sellprc":112100,"usabl_inv_qty":8,"brand_id":"2000015857"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000293942172&siteNo=6004&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[플랫폼 플레이스][세인트제임스][정품][Minquiers 18] ASJM2414326-201_SC_1000293942172" data-info="1000293942172" data-index="1" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/72/21/94/item/1000293942172_i1_550.jpg, //sitem.ssgcdn.com/72/21/94/item/1000293942172_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/72/21/94/item/1000293942172_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[플랫폼 플레이스][세인트제임스][정품][Minquiers 18] ASJM2414326-201_SC"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/72/21/94/item/1000293942172_i2_550.jpg, //sitem.ssgcdn.com/72/21/94/item/1000293942172_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/72/21/94/item/1000293942172_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="[플랫폼 플레이스][세인트제임스][정품][Minquiers 18] ASJM2414326-201_SC" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_coupon"><span class="blind">쿠폰포함</span>5<em class="per">%</em></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000293942172&siteNo=6004&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000293942172" data-index="1" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[플랫폼 플레이스][세인트제임스][정품][Minquiers 18] ASJM2414326-201_SC"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000293942172" data-idx="1" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[플랫폼 플레이스][세인트제임스][정품][Minquiers 18] ASJM2414326-201_SC" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000293942172&siteNo=6004&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000293942172","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6004","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6004">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000293942172">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[플랫폼 플레이스][세인트제임스][정품][Minquiers 18] ASJM2414326-201_SC">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/72/21/94/item/1000293942172_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000293942172" data-react-tarea-dtl-cd="t00003" >
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
                <em class="tx_ko">세인트제임스</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000293942172&siteNo=6004&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[플랫폼 플레이스][세인트제임스][정품][Minquiers 18] ASJM2414326-201_SC"
            data-info="1000293942172" data-index="1" data-position="view" data-unit="img">
                <em class="tx_ko">[플랫폼 플레이스][세인트제임스][정품][Minquiers 18] ASJM2414326-201_SC</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">112,100</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦112,100)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">118,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>118,000</dd>
                            </dl>
                    <dl class="dis">
                        <dt>SSG MONEY 할인쿠폰</dt><dd>5,900원</dd>
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>112,100</dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:100.0%"><span class="blind">별점 5점</span></span>
            </div>
            <span class="rate_tx">(<em>5</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000236396628"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000236396628","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/28/66/39/item/1000236396628_i1_550.jpg","lwst_sellprc":112100,"usabl_inv_qty":10,"brand_id":"2000015857"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000236396628&siteNo=6004&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[플랫폼 플레이스][세인트제임스][정품][Minquiers 18] ASJM2234326-0MM_SC_1000236396628" data-info="1000236396628" data-index="2" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/28/66/39/item/1000236396628_i1_550.jpg, //sitem.ssgcdn.com/28/66/39/item/1000236396628_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/28/66/39/item/1000236396628_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[플랫폼 플레이스][세인트제임스][정품][Minquiers 18] ASJM2234326-0MM_SC"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/28/66/39/item/1000236396628_i2_550.jpg, //sitem.ssgcdn.com/28/66/39/item/1000236396628_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/28/66/39/item/1000236396628_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="[플랫폼 플레이스][세인트제임스][정품][Minquiers 18] ASJM2234326-0MM_SC" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_coupon"><span class="blind">쿠폰포함</span>5<em class="per">%</em></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000236396628&siteNo=6004&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000236396628" data-index="2" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[플랫폼 플레이스][세인트제임스][정품][Minquiers 18] ASJM2234326-0MM_SC"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000236396628" data-idx="2" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[플랫폼 플레이스][세인트제임스][정품][Minquiers 18] ASJM2234326-0MM_SC" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000236396628&siteNo=6004&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000236396628","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6004","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6004">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000236396628">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[플랫폼 플레이스][세인트제임스][정품][Minquiers 18] ASJM2234326-0MM_SC">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/28/66/39/item/1000236396628_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000236396628" data-react-tarea-dtl-cd="t00003" >
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
                <em class="tx_ko">세인트제임스</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000236396628&siteNo=6004&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[플랫폼 플레이스][세인트제임스][정품][Minquiers 18] ASJM2234326-0MM_SC"
            data-info="1000236396628" data-index="2" data-position="view" data-unit="img">
                <em class="tx_ko">[플랫폼 플레이스][세인트제임스][정품][Minquiers 18] ASJM2234326-0MM_SC</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">112,100</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦112,100)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">118,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>118,000</dd>
                            </dl>
                    <dl class="dis">
                        <dt>SSG MONEY 할인쿠폰</dt><dd>5,900원</dd>
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>112,100</dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:100.0%"><span class="blind">별점 5점</span></span>
            </div>
            <span class="rate_tx">(<em>5</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000187837570"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000187837570","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/70/75/83/item/1000187837570_i1_550.jpg","lwst_sellprc":131100,"usabl_inv_qty":28,"brand_id":"2000015857"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000187837570&siteNo=6004&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[플랫폼 플레이스][세인트제임스][정품][Guildo U Elbow Patches티셔츠]ASJU2012644-002_1000187837570" data-info="1000187837570" data-index="3" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/70/75/83/item/1000187837570_i1_550.jpg, //sitem.ssgcdn.com/70/75/83/item/1000187837570_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/70/75/83/item/1000187837570_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[플랫폼 플레이스][세인트제임스][정품][Guildo U Elbow Patches티셔츠]ASJU2012644-002"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/70/75/83/item/1000187837570_i2_550.jpg, //sitem.ssgcdn.com/70/75/83/item/1000187837570_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/70/75/83/item/1000187837570_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="[플랫폼 플레이스][세인트제임스][정품][Guildo U Elbow Patches티셔츠]ASJU2012644-002" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_coupon"><span class="blind">쿠폰포함</span>5<em class="per">%</em></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000187837570&siteNo=6004&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000187837570" data-index="3" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[플랫폼 플레이스][세인트제임스][정품][Guildo U Elbow Patches티셔츠]ASJU2012644-002"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000187837570" data-idx="3" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[플랫폼 플레이스][세인트제임스][정품][Guildo U Elbow Patches티셔츠]ASJU2012644-002" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000187837570&siteNo=6004&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000187837570","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6004","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6004">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000187837570">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[플랫폼 플레이스][세인트제임스][정품][Guildo U Elbow Patches티셔츠]ASJU2012644-002">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/70/75/83/item/1000187837570_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000187837570" data-react-tarea-dtl-cd="t00003" >
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
                <em class="tx_ko">세인트제임스</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000187837570&siteNo=6004&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[플랫폼 플레이스][세인트제임스][정품][Guildo U Elbow Patches티셔츠]ASJU2012644-002"
            data-info="1000187837570" data-index="3" data-position="view" data-unit="img">
                <em class="tx_ko">[플랫폼 플레이스][세인트제임스][정품][Guildo U Elbow Patches티셔츠]ASJU2012644-002</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">131,100</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦131,100)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">138,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>138,000</dd>
                            </dl>
                    <dl class="dis">
                        <dt>SSG MONEY 할인쿠폰</dt><dd>6,900원</dd>
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>131,100</dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:100.0%"><span class="blind">별점 5점</span></span>
            </div>
            <span class="rate_tx">(<em>1</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000187905976"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000187905976","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/76/59/90/item/1000187905976_i1_550.jpg","lwst_sellprc":131100,"usabl_inv_qty":28,"brand_id":"2000015857"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000187905976&siteNo=6004&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[플랫폼 플레이스][세인트제임스][정품][Guildo Elbow Patch]ASJU2211388-050_SC_1000187905976" data-info="1000187905976" data-index="4" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/76/59/90/item/1000187905976_i1_550.jpg, //sitem.ssgcdn.com/76/59/90/item/1000187905976_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/76/59/90/item/1000187905976_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[플랫폼 플레이스][세인트제임스][정품][Guildo Elbow Patch]ASJU2211388-050_SC"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/76/59/90/item/1000187905976_i2_550.jpg, //sitem.ssgcdn.com/76/59/90/item/1000187905976_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/76/59/90/item/1000187905976_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="[플랫폼 플레이스][세인트제임스][정품][Guildo Elbow Patch]ASJU2211388-050_SC" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_coupon"><span class="blind">쿠폰포함</span>5<em class="per">%</em></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000187905976&siteNo=6004&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000187905976" data-index="4" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[플랫폼 플레이스][세인트제임스][정품][Guildo Elbow Patch]ASJU2211388-050_SC"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000187905976" data-idx="4" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[플랫폼 플레이스][세인트제임스][정품][Guildo Elbow Patch]ASJU2211388-050_SC" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000187905976&siteNo=6004&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000187905976","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6004","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6004">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000187905976">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[플랫폼 플레이스][세인트제임스][정품][Guildo Elbow Patch]ASJU2211388-050_SC">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/76/59/90/item/1000187905976_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000187905976" data-react-tarea-dtl-cd="t00003" >
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
                <em class="tx_ko">세인트제임스</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000187905976&siteNo=6004&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[플랫폼 플레이스][세인트제임스][정품][Guildo Elbow Patch]ASJU2211388-050_SC"
            data-info="1000187905976" data-index="4" data-position="view" data-unit="img">
                <em class="tx_ko">[플랫폼 플레이스][세인트제임스][정품][Guildo Elbow Patch]ASJU2211388-050_SC</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">131,100</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦131,100)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">138,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>138,000</dd>
                            </dl>
                    <dl class="dis">
                        <dt>SSG MONEY 할인쿠폰</dt><dd>6,900원</dd>
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>131,100</dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:100.0%"><span class="blind">별점 5점</span></span>
            </div>
            <span class="rate_tx">(<em>3</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000582874853"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000582874853","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/53/48/87/item/1000582874853_i1_550.jpg","lwst_sellprc":109000,"usabl_inv_qty":11,"brand_id":"3000023943"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000582874853&siteNo=6004&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|숏 트렌치코트(2colors)_RMJTE23R11_1000582874853" data-info="1000582874853" data-index="5" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/53/48/87/item/1000582874853_i1_550.jpg, //sitem.ssgcdn.com/53/48/87/item/1000582874853_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/53/48/87/item/1000582874853_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="숏 트렌치코트(2colors)_RMJTE23R11"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/53/48/87/item/1000582874853_i2_550.jpg, //sitem.ssgcdn.com/53/48/87/item/1000582874853_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/53/48/87/item/1000582874853_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="숏 트렌치코트(2colors)_RMJTE23R11" aria-hidden="true" loading="lazy">
                </a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000582874853&siteNo=6004&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000582874853" data-index="5" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|숏 트렌치코트(2colors)_RMJTE23R11"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000582874853" data-idx="5" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|숏 트렌치코트(2colors)_RMJTE23R11" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000582874853&siteNo=6004&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"Y","drctPurchYn":"N","itemId":"1000582874853","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6004","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":"이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요."}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6004">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000582874853">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="숏 트렌치코트(2colors)_RMJTE23R11">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/53/48/87/item/1000582874853_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000582874853" data-react-tarea-dtl-cd="t00003" >
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
                <em class="tx_ko">로엠</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000582874853&siteNo=6004&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|숏 트렌치코트(2colors)_RMJTE23R11"
            data-info="1000582874853" data-index="5" data-position="view" data-unit="img">
                <em class="tx_ko">숏 트렌치코트(2colors)_RMJTE23R11</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">109,000</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦109,000)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    </div>
    <div class="cunit_bene">
        <div class="spt_deiv">
            </div>
        <div class="cunit_colorchip">
            <div class="cunit_colorchip_element" style="background-color:#000080"><span class="blind">네이비</span></div>
                <div class="cunit_colorchip_element" style="background-color:#F4D6A1"><span class="blind">베이지</span></div>
                </div>
    </div>
    </div>
</li>
                                    <li class="cunit_t180">
                                            <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000543966877"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000543966877","shpp_type_dtl_cd":"22","item_img_url":"https://sitem.ssgcdn.com/77/68/96/item/1000543966877_i1_550.jpg","lwst_sellprc":42480,"usabl_inv_qty":10,"brand_id":"2011014626"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000543966877&siteNo=6004&salestrNo=6005" target="_self"  class="clickable"
             data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[골프] 파우치 백 블랙_13284109_1000543966877" data-info="1000543966877" data-index="6" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/77/68/96/item/1000543966877_i1_550.jpg, //sitem.ssgcdn.com/77/68/96/item/1000543966877_i1_1100.jpg 2x" src="//sitem.ssgcdn.com/77/68/96/item/1000543966877_i1_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i1" width="180" height="180" alt="[골프] 파우치 백 블랙_13284109"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/77/68/96/item/1000543966877_i2_550.jpg, //sitem.ssgcdn.com/77/68/96/item/1000543966877_i2_1100.jpg 2x" src="//sitem.ssgcdn.com/77/68/96/item/1000543966877_i2_550.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=180&h=180&t=d76c1584fe045b57a29d7ca6c88cb0c22e06be85'" class="i2" width="180" height="180" alt="[골프] 파우치 백 블랙_13284109" aria-hidden="true" loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_coupon"><span class="blind">쿠폰포함</span>10<em class="per">%</em></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000543966877&siteNo=6004&salestrNo=6005" class="blank clickable"  target="_blank"
                    data-info="1000543966877" data-index="6" data-position="pop" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_새창보기|[골프] 파우치 백 블랙_13284109"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000543966877" data-idx="6" data-position="cart" data-unit="img" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_장바구니|[골프] 파우치 백 블랙_13284109" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":null,"giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000543966877&siteNo=6004&salestrNo=6005","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"22","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000543966877","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6004","useForcedSsg":"N","cartPsblType":"","uitemId":"00001","infloSiteNo":"6005","salestrNo":"6005","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6004">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000543966877">
                <input type="hidden" name="attnTgtIdnfNo2" value="6005">
                <input type="hidden" name="uitemId" value="00001">
                <input type="hidden" name="notiTitle" value="[골프] 파우치 백 블랙_13284109">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/77/68/96/item/1000543966877_i1_550.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_좋아요|_1000543966877" data-react-tarea-dtl-cd="t00003" >
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
                <em class="tx_ko">뉴에라</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000543966877&siteNo=6004&salestrNo=6005" target="_self"  class="clickable"  data-react-tarea="메인매장|그룹사안내구좌|상품_클릭|상품_클릭|[골프] 파우치 백 블랙_13284109"
            data-info="1000543966877" data-index="6" data-position="view" data-unit="img">
                <em class="tx_ko">[골프] 파우치 백 블랙_13284109</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">42,480</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦42,480)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">47,200</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>47,200</dd>
                            </dl>
                    <dl class="dis">
                        <dt>SSG MONEY 할인쿠폰</dt><dd>4,720원</dd>
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>42,480</dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:100.0%"><span class="blind">별점 5점</span></span>
            </div>
            <span class="rate_tx">(<em>1</em>개)</span>
        </div>
    </div>
    </div>
</li>
                                    </ul>
                            </div>
                        <div class="cmmain_more"
                             data-react-unit-type="text"
                             data-react-unit-text='[{"type":"text","value":"스타필드"}]'>
                            <a href="https://starfield.ssg.com"
                               class="cmmain_more_btn btn_moreview clickable"
                               data-react-tarea-dtl-cd="t00014"
                            >스타필드 바로가기</a>
                        </div>
                    </div>
                </div>
        </div>
    </div>
    <!-- //그룹사 프로모션 -->
<div class="cmmain_sec_quick" data-react-tarea-cd="00052_000000917">
        <ul class="cmmain_quick_list ty_category">
            <li data-react-unit-type="banr" data-react-unit-id="2003324701" data-react-unit-text="">
                    <a href="https://emart.ssg.com/express/freqbuy.ssg"
                       class="cmmain_quick_item clickable"
                       data-react-tarea="메인매장|서비스퀵링크|서비스_클릭|자주구매"
                       data-react-tarea-dtl-cd="t00001"
                    >
                        <span class="cmmain_quick_ico">
                            <img src="//sui.ssgcdn.com/cmpt/banner/202402/2024021309350783858086453908_22.png" alt="자주구매" loading="lazy">
                        </span>
                        <span class="cmmain_quick_txt">자주구매</span>
                    </a>
                </li>
            <li data-react-unit-type="banr" data-react-unit-id="2003324703" data-react-unit-text="">
                    <a href="https://www.ssg.com/event/eventMain.ssg"
                       class="cmmain_quick_item clickable"
                       data-react-tarea="메인매장|서비스퀵링크|서비스_클릭|이벤트"
                       data-react-tarea-dtl-cd="t00001"
                    >
                        <span class="cmmain_quick_ico">
                            <img src="//sui.ssgcdn.com/cmpt/banner/202402/2024021309352621007451877745_173.png" alt="이벤트" loading="lazy">
                        </span>
                        <span class="cmmain_quick_txt">이벤트</span>
                    </a>
                </li>
            <li data-react-unit-type="banr" data-react-unit-id="2002679062" data-react-unit-text="">
                    <a href="https://www.ssg.com/service/bestMain.ssg"
                       class="cmmain_quick_item clickable"
                       data-react-tarea="메인매장|서비스퀵링크|서비스_클릭|베스트"
                       data-react-tarea-dtl-cd="t00001"
                    >
                        <span class="cmmain_quick_ico">
                            <img src="//sui.ssgcdn.com/cmpt/banner/202402/2024021309354579557832262883_103.png" alt="베스트" loading="lazy">
                        </span>
                        <span class="cmmain_quick_txt">베스트</span>
                    </a>
                </li>
            <li data-react-unit-type="banr" data-react-unit-id="2002679054" data-react-unit-text="">
                    <a href="https://www.ssg.com/service/gift/main.ssg"
                       class="cmmain_quick_item clickable"
                       data-react-tarea="메인매장|서비스퀵링크|서비스_클릭|선물하기"
                       data-react-tarea-dtl-cd="t00001"
                    >
                        <span class="cmmain_quick_ico">
                            <img src="//sui.ssgcdn.com/cmpt/banner/202402/2024021309361390592282127328_144.png" alt="선물하기" loading="lazy">
                        </span>
                        <span class="cmmain_quick_txt">선물하기</span>
                    </a>
                </li>
            <li data-react-unit-type="banr" data-react-unit-id="2002942712" data-react-unit-text="">
                    <a href="https://www.ssg.com/contents/lifeMagazineMain.ssg"
                       class="cmmain_quick_item clickable"
                       data-react-tarea="메인매장|서비스퀵링크|서비스_클릭|라이프매거진"
                       data-react-tarea-dtl-cd="t00001"
                    >
                        <span class="cmmain_quick_ico">
                            <img src="//sui.ssgcdn.com/cmpt/banner/202402/2024021309362936839347491044_419.png" alt="라이프매거진" loading="lazy">
                        </span>
                        <span class="cmmain_quick_txt">라이프매거진</span>
                    </a>
                </li>
            <li data-react-unit-type="banr" data-react-unit-id="2003414398" data-react-unit-text="">
                    <a href="https://wconcept.family.ssg.com"
                       class="cmmain_quick_item clickable"
                       data-react-tarea="메인매장|서비스퀵링크|서비스_클릭|W컨셉"
                       data-react-tarea-dtl-cd="t00001"
                    >
                        <span class="cmmain_quick_ico">
                            <img src="//sui.ssgcdn.com/cmpt/banner/202402/2024021309381302660449564144_886.png" alt="W컨셉" loading="lazy">
                        </span>
                        <span class="cmmain_quick_txt">W컨셉</span>
                    </a>
                </li>
            <li data-react-unit-type="banr" data-react-unit-id="2003577020" data-react-unit-text="">
                    <a href="https://emart.ssg.com/service/ssgfood/main.ssg"
                       class="cmmain_quick_item clickable"
                       data-react-tarea="메인매장|서비스퀵링크|서비스_클릭|미식관"
                       data-react-tarea-dtl-cd="t00001"
                    >
                        <span class="cmmain_quick_ico">
                            <img src="//sui.ssgcdn.com/cmpt/banner/202403/2024032709313734625073071607_986.png" alt="미식관" loading="lazy">
                        </span>
                        <span class="cmmain_quick_txt">미식관</span>
                    </a>
                </li>
            <li data-react-unit-type="banr" data-react-unit-id="2003324708" data-react-unit-text="">
                    <a href="https://triip.ssg.com/"
                       class="cmmain_quick_item clickable"
                       data-react-tarea="메인매장|서비스퀵링크|서비스_클릭|여행"
                       data-react-tarea-dtl-cd="t00001"
                    >
                        <span class="cmmain_quick_ico">
                            <img src="//sui.ssgcdn.com/cmpt/banner/202402/2024021309403934917622088762_332.png" alt="여행" loading="lazy">
                        </span>
                        <span class="cmmain_quick_txt">여행</span>
                    </a>
                </li>
            <li data-react-unit-type="banr" data-react-unit-id="2003577022" data-react-unit-text="">
                    <a href="https://www.ssg.com/service/bizMain.ssg"
                       class="cmmain_quick_item clickable"
                       data-react-tarea="메인매장|서비스퀵링크|서비스_클릭|SSG.COM Biz."
                       data-react-tarea-dtl-cd="t00001"
                    >
                        <span class="cmmain_quick_ico">
                            <img src="//sui.ssgcdn.com/cmpt/banner/202403/2024032709331196161158597115_681.png" alt="SSG.COM Biz." loading="lazy">
                        </span>
                        <span class="cmmain_quick_txt">SSG.COM Biz.</span>
                    </a>
                </li>
            <li data-react-unit-type="banr" data-react-unit-id="2003324713" data-react-unit-text="">
                    <a href="https://www.ssg.com/monm/main.ssg"
                       class="cmmain_quick_item clickable"
                       data-react-tarea="메인매장|서비스퀵링크|서비스_클릭|뷰티"
                       data-react-tarea-dtl-cd="t00001"
                    >
                        <span class="cmmain_quick_ico">
                            <img src="//sui.ssgcdn.com/cmpt/banner/202402/2024021309415353747192881819_654.png" alt="뷰티" loading="lazy">
                        </span>
                        <span class="cmmain_quick_txt">뷰티</span>
                    </a>
                </li>
            <li data-react-unit-type="banr" data-react-unit-id="2003324715" data-react-unit-text="">
                    <a href="https://www.ssg.com/ssgbaby/main.ssg"
                       class="cmmain_quick_item clickable"
                       data-react-tarea="메인매장|서비스퀵링크|서비스_클릭|유아동"
                       data-react-tarea-dtl-cd="t00001"
                    >
                        <span class="cmmain_quick_ico">
                            <img src="//sui.ssgcdn.com/cmpt/banner/202402/2024021309420445693149097414_772.png" alt="유아동" loading="lazy">
                        </span>
                        <span class="cmmain_quick_txt">유아동</span>
                    </a>
                </li>
            <li data-react-unit-type="banr" data-react-unit-id="2003324717" data-react-unit-text="">
                    <a href="https://www.ssg.com/ssgpet/main.ssg"
                       class="cmmain_quick_item clickable"
                       data-react-tarea="메인매장|서비스퀵링크|서비스_클릭|반려동물"
                       data-react-tarea-dtl-cd="t00001"
                    >
                        <span class="cmmain_quick_ico">
                            <img src="//sui.ssgcdn.com/cmpt/banner/202402/2024021309421405884694517569_559.png" alt="반려동물" loading="lazy">
                        </span>
                        <span class="cmmain_quick_txt">반려동물</span>
                    </a>
                </li>
            </ul>
    </div>
<!-- 쓱1DAY배송 상품 구좌 -->
<input type="hidden" name="titleBannerExist" value="true">
<input type="hidden" name="titleBannerMainTitleExist" value="true">
<input type="hidden" name="itemsExist" value="true">
<div class="cmmain_sec_oneday" data-react-tarea-cd="00052_000000748">
        <div class="cmmain_heading">
            <h2 class="cmmain_heading_tit">내일 한번에! 쓱1DAY배송</h2>
            </div>
        <div class="cmmain_banner" data-react-unit-type="banr" data-react-unit-id="2003434953" data-react-unit-text='[{"type":"text","value":"배너명"}]'>
                <a href="https://www.ssg.com/service/oneday/dvstore.ssg" class="clickable" data-react-tarea-dtl-cd="t00001">
                    <img src="//sui.ssgcdn.com/cmpt/banner/202308/2023081014243287572894806389_905.jpg" alt="쓱1DAY배송" loading="lazy">
                </a>
            </div>
        <div class="cmmain_cunit_items">
            <!-- 공통상품유닛 -->
            <ul class="cunit_thmb_lst">
                <li class="cunit_t290">
                        <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="2097001787724"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"2097001787724","shpp_type_dtl_cd":"18","item_img_url":"https://sitem.ssgcdn.com/24/77/78/item/2097001787724_i1_290.jpg","lwst_sellprc":1360,"usabl_inv_qty":1137,"brand_id":"2000010371"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=2097001787724&siteNo=6001&salestrNo=2569" target="_self"  class="clickable"
             data-react-tarea="메인매장|쓱1DAY배송|상품_클릭|먹태깡 청양마요맛 60g_2097001787724" data-info="2097001787724" data-index="1" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/24/77/78/item/2097001787724_i1_290.jpg, //sitem.ssgcdn.com/24/77/78/item/2097001787724_i1_580.jpg 2x" src="//sitem.ssgcdn.com/24/77/78/item/2097001787724_i1_290.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=290&h=290&t=16cbd41d848a18acbeb9f1be5644242c91461495'" class="i1" width="290" height="290" alt="먹태깡 청양마요맛 60g"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/24/77/78/item/2097001787724_i2_290.jpg, //sitem.ssgcdn.com/24/77/78/item/2097001787724_i2_580.jpg 2x" src="//sitem.ssgcdn.com/24/77/78/item/2097001787724_i2_290.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=290&h=290&t=16cbd41d848a18acbeb9f1be5644242c91461495'" class="i2" width="290" height="290" alt="먹태깡 청양마요맛 60g" aria-hidden="true" loading="lazy">
                <div class="deiv_bdg notranslate" aria-label="배송방법">
    <span class="ssgdeliv_oneday"><span class="blind">쓱1DAY배송</span></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=2097001787724&siteNo=6001&salestrNo=2569" class="blank clickable"  target="_blank"
                    data-info="2097001787724" data-index="1" data-position="pop" data-unit="img" data-react-tarea="메인매장|쓱1DAY배송|상품_새창보기|먹태깡 청양마요맛 60g"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="2097001787724" data-idx="1" data-position="cart" data-unit="img" data-react-tarea="메인매장|쓱1DAY배송|상품_장바구니|먹태깡 청양마요맛 60g" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":"70","giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=2097001787724&siteNo=6001&salestrNo=2569","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"18","goItemDetailYn":"N","drctPurchYn":"N","itemId":"2097001787724","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6001","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"2569","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6001">
                <input type="hidden" name="attnTgtIdnfNo1" value="2097001787724">
                <input type="hidden" name="attnTgtIdnfNo2" value="2569">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="먹태깡 청양마요맛 60g">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/24/77/78/item/2097001787724_i1_290.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|쓱1DAY배송|상품_좋아요|_2097001787724" data-react-tarea-dtl-cd="t00003" >
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
    <i class="em"><span class="blind">이마트</span></i>
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
                <em class="tx_ko">농심</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=2097001787724&siteNo=6001&salestrNo=2569" target="_self"  class="clickable"  data-react-tarea="메인매장|쓱1DAY배송|상품_클릭|먹태깡 청양마요맛 60g"
            data-info="2097001787724" data-index="1" data-position="view" data-unit="img">
                <em class="tx_ko">먹태깡 청양마요맛 60g</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">1,360</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦1,360)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:94.0%"><span class="blind">별점 4.73점</span></span>
            </div>
            <span class="rate_tx">(<em>3,092</em>개)</span>
        </div>
    </div>
    </div>
</li>
                <li class="cunit_t290">
                        <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="2097001718384"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"2097001718384","shpp_type_dtl_cd":"18","item_img_url":"https://sitem.ssgcdn.com/84/83/71/item/2097001718384_i1_290.jpg","lwst_sellprc":79200,"usabl_inv_qty":11,"brand_id":"2000024800"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=2097001718384&siteNo=6001&salestrNo=2569" target="_self"  class="clickable"
             data-react-tarea="메인매장|쓱1DAY배송|상품_클릭|[쓱1DAY]헤라 블랙 쿠션 디럭스 21N1 (15g*3)_2097001718384" data-info="2097001718384" data-index="2" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/84/83/71/item/2097001718384_i1_290.jpg, //sitem.ssgcdn.com/84/83/71/item/2097001718384_i1_580.jpg 2x" src="//sitem.ssgcdn.com/84/83/71/item/2097001718384_i1_290.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=290&h=290&t=16cbd41d848a18acbeb9f1be5644242c91461495'" class="i1" width="290" height="290" alt="[쓱1DAY]헤라 블랙 쿠션 디럭스 21N1 (15g*3)"  loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_coupon"><span class="blind">쿠폰포함</span>10<em class="per">%</em></span>
            </div>
<div class="deiv_bdg notranslate" aria-label="배송방법">
    <span class="ssgdeliv_oneday"><span class="blind">쓱1DAY배송</span></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=2097001718384&siteNo=6001&salestrNo=2569" class="blank clickable"  target="_blank"
                    data-info="2097001718384" data-index="2" data-position="pop" data-unit="img" data-react-tarea="메인매장|쓱1DAY배송|상품_새창보기|[쓱1DAY]헤라 블랙 쿠션 디럭스 21N1 (15g*3)"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="2097001718384" data-idx="2" data-position="cart" data-unit="img" data-react-tarea="메인매장|쓱1DAY배송|상품_장바구니|[쓱1DAY]헤라 블랙 쿠션 디럭스 21N1 (15g*3)" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":"70","giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=2097001718384&siteNo=6001&salestrNo=2569","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"18","goItemDetailYn":"N","drctPurchYn":"N","itemId":"2097001718384","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6001","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"2569","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6001">
                <input type="hidden" name="attnTgtIdnfNo1" value="2097001718384">
                <input type="hidden" name="attnTgtIdnfNo2" value="2569">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="[쓱1DAY]헤라 블랙 쿠션 디럭스 21N1 (15g*3)">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/84/83/71/item/2097001718384_i1_290.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|쓱1DAY배송|상품_좋아요|_2097001718384" data-react-tarea-dtl-cd="t00003" >
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
    <i class="em"><span class="blind">이마트</span></i>
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
                <em class="tx_ko">헤라</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=2097001718384&siteNo=6001&salestrNo=2569" target="_self"  class="clickable"  data-react-tarea="메인매장|쓱1DAY배송|상품_클릭|[쓱1DAY]헤라 블랙 쿠션 디럭스 21N1 (15g*3)"
            data-info="2097001718384" data-index="2" data-position="view" data-unit="img">
                <em class="tx_ko">[쓱1DAY]헤라 블랙 쿠션 디럭스 21N1 (15g*3)</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">79,200</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦79,200)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">88,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>88,000</dd>
                            </dl>
                    <dl class="dis">
                        <dt>쿠폰</dt><dd>8,800원</dd>
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>79,200</dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:94.0%"><span class="blind">별점 4.7점</span></span>
            </div>
            <span class="rate_tx">(<em>27</em>개)</span>
        </div>
    </div>
    <div class="cunit_bene">
        <div class="spt_deiv">
            </div>
        <div class="cunit_bene_lst">
        </div>
    </div>
    </div>
</li>
                <li class="cunit_t290">
                        <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="1000544937242"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"1000544937242","shpp_type_dtl_cd":"18","item_img_url":"https://sitem.ssgcdn.com/42/72/93/item/1000544937242_i1_290.jpg","lwst_sellprc":10580,"usabl_inv_qty":1498,"brand_id":"1010100108"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=1000544937242&siteNo=6001&salestrNo=2569" target="_self"  class="clickable"
             data-react-tarea="메인매장|쓱1DAY배송|상품_클릭|3겹 화장지 33M X 30롤_1000544937242" data-info="1000544937242" data-index="3" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/42/72/93/item/1000544937242_i1_290.jpg, //sitem.ssgcdn.com/42/72/93/item/1000544937242_i1_580.jpg 2x" src="//sitem.ssgcdn.com/42/72/93/item/1000544937242_i1_290.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=290&h=290&t=16cbd41d848a18acbeb9f1be5644242c91461495'" class="i1" width="290" height="290" alt="3겹 화장지 33M X 30롤"  loading="lazy">
                <img srcset="//sitem.ssgcdn.com/42/72/93/item/1000544937242_i2_290.jpg, //sitem.ssgcdn.com/42/72/93/item/1000544937242_i2_580.jpg 2x" src="//sitem.ssgcdn.com/42/72/93/item/1000544937242_i2_290.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=290&h=290&t=16cbd41d848a18acbeb9f1be5644242c91461495'" class="i2" width="290" height="290" alt="3겹 화장지 33M X 30롤" aria-hidden="true" loading="lazy">
                <div class="deiv_bdg notranslate" aria-label="배송방법">
    <span class="ssgdeliv_oneday"><span class="blind">쓱1DAY배송</span></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=1000544937242&siteNo=6001&salestrNo=2569" class="blank clickable"  target="_blank"
                    data-info="1000544937242" data-index="3" data-position="pop" data-unit="img" data-react-tarea="메인매장|쓱1DAY배송|상품_새창보기|3겹 화장지 33M X 30롤"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="1000544937242" data-idx="3" data-position="cart" data-unit="img" data-react-tarea="메인매장|쓱1DAY배송|상품_장바구니|3겹 화장지 33M X 30롤" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":"70","giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=1000544937242&siteNo=6001&salestrNo=2569","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"18","goItemDetailYn":"N","drctPurchYn":"N","itemId":"1000544937242","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6001","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"2569","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6001">
                <input type="hidden" name="attnTgtIdnfNo1" value="1000544937242">
                <input type="hidden" name="attnTgtIdnfNo2" value="2569">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="3겹 화장지 33M X 30롤">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/42/72/93/item/1000544937242_i1_290.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|쓱1DAY배송|상품_좋아요|_1000544937242" data-react-tarea-dtl-cd="t00003" >
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
    <i class="em"><span class="blind">이마트</span></i>
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
                <em class="tx_ko">노브랜드</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=1000544937242&siteNo=6001&salestrNo=2569" target="_self"  class="clickable"  data-react-tarea="메인매장|쓱1DAY배송|상품_클릭|3겹 화장지 33M X 30롤"
            data-info="1000544937242" data-index="3" data-position="view" data-unit="img">
                <em class="tx_ko">3겹 화장지 33M X 30롤</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">10,580</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦10,580)</div>
                </div>
            <div class="org_price_wrap">
            </div>
            </div>
    <div class="cunit_prw">
            <div class="unit">(10m당:107원)</div>
                </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:96.0%"><span class="blind">별점 4.82점</span></span>
            </div>
            <span class="rate_tx">(<em>545</em>개)</span>
        </div>
    </div>
    </div>
</li>
                <li class="cunit_t290">
                        <!-- https://markup.ssgadm.com/ssgui/01.ssg/pcweb/trunk/dist/html/pages/guide_unit.html -->
<div class="cunit_prod "
     data-react-unit-type="item"
     data-observable-item = "true"
     data-react-unit-id="2097001814277"
     data-react-unit-inx="0"
     data-react-mdl-info=""
     data-react-advert-yn ="N"
     data-react-advert-bid-id=""
     data-react-advert-tgt-id=""
     data-react-advert-bilng-type-cd=""
     data-react-advert-kind-cd=""
     data-react-advert-extens-tery-div-cd=""
     data-react-advert-advert-acct-grp-id=""
     data-react-unit-text=''
     data-react-mkt-info='{"sell_stat_cd":true,"item_id":"2097001814277","shpp_type_dtl_cd":"18","item_img_url":"https://sitem.ssgcdn.com/77/42/81/item/2097001814277_i1_290.jpg","lwst_sellprc":48000,"usabl_inv_qty":796,"brand_id":"3000022153"}'>
    <div class="prod_top">
        </div>
    <div class="thmb">
        <a href="/item/itemView.ssg?itemId=2097001814277&siteNo=6001&salestrNo=2569" target="_self"  class="clickable"
             data-react-tarea="메인매장|쓱1DAY배송|상품_클릭|NEW 캐츠랑 전연령 점보 업그레이드 20kg_2097001814277" data-info="2097001814277" data-index="4" data-position="view" data-unit="img" data-react-tarea-dtl-cd="t00001">

            <img srcset="//sitem.ssgcdn.com/77/42/81/item/2097001814277_i1_290.jpg, //sitem.ssgcdn.com/77/42/81/item/2097001814277_i1_580.jpg 2x" src="//sitem.ssgcdn.com/77/42/81/item/2097001814277_i1_290.jpg" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=290&h=290&t=16cbd41d848a18acbeb9f1be5644242c91461495'" class="i1" width="290" height="290" alt="NEW 캐츠랑 전연령 점보 업그레이드 20kg"  loading="lazy">
                <div class="cm_bdg_v2 notranslate" aria-label="혜택">
        <span class="di_enuri"><span class="blind">에누리</span>17<em class="per">%</em></span>
            </div>
<div class="deiv_bdg notranslate" aria-label="배송방법">
    <span class="ssgdeliv_oneday"><span class="blind">쓱1DAY배송</span></span>
            </div>
</a>
        <div class="exp_area notranslate">
        <div class="util_bx"> <a href="/item/itemView.ssg?itemId=2097001814277&siteNo=6001&salestrNo=2569" class="blank clickable"  target="_blank"
                    data-info="2097001814277" data-index="4" data-position="pop" data-unit="img" data-react-tarea="메인매장|쓱1DAY배송|상품_새창보기|NEW 캐츠랑 전연령 점보 업그레이드 20kg"><span class="blind">새창보기</span></a>

            <a href="javascript:void(0)" class="cart clickable" role="button" onclick="frontCommCart.put(this, '');"
                            data-info="2097001814277" data-idx="4" data-position="cart" data-unit="img" data-react-tarea="메인매장|쓱1DAY배송|상품_장바구니|NEW 캐츠랑 전연령 점보 업그레이드 20kg" data-react-tarea-dtl-cd="t00002" ><span class="blind">장바구니</span></a>
                <span style="display:none" class="disp_cart_data" data-cart-type="10" data-cart-inflo-site-no="6005" data-cart-ordqty="1">{"advertBidId":"","giftBtnShowType":"","bsplItemDivCd":"70","giftBtnActType":"Y","itemChrctDivCd":"10","itemLnkd":"/item/itemView.ssg?itemId=2097001814277&siteNo=6001&salestrNo=2569","giftBtnMsg":"","bothSsgMorningShppYn":"N","shppTypeDtlCd":"18","goItemDetailYn":"N","drctPurchYn":"N","itemId":"2097001814277","dealItemYn":"N","advertExtensTeryDivCd":"","cleaningLabYn":"N","siteNo":"6001","useForcedSsg":"N","cartPsblType":"","uitemId":"00000","infloSiteNo":"6005","salestrNo":"2569","msgItemDetail":""}</span>
            <span class="cmlike _js_cmlike interestIt">
                <input type="hidden" name="attnDivCd" value="10">
                <input type="hidden" name="attnDivDtlCd" value="10">
                <input type="hidden" name="siteNo" value="6001">
                <input type="hidden" name="attnTgtIdnfNo1" value="2097001814277">
                <input type="hidden" name="attnTgtIdnfNo2" value="2569">
                <input type="hidden" name="uitemId" value="00000">
                <input type="hidden" name="notiTitle" value="NEW 캐츠랑 전연령 점보 업그레이드 20kg">
                <input type="hidden" name="notiImgPath" value="//sitem.ssgcdn.com/77/42/81/item/2097001814277_i1_290.jpg">
                <input type="hidden" name="checked" value="N">
                <input type="hidden" name="useForcedSsgYn" value="N">
                <button class="cmlike_btn _js_cmlike_btn clickable" data-position="clip" data-react-tarea="메인매장|쓱1DAY배송|상품_좋아요|_2097001814277" data-react-tarea-dtl-cd="t00003" >
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
    <i class="em"><span class="blind">이마트</span></i>
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
                <em class="tx_ko">캐츠랑</em>
            </strong>
        <a href="/item/itemView.ssg?itemId=2097001814277&siteNo=6001&salestrNo=2569" target="_self"  class="clickable"  data-react-tarea="메인매장|쓱1DAY배송|상품_클릭|NEW 캐츠랑 전연령 점보 업그레이드 20kg"
            data-info="2097001814277" data-index="4" data-position="view" data-unit="img">
                <em class="tx_ko">NEW 캐츠랑 전연령 점보 업그레이드 20kg</em>
            </a>
        </div>
    </div>
    <div class="cunit_price">
        <div class="opt_price">
                    <span class="blind">할인적용가</span>
                    <em class="ssg_price">48,000</em>
                    <span class="ssg_tx">원</span>
                    <div class="ssg_price_ko show_gl hide_ko">(￦48,000)</div>
                </div>
            <div class="org_price_wrap">
            <div class="org_price">
                    <span class="blind">판매가</span>
                    <em class="ssg_price">58,000</em>
                    <span class="ssg_tx">원</span>
                </div>
            <div class="dtl_price_wrap price-tooltip-wrap hide_gl">
                    <button class="btn_price price-tooltip"><span class="blind">가격 상세보기</span></button>
                    <div class="ly_dtl_price price-tooltip-layer">
                        <dl class="org">
                        <dt>판매가</dt>
                                <dd>58,000</dd>
                            </dl>
                    <dl class="dis">
                        <dt>에누리</dt><dd>10,000원</dd>
                        </dl>
                    <dl class="sum">
                            <dt>최적가</dt>
                            <dd>48,000</dd>
                        </dl>
                    </div>
                </div>
            </div>
            </div>
    <div class="cunit_prw">
            <div class="unit">(1kg당:2,400원)</div>
                </div>
    <div class="cunit_app">
    <div class="rating">
            <div class="rate_bg">
                <span style="width:98.0%"><span class="blind">별점 4.9점</span></span>
            </div>
            <span class="rate_tx">(<em>40</em>개)</span>
        </div>
    </div>
    </div>
</li>
                </ul>
            <!-- //공통상품유닛 -->
        </div>
        <div class="cmmain_more" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text=''>
                <a href="https://www.ssg.com/service/oneday/dvstore.ssg" class="cmmain_more_btn btn_moreview clickable" data-react-tarea-dtl-cd="t00026">매장 바로가기</a>
            </div>
        </div>
<!-- //쓱1DAY배송 상품 구좌 --><div class="cmmain_sec_popular" id="category-best" data-react-tarea-cd="00052_000000539">
        <div class="cmmain_heading">
            <h2 class="cmmain_heading_tit">인기상품 카테고리별로 만나요</h2>
        </div>
        <div class="cmmain_tabwrap js_cmmain_tabwrap" data-tabname="popular">
            <ul class="cmmain_tablist ty_txtmenu js_cmmain_tablist">
                <li role="presentation" class=""
                        data-react-unit-type="text"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"패션"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-react-tarea-cd-old="메인매장|카테고리인기상품|카테고리탭_클릭|패션"
                                data-corner-set-id="7200747312"
                                data-react-tarea-dtl-cd="t00014"
                        >패션</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="text"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"잡화"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-react-tarea-cd-old="메인매장|카테고리인기상품|카테고리탭_클릭|잡화"
                                data-corner-set-id="7200747313"
                                data-react-tarea-dtl-cd="t00014"
                        >잡화</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="text"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"명품"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-react-tarea-cd-old="메인매장|카테고리인기상품|카테고리탭_클릭|명품"
                                data-corner-set-id="7200891452"
                                data-react-tarea-dtl-cd="t00014"
                        >명품</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="text"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"뷰티"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-react-tarea-cd-old="메인매장|카테고리인기상품|카테고리탭_클릭|뷰티"
                                data-corner-set-id="7200747314"
                                data-react-tarea-dtl-cd="t00014"
                        >뷰티</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="text"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"스포츠/레저"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-react-tarea-cd-old="메인매장|카테고리인기상품|카테고리탭_클릭|스포츠/레저"
                                data-corner-set-id="7200747315"
                                data-react-tarea-dtl-cd="t00014"
                        >스포츠/레저</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="text"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"생활/주방"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-react-tarea-cd-old="메인매장|카테고리인기상품|카테고리탭_클릭|생활/주방"
                                data-corner-set-id="7200747316"
                                data-react-tarea-dtl-cd="t00014"
                        >생활/주방</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="text"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"가구/인테리어"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-react-tarea-cd-old="메인매장|카테고리인기상품|카테고리탭_클릭|가구/인테리어"
                                data-corner-set-id="7200747317"
                                data-react-tarea-dtl-cd="t00014"
                        >가구/인테리어</button>
                    </li>
                <li role="presentation" class="on"
                        data-react-unit-type="text"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"유아동"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="true"
                                data-react-tarea-cd-old="메인매장|카테고리인기상품|카테고리탭_클릭|유아동"
                                data-corner-set-id="7200747318"
                                data-react-tarea-dtl-cd="t00014"
                        >유아동</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="text"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"디지털/렌탈"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-react-tarea-cd-old="메인매장|카테고리인기상품|카테고리탭_클릭|디지털/렌탈"
                                data-corner-set-id="7200747319"
                                data-react-tarea-dtl-cd="t00014"
                        >디지털/렌탈</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="text"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"e쿠폰/문구/도서"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-react-tarea-cd-old="메인매장|카테고리인기상품|카테고리탭_클릭|e쿠폰/문구/도서"
                                data-corner-set-id="7200747320"
                                data-react-tarea-dtl-cd="t00014"
                        >e쿠폰/문구/도서</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="text"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"신선식품"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-react-tarea-cd-old="메인매장|카테고리인기상품|카테고리탭_클릭|신선식품"
                                data-corner-set-id="7200747321"
                                data-react-tarea-dtl-cd="t00014"
                        >신선식품</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="text"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"가공/건강식품"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-react-tarea-cd-old="메인매장|카테고리인기상품|카테고리탭_클릭|가공/건강식품"
                                data-corner-set-id="7200747322"
                                data-react-tarea-dtl-cd="t00014"
                        >가공/건강식품</button>
                    </li>
                </ul>
            <div class="cmmain_tabcont">
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data on"></div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
                </div>
        </div>
    </div>
<div class="cmmain_sec_news" data-react-tarea-cd="00052_000000916">
    <div class="cmmain_heading">
        <h2 class="cmmain_heading_tit">오늘의 새로운 소식</h2>
    </div>
    <div class="cmmain_grid">
        <div class="cmmain_gridcol3">
            <div class="cmplan_unit "
        
         data-react-unit-type="pnshop"
         data-react-unit-id="6000162499"
         data-react-unit-text=""
    >
        <a class="cmplan_link clickable" href="https://www.ssg.com/plan/planShop.ssg?dispCmptId=6000162499" data-react-tarea="메인매장|오늘의소식|기획전_클릭|청송폴리페놀사과" data-react-tarea-dtl-cd="t00051">
            <div class="cmplan_imgbx">
                <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202312/2023121915392499936056118605_681.jpg&w=400&h=240&edit=c&t=b967fbc17f83e44488a4f7904ea61b3544963fce" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202312/2023121915392499936056118605_681.jpg&w=800&h=480&edit=c&t=039e3fd069b48cc66c6712921b6c88fe6883cdb3 2x" alt="" class="cmplan_img" onerror="this.onerror=null;this.src='//simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/service/@750x452.jpg&w=400&h=240&edit=c'">
            </div>
            <div class="cmplan_detailbx">
                <div class="cmplan_tagarea">
                        <span class="cmplan_tag">#기획전</span>
                    </div>
                <em class="cmplan_tit">청송 꿀 사과</em>
                </div>
            </a>

        </div>
<div class="cmplan_unit cmmain_mgz"
        
         data-react-unit-type="shpg_mgz"
         data-react-unit-id="7000003824"
         data-react-unit-text=""
    >
        <a class="cmplan_link clickable" href="/contents/lifeMagazine.ssg?shpgMgzId=7000003824" data-react-tarea="메인매장|오늘의소식|라이프매거진_클릭|수앤진골드 TOP 4 순금 브랜드의 금테크 아이템을 소" data-react-tarea-dtl-cd="t00084">
            <div class="cmplan_imgbx">
                <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202404/2024042514093360422451921345_450.jpg&w=400&h=240&edit=c&t=b42e801bae7259642f5d43727b8733543d9d5c56" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202404/2024042514093360422451921345_450.jpg&w=800&h=480&edit=c&t=516a655392e89850b9e9b53b570b49630b86cd62 2x" alt="수앤진골드" class="cmplan_img" onerror="this.onerror=null;this.src='//simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/service/@750x452.jpg&w=400&h=240&edit=c'">
            </div>
            <div class="cmplan_detailbx">
                <div class="cmplan_tagarea">
                        <span class="cmplan_tag">#라이프매거진</span>
                    </div>
                <em class="cmplan_tit">SSG BEST GOLD BRAND 4</em>
                <em class="cmplan_tit">가정의 달 맞이 골드바/순금쥬얼리 기프트 추천</em>
                </div>
            </a>

        </div>
<div class="cmmain_keyword">
                    <div class="cmmain_keyword_in">
                        <h3 class="cmmain_keyword_tit">지금 많이 검색하는 키워드</h3>
                        <ul class="cmmain_keyword_list">
                            <li class="notranslate" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"레고 10325"}]'>
                                    <a href="/search.ssg?target=all&query=레고 10325&src_area=main"
                                       class="cmmain_keyword_item clickable"
                                       data-react-tarea="메인매장|오늘의소식|키워드_클릭|레고 10325"
                                       data-react-tarea-dtl-cd="t00060"
                                    >레고 10325</a>
                                </li>
                            <li class="notranslate" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"레고 바이킹"}]'>
                                    <a href="/search.ssg?target=all&query=레고 바이킹&src_area=main"
                                       class="cmmain_keyword_item clickable"
                                       data-react-tarea="메인매장|오늘의소식|키워드_클릭|레고 바이킹"
                                       data-react-tarea-dtl-cd="t00060"
                                    >레고 바이킹</a>
                                </li>
                            <li class="notranslate" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"레고 21343"}]'>
                                    <a href="/search.ssg?target=all&query=레고 21343&src_area=main"
                                       class="cmmain_keyword_item clickable"
                                       data-react-tarea="메인매장|오늘의소식|키워드_클릭|레고 21343"
                                       data-react-tarea-dtl-cd="t00060"
                                    >레고 21343</a>
                                </li>
                            <li class="notranslate" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"키엘"}]'>
                                    <a href="/search.ssg?target=all&query=키엘&src_area=main"
                                       class="cmmain_keyword_item clickable"
                                       data-react-tarea="메인매장|오늘의소식|키워드_클릭|키엘"
                                       data-react-tarea-dtl-cd="t00060"
                                    >키엘</a>
                                </li>
                            <li class="notranslate" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"카네이션"}]'>
                                    <a href="/search.ssg?target=all&query=카네이션&src_area=main"
                                       class="cmmain_keyword_item clickable"
                                       data-react-tarea="메인매장|오늘의소식|키워드_클릭|카네이션"
                                       data-react-tarea-dtl-cd="t00060"
                                    >카네이션</a>
                                </li>
                            <li class="notranslate" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"레고"}]'>
                                    <a href="/search.ssg?target=all&query=레고&src_area=main"
                                       class="cmmain_keyword_item clickable"
                                       data-react-tarea="메인매장|오늘의소식|키워드_클릭|레고"
                                       data-react-tarea-dtl-cd="t00060"
                                    >레고</a>
                                </li>
                            <li class="notranslate" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"베베드피노 신상"}]'>
                                    <a href="/search.ssg?target=all&query=베베드피노 신상&src_area=main"
                                       class="cmmain_keyword_item clickable"
                                       data-react-tarea="메인매장|오늘의소식|키워드_클릭|베베드피노 신상"
                                       data-react-tarea-dtl-cd="t00060"
                                    >베베드피노 신상</a>
                                </li>
                            <li class="notranslate" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"스탠리"}]'>
                                    <a href="/search.ssg?target=all&query=스탠리&src_area=main"
                                       class="cmmain_keyword_item clickable"
                                       data-react-tarea="메인매장|오늘의소식|키워드_클릭|스탠리"
                                       data-react-tarea-dtl-cd="t00060"
                                    >스탠리</a>
                                </li>
                            <li class="notranslate" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"라비앙"}]'>
                                    <a href="/search.ssg?target=all&query=라비앙&src_area=main"
                                       class="cmmain_keyword_item clickable"
                                       data-react-tarea="메인매장|오늘의소식|키워드_클릭|라비앙"
                                       data-react-tarea-dtl-cd="t00060"
                                    >라비앙</a>
                                </li>
                            <li class="notranslate" data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"냉면"}]'>
                                    <a href="/search.ssg?target=all&query=냉면&src_area=main"
                                       class="cmmain_keyword_item clickable"
                                       data-react-tarea="메인매장|오늘의소식|키워드_클릭|냉면"
                                       data-react-tarea-dtl-cd="t00060"
                                    >냉면</a>
                                </li>
                            </ul>
                    </div>
                </div>
            </div>
        <div class="cmmain_gridcol3">
            <div class="cmplan_unit "
        
         data-react-unit-type="banr"
         data-react-unit-id="2002614992"
         data-react-unit-text=""
    >
        <a class="cmplan_link clickable" href="" data-react-tarea="메인매장|오늘의소식|배너_클릭|" data-react-tarea-dtl-cd="t00001">
            <div class="cmplan_imgbx">
                <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202404/2024042515122021828890355889_148.jpg&w=400&h=240&edit=c&t=18eecc0461cea604c40de30f3f443b08d7df8e92" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202404/2024042515122021828890355889_148.jpg&w=800&h=480&edit=c&t=a92edb7f2a7e1892d85b9439b09bc8a2cc98bf33 2x" alt="금주의 추천상품! 지금 행사중인 이마트 점포상품  " class="cmplan_img" onerror="this.onerror=null;this.src='//simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/service/@750x452.jpg&w=400&h=240&edit=c'">
            </div>
            <div class="cmplan_detailbx">
                <div class="cmplan_tagarea">
                        <span class="cmplan_tag">#이마트몰 점포행사</span>
                    </div>
                <em class="cmplan_tit">금주의 추천상품!</em>
                </div>
            </a>

        </div>
<div class="cmmain_deal cmmain_deal_happylounge" data-react-unit-type="item" data-react-unit-id="1000050004951" data-react-unit-text="">
        <a class="cmmain_deal_link clickable" href="/service/specialMain.ssg?tabDivCd=happy#myclick_1000050004951" data-react-tarea="메인매장|오늘의소식|해바상품_클릭|워시콤보 포토상품평이벤트" data-react-tarea-dtl-cd="t00001">
            <em class="cmmain_deal_ico"><span class="blind">해피라운지</span></em>
            <div class="cmmain_deal_imgbx">
                <img class="cmmain_deal_img" src="//sitem.ssgcdn.com/51/49/00/item/1000050004951_i1_300.jpg" srcset="//sitem.ssgcdn.com/51/49/00/item/1000050004951_i1_600.jpg 2x" alt="워시콤보 포토상품평이벤트" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=300&h=300&t=d142c2696e00434abf53625345271a498f9694a0'">
            </div>
            <div class="cmmain_deal_tit">
                <p>의류가전 특가전</p>
                                <p>~13% 할인</p>
                                </div>
            <div class="cmmain_deal_pricebx">
                <p class="cmmain_deal_optprice">
                    <span class="blind">할인적용가</span>
                    <em class="cmmain_deal_price">3,937,000</em>
                    <span class="cmmain_deal_pricetx">원</span>
                    <span class="cmmain_deal_pricebar">~</span>
                    </p>
            </div>
        </a>
    </div>
<div class="cmplan_unit "
        
         data-react-unit-type="pnshop"
         data-react-unit-id="4010061109"
         data-react-unit-text=""
    >
        <a class="cmplan_link clickable" href="https://www.ssg.com/plan/planShop.ssg?dispCmptId=4010061109" data-react-tarea="메인매장|오늘의소식|기획전_클릭|대한민국 두유 브랜드 모음" data-react-tarea-dtl-cd="t00051">
            <div class="cmplan_imgbx">
                <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/201508/20150824140140_946.jpg&w=400&h=240&edit=c&t=4a18fceea8400aa1e5428c88f25a355116529697" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/201508/20150824140140_946.jpg&w=800&h=480&edit=c&t=d0ff977f27d79661f1c3fd2d023e8a7776bc9f35 2x" alt="" class="cmplan_img" onerror="this.onerror=null;this.src='//simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/service/@750x452.jpg&w=400&h=240&edit=c'">
            </div>
            <div class="cmplan_detailbx">
                <div class="cmplan_tagarea">
                        <span class="cmplan_tag">#기획전</span>
                    </div>
                <em class="cmplan_tit">고소고소~고소한</em>
                </div>
            </a>

        </div>
</div>
        <div class="cmmain_gridcol3">
            <div class="cmplan_unit "
        
         data-react-unit-type="prom"
         data-react-unit-id="1000000013077"
         data-react-unit-text=""
    >
        <a class="cmplan_link clickable" href="https://event.ssg.com/eventDetail.ssg?nevntId=1000000013077&domainSiteNo=6005" data-react-tarea="메인매장|오늘의소식|이벤트_클릭|토이 스토리 I 타이니탄" data-react-tarea-dtl-cd="t00052">
            <div class="cmplan_imgbx">
                <img src="https://simg.ssgcdn.com/trans.ssg?src=/promo/event/ssg/202404/45446607213129060.jpg&w=400&h=240&edit=c&t=6056df914f6edc40295bd45c76c5eeb585722fe2" srcset="https://simg.ssgcdn.com/trans.ssg?src=/promo/event/ssg/202404/45446607213129060.jpg&w=800&h=480&edit=c&t=ee5ff7288befa610be89bbbb5fb0094323d4bc8f 2x" alt="Toy Story｜TinyTAN with SHINSEGAE" class="cmplan_img" onerror="this.onerror=null;this.src='//simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/service/@750x452.jpg&w=400&h=240&edit=c'">
            </div>
            <div class="cmplan_detailbx">
                <div class="cmplan_tagarea">
                        <span class="cmplan_tag">#이벤트</span>
                    </div>
                <em class="cmplan_tit">토이 스토리 I 타이니탄</em>
                </div>
            </a>

        </div>
<div class="cmplan_unit "
        
         data-react-unit-type="banr"
         data-react-unit-id="2003428163"
         data-react-unit-text=""
    >
        <a class="cmplan_link clickable" href="" data-react-tarea="메인매장|오늘의소식|배너_클릭|" data-react-tarea-dtl-cd="t00001">
            <div class="cmplan_imgbx">
                <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202001/2020013011435354932816566281_586.jpg&w=400&h=240&edit=c&t=9334c89254d7ff4ce9ebf89b48b01486a104aae7" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202001/2020013011435354932816566281_586.jpg&w=800&h=480&edit=c&t=b6a0fd8e2e322e46589334fbee2a27878eb68d13 2x" alt="이번주 채소 행사 한눈에  " class="cmplan_img" onerror="this.onerror=null;this.src='//simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/service/@750x452.jpg&w=400&h=240&edit=c'">
            </div>
            <div class="cmplan_detailbx">
                <div class="cmplan_tagarea">
                        <span class="cmplan_tag">#이마트몰 점포행사</span>
                    </div>
                <em class="cmplan_tit">이번주 채소 행사</em>
                </div>
            </a>

        </div>
<div class="cmmain_deal cmmain_deal_obj" data-react-unit-type="item" data-react-unit-id="1000553779799" data-react-unit-text="">
        <a class="cmmain_deal_link clickable" href="/service/specialMain.ssg?tabDivCd=obanjang#myclick_1000553779799" data-react-tarea="메인매장|오늘의소식|오반장상품_클릭|한우 등심, 제육볶음, 토마토등~50%" data-react-tarea-dtl-cd="t00001">
            <em class="cmmain_deal_ico"><span class="blind">오반장</span></em>
            <div class="cmmain_deal_imgbx">
                <img class="cmmain_deal_img" src="//sitem.ssgcdn.com/99/97/77/item/1000553779799_i1_300.jpg" srcset="//sitem.ssgcdn.com/99/97/77/item/1000553779799_i1_600.jpg 2x" alt="한우 등심, 제육볶음, 토마토등~50%" onerror="this.onerror=null;this.src='https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg&w=300&h=300&t=d142c2696e00434abf53625345271a498f9694a0'">
            </div>
            <div class="cmmain_deal_tit">
                <p>한우등심, 제육볶음등</p>
                        <p>신선식품~50%</p>
                        </div>
            <div class="cmmain_deal_pricebx">
                <p class="cmmain_deal_optprice">
                    <span class="blind">할인적용가</span>
                    <em class="cmmain_deal_price">19,700</em>
                    <span class="cmmain_deal_pricetx">원</span>
                    <span class="cmmain_deal_pricebar">~</span>
                    </p>
            </div>
        </a>
    </div>
</div>
    </div>
</div><div id="ajaxMainMemberShipItem" style="display:none"></div><div class="newmall_area" style="display: none;"></div><!-- 특가상품 -->
    <div class="cmmain_sec_deal" data-react-tarea-cd="00052_000000114">
            <div class="cmmain_heading">
                <h2 class="cmmain_heading_tit">놓치면 후회하는 특가 상품</h2>
            </div>
            <div class="cmmain_tabwrap js_cmmain_tabwrap" data-tabname="deal">
                <ul class="cmmain_tablist ty_txtmenu js_cmmain_tablist">
                    <li role="presentation" class="on"
                            data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"전체보기"}]'>
                            <button type="button" class="cmmain_tab js_cmmain_tab clickable" onclick="ajaxGetDealItemList(this);" role="tab"
                                    aria-selected="true" data-deal-type="all"
                                    data-react-tarea-cd-old="메인매장|특가|탭_클릭|전체보기"
                                    data-react-tarea-dtl-cd="t00014">전체보기</button>
                        </li>
                    <li role="presentation" 
                            data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"이마트 오반장"}]'>
                            <button type="button" class="cmmain_tab js_cmmain_tab clickable" onclick="ajaxGetDealItemList(this);" role="tab"
                                    aria-selected="true" data-deal-type="obanjang"
                                    data-react-tarea-cd-old="메인매장|특가|탭_클릭|이마트 오반장"
                                    data-react-tarea-dtl-cd="t00014">이마트 오반장</button>
                        </li>
                    <li role="presentation" 
                            data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"쓱-특가"}]'>
                            <button type="button" class="cmmain_tab js_cmmain_tab clickable" onclick="ajaxGetDealItemList(this);" role="tab"
                                    aria-selected="true" data-deal-type="happy"
                                    data-react-tarea-cd-old="메인매장|특가|탭_클릭|쓱-특가"
                                    data-react-tarea-dtl-cd="t00014">쓱-특가</button>
                        </li>
                    <li role="presentation" 
                            data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"마감세일"}]'>
                            <button type="button" class="cmmain_tab js_cmmain_tab clickable" onclick="ajaxGetDealItemList(this);" role="tab"
                                    aria-selected="true" data-deal-type="closing"
                                    data-react-tarea-cd-old="메인매장|특가|탭_클릭|마감세일"
                                    data-react-tarea-dtl-cd="t00014">마감세일</button>
                        </li>
                    <li role="presentation" 
                            data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"전단행사"}]'>
                            <button type="button" class="cmmain_tab js_cmmain_tab clickable" onclick="ajaxGetDealItemList(this);" role="tab"
                                    aria-selected="true" data-deal-type="flyer"
                                    data-react-tarea-cd-old="메인매장|특가|탭_클릭|전단행사"
                                    data-react-tarea-dtl-cd="t00014">전단행사</button>
                        </li>
                    <li role="presentation" 
                            data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"하나 더 사은품"}]'>
                            <button type="button" class="cmmain_tab js_cmmain_tab clickable" onclick="ajaxGetDealItemList(this);" role="tab"
                                    aria-selected="true" data-deal-type="plusone"
                                    data-react-tarea-cd-old="메인매장|특가|탭_클릭|하나 더 사은품"
                                    data-react-tarea-dtl-cd="t00014">하나 더 사은품</button>
                        </li>
                    <li role="presentation" 
                            data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"백화점 세일중"}]'>
                            <button type="button" class="cmmain_tab js_cmmain_tab clickable" onclick="ajaxGetDealItemList(this);" role="tab"
                                    aria-selected="true" data-deal-type="dept"
                                    data-react-tarea-cd-old="메인매장|특가|탭_클릭|백화점 세일중"
                                    data-react-tarea-dtl-cd="t00014">백화점 세일중</button>
                        </li>
                    </ul>
                <div class="cmmain_tabcont">
                    <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel on">
                        <!-- 데이터 없는 경우 -->
        <div class="cmmain_cunit_items">
            <ul class="cunit_thmb_lst" data-areaid="item_list">
                <div class="cm_empty">
                    <p class="cm_empty_tx">곧 상품이 등록될 예정입니다.</p>
                    <p class="cm_empty_tx">조금만 기다려주세요!</p>
                </div>
            </ul>
        </div>
    </div>
                </div>
            </div>
        </div>
    <!-- // 특가상품 -->
    <input type="hidden" name="fn:length(banners)" value="13">

<div class="cmmain_sec_gift ty_renew">
    <div class="cmmain_heading">
        <h2 class="cmmain_heading_tit">특별한 날은 SSG 선물하기와 함께해요</h2>
    </div>
    <div class="cmmain_tabwrap js_cmmain_tabwrap" data-tabname="gift">
        <ul class="cmmain_tablist ty_imgmenu js_cmmain_tablist">
            <li role="presentation" class="on">
                    <span class="cmmain_tabimg">
                        <img src="//sui.ssgcdn.com/cmpt/banner/202404/2024041712424509435577946557_565.png" alt="어린이 선물" loading="lazy">
                    </span>
                    <button type="button" class="cmmain_tab js_cmmain_tab" role="tab" aria-selected="true" data-options='{"cornerId": "7000767098"}' onclick="mainGiftThemeService.getItems()">어린이 선물</button>
                </li>
            <li role="presentation" class="">
                    <span class="cmmain_tabimg">
                        <img src="//sui.ssgcdn.com/cmpt/banner/202311/2023110915421931513911415391_572.png" alt="생일/축하" loading="lazy">
                    </span>
                    <button type="button" class="cmmain_tab js_cmmain_tab" role="tab" aria-selected="true" data-options='{"cornerId": "7000766399"}' onclick="mainGiftThemeService.getItems()">생일/축하</button>
                </li>
            <li role="presentation" class="">
                    <span class="cmmain_tabimg">
                        <img src="//sui.ssgcdn.com/cmpt/banner/202311/2023110915423081319780925978_27.png" alt="맛있는선물" loading="lazy">
                    </span>
                    <button type="button" class="cmmain_tab js_cmmain_tab" role="tab" aria-selected="true" data-options='{"cornerId": "7000766397"}' onclick="mainGiftThemeService.getItems()">맛있는선물</button>
                </li>
            <li role="presentation" class="">
                    <span class="cmmain_tabimg">
                        <img src="//sui.ssgcdn.com/cmpt/banner/202311/2023110915423856794883673588_571.png" alt="결혼/집들이" loading="lazy">
                    </span>
                    <button type="button" class="cmmain_tab js_cmmain_tab" role="tab" aria-selected="true" data-options='{"cornerId": "7000757556"}' onclick="mainGiftThemeService.getItems()">결혼/집들이</button>
                </li>
            <li role="presentation" class="">
                    <span class="cmmain_tabimg">
                        <img src="//sui.ssgcdn.com/cmpt/banner/202311/2023110915425082728997916899_627.png" alt="응원/위로" loading="lazy">
                    </span>
                    <button type="button" class="cmmain_tab js_cmmain_tab" role="tab" aria-selected="true" data-options='{"cornerId": "7000766398"}' onclick="mainGiftThemeService.getItems()">응원/위로</button>
                </li>
            <li role="presentation" class="">
                    <span class="cmmain_tabimg">
                        <img src="//sui.ssgcdn.com/cmpt/banner/202311/2023110915405917824314126431_132.png" alt="뷰티" loading="lazy">
                    </span>
                    <button type="button" class="cmmain_tab js_cmmain_tab" role="tab" aria-selected="true" data-options='{"cornerId": "7000757472"}' onclick="mainGiftThemeService.getItems()">뷰티</button>
                </li>
            <li role="presentation" class="">
                    <span class="cmmain_tabimg">
                        <img src="//sui.ssgcdn.com/cmpt/banner/202311/2023110915410873551028869102_188.png" alt="럭셔리선물" loading="lazy">
                    </span>
                    <button type="button" class="cmmain_tab js_cmmain_tab" role="tab" aria-selected="true" data-options='{"cornerId": "7000757555"}' onclick="mainGiftThemeService.getItems()">럭셔리선물</button>
                </li>
            <li role="presentation" class="">
                    <span class="cmmain_tabimg">
                        <img src="//sui.ssgcdn.com/cmpt/banner/202311/2023110915411675496702913770_156.png" alt="유아동" loading="lazy">
                    </span>
                    <button type="button" class="cmmain_tab js_cmmain_tab" role="tab" aria-selected="true" data-options='{"cornerId": "7000757559"}' onclick="mainGiftThemeService.getItems()">유아동</button>
                </li>
            <li role="presentation" class="">
                    <span class="cmmain_tabimg">
                        <img src="//sui.ssgcdn.com/cmpt/banner/202311/2023110915413008534220867422_375.png" alt="건강/회복" loading="lazy">
                    </span>
                    <button type="button" class="cmmain_tab js_cmmain_tab" role="tab" aria-selected="true" data-options='{"cornerId": "7000757558"}' onclick="mainGiftThemeService.getItems()">건강/회복</button>
                </li>
            <li role="presentation" class="">
                    <span class="cmmain_tabimg">
                        <img src="//sui.ssgcdn.com/cmpt/banner/202311/2023110915414352169672960077_403.png" alt="디지털/가전" loading="lazy">
                    </span>
                    <button type="button" class="cmmain_tab js_cmmain_tab" role="tab" aria-selected="true" data-options='{"cornerId": "7000757557"}' onclick="mainGiftThemeService.getItems()">디지털/가전</button>
                </li>
            <li role="presentation" class="">
                    <span class="cmmain_tabimg">
                        <img src="//sui.ssgcdn.com/cmpt/banner/202311/2023110915415248058804310980_46.png" alt="골프/레저" loading="lazy">
                    </span>
                    <button type="button" class="cmmain_tab js_cmmain_tab" role="tab" aria-selected="true" data-options='{"cornerId": "7000766395"}' onclick="mainGiftThemeService.getItems()">골프/레저</button>
                </li>
            <li role="presentation" class="">
                    <span class="cmmain_tabimg">
                        <img src="//sui.ssgcdn.com/cmpt/banner/202311/2023110915420287259005609900_236.png" alt="모바일기프트" loading="lazy">
                    </span>
                    <button type="button" class="cmmain_tab js_cmmain_tab" role="tab" aria-selected="true" data-options='{"cornerId": "7000766396"}' onclick="mainGiftThemeService.getItems()">모바일기프트</button>
                </li>
            <li role="presentation" class="">
                    <span class="cmmain_tabimg">
                        <img src="//sui.ssgcdn.com/cmpt/banner/202311/2023110915420987993947373494_660.png" alt="백화점선물" loading="lazy">
                    </span>
                    <button type="button" class="cmmain_tab js_cmmain_tab" role="tab" aria-selected="true" data-options='{"cornerId": "7000757553"}' onclick="mainGiftThemeService.getItems()">백화점선물</button>
                </li>
            </ul>
        <div class="cmmain_tabcont">
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data on"></div>
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
            </div>
    </div>
</div><div class="cmmain_sec_ranking" id="main-ranking" data-react-tarea-cd="00052_000000380">
    <div class="cmmain_heading">
        <h2 class="cmmain_heading_tit">지금 인기 있는 상품이에요</h2>
    </div>
    <div class="cmmain_tabwrap js_cmmain_tabwrap" data-tabname="ranking">
        <ul class="cmmain_tablist ty_txtmenu js_cmmain_tablist">
            <li role="presentation" class="on"
                data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"전체 베스트"}]'>
                <button type="button"
                        class="cmmain_tab js_cmmain_tab clickable"
                        role="tab"
                        aria-selected="true"
                        data-corner-id="7000502308"
                        data-display-category-id="5000016005"
                        data-react-tarea-cd-old="메인매장|랭킹|탭_클릭|전체랭킹"
                        data-react-tarea-dtl-cd="t00014"
                >전체 베스트</button>
            </li>
            <li role="presentation"
                data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"실시간인기"}]'>
                <button type="button"
                        class="cmmain_tab js_cmmain_tab clickable"
                        role="tab"
                        aria-selected="false"
                        data-react-tarea-cd-old="메인매장|랭킹|탭_클릭|실시간인기"
                >실시간인기</button>
            </li>
            <li role="presentation"
                data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"장보기 상품"}]'>
                <button type="button"
                        class="cmmain_tab js_cmmain_tab clickable"
                        role="tab"
                        aria-selected="false"
                        data-corner-id="7000502219"
                        data-display-category-id="6000142657"
                        data-react-tarea-cd-old="메인매장|랭킹|탭_클릭|장보기 상품"
                        data-react-tarea-dtl-cd="t00014"
                >장보기 상품</button>
            </li>
            <li role="presentation"
                data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"백화점 상품"}]'>
                <button type="button"
                        class="cmmain_tab js_cmmain_tab clickable"
                        role="tab"
                        aria-selected="false"
                        data-corner-id="7000502220"
                        data-display-category-id="6000142981"
                        data-react-tarea-cd-old="메인매장|랭킹|탭_클릭|백화점 상품"
                        data-react-tarea-dtl-cd="t00014"
                >백화점 상품</button>
            </li>
            <li role="presentation"
                data-react-unit-type="text" data-react-unit-id="" data-react-unit-text='[{"type":"text","value":"고객리뷰"}]'>
                <button type="button"
                        class="cmmain_tab js_cmmain_tab clickable"
                        role="tab"
                        aria-selected="false"
                        data-corner-id="7000502221"
                        data-display-category-id="5000016005"
                        data-react-tarea-cd-old="메인매장|랭킹|탭_클릭|고객리뷰"
                        data-react-tarea-dtl-cd="t00014"
                >고객리뷰</button>
            </li>
        </ul>
        <div class="cmmain_tabcont">
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data on"></div>
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data"></div>
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data"></div>
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data"></div>
            <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data"></div>
        </div>
    </div>
</div><div class="cmmain_sec_store" id="special-shop">
        <div class="cmmain_heading">
            <h2 class="cmmain_heading_tit">믿고 사는 SSG 공식스토어</h2>
        </div>
        <div class="cmmain_tabwrap js_cmmain_tabwrap" data-tabname="official_brand">
            <ul class="cmmain_tablist ty_txtmenu js_cmmain_tablist" data-react-tarea-cd="00052_000000542">
                <li role="presentation" class="on"
                        data-react-unit-type="disp_ctg"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"전체"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="true"
                                data-spcshop-disptype-cd="ALL"
                                data-react-tarea-dtl-cd="t00054"
                        >전체</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="disp_ctg"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"패션"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-spcshop-disptype-cd="01"
                                data-react-tarea-dtl-cd="t00054"
                        >패션</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="disp_ctg"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"뷰티&잡화"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-spcshop-disptype-cd="02"
                                data-react-tarea-dtl-cd="t00054"
                        >뷰티&잡화</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="disp_ctg"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"스포츠&레저"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-spcshop-disptype-cd="03"
                                data-react-tarea-dtl-cd="t00054"
                        >스포츠&레저</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="disp_ctg"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"디지털&라이프"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-spcshop-disptype-cd="04"
                                data-react-tarea-dtl-cd="t00054"
                        >디지털&라이프</button>
                    </li>
                <li role="presentation" class=""
                        data-react-unit-type="disp_ctg"
                        data-react-unit-id=""
                        data-react-unit-text='[{"type":"text","value":"푸드"}]'>
                        <button type="button"
                                class="cmmain_tab js_cmmain_tab clickable"
                                role="tab"
                                aria-selected="false"
                                data-spcshop-disptype-cd="05"
                                data-react-tarea-dtl-cd="t00054"
                        >푸드</button>
                    </li>
                </ul>
            <div class="cmmain_tabcont">
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data on"></div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
                <div role="tabpanel" class="cmmain_tabpanel js_cmmain_tabpanel js_loading_data "></div>
                </div>
        </div>
        <div class="cmmain_more"
             data-react-tarea-cd="00052_000000543"
             data-react-unit-type="text"
             data-react-unit-id=""
             data-react-unit-text='[{"type":"tarea_addt_val","value":"null"}]'>
            <a href="/special/index.ssg" class="cmmain_more_btn btn_moreview clickable"
               data-react-tarea-dtl-cd="t00041">공식스토어 전체보기</a>
        </div>
    </div>
<div class="newmall_area" style="display: none;"></div><div class="newmall_area" style="display: none;"></div><div class="newmall_area" style="display: none;"></div><div class="cmmain_sec_mndmoon" id="mondayMoon" data-react-tarea-cd="00052_000000547"></div><div class="newmall_area" style="display: none;"></div><div class="cmmain_sec_plan">
        <div class="cmmain_heading">
            <h2 class="cmmain_heading_tit">기획전 베스트</h2>
        </div>
        <div class="cmmain_grid">
            <div class="cmmain_gridcol3">
                <div class="cmplan_unit "
        
         data-react-unit-type="pnshop"
         data-react-unit-id="6000044131"
         data-react-unit-text=""
    >
        <a class="cmplan_link clickable" href="https://www.ssg.com/plan/planShop.ssg?dispCmptId=6000044131" data-react-tarea="메인매장|기획전베스트|기획전_클릭|[GUCCI] 구찌선물제안" data-react-tarea-dtl-cd="t00051">
            <div class="cmplan_imgbx">
                <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202402/2024022916033551410890263089_605.jpg&w=400&h=240&edit=c&t=340766b6128e171b484ba6415da4557d48dbd157" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202402/2024022916033551410890263089_605.jpg&w=800&h=480&edit=c&t=1d56a7676ec7cf8a1b79c467527ad624953cfd23 2x" alt="" class="cmplan_img" onerror="this.onerror=null;this.src='//simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/service/@750x452.jpg&w=400&h=240&edit=c'">
            </div>
            <div class="cmplan_detailbx">
                <div class="cmplan_tagarea">
                        <span class="cmplan_tag">#기획전</span>
                    </div>
                <em class="cmplan_tit">[GUCCI] 공식 온라인 스토어</em>
                </div>
            </a>

        </div>
<div class="cmplan_unit "
        
         data-react-unit-type="pnshop"
         data-react-unit-id="6000376282"
         data-react-unit-text=""
    >
        <a class="cmplan_link clickable" href="https://www.ssg.com/plan/planShop.ssg?dispCmptId=6000376282" data-react-tarea="메인매장|기획전베스트|기획전_클릭|JAJU 쓱배송" data-react-tarea-dtl-cd="t00051">
            <div class="cmplan_imgbx">
                <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202404/2024040111084303080408719040_843.jpg&w=400&h=400&edit=c&t=a082613c0d236812f1e11bc2b202936c4e0d03ed" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202404/2024040111084303080408719040_843.jpg&w=800&h=800&edit=c&t=a464c0e0b6b7e6d4da056ef28f979c69944a5f91 2x" alt="" class="cmplan_img" onerror="this.onerror=null;this.src='//simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/service/@750x452.jpg&w=400&h=400&edit=c'">
            </div>
            <div class="cmplan_detailbx">
                <div class="cmplan_tagarea">
                        <span class="cmplan_tag">#기획전</span>
                    </div>
                <em class="cmplan_tit">JAJU</em>
                </div>
            </a>

        </div>
</div>
                <div class="cmmain_gridcol3">
                <div class="cmplan_unit "
        
         data-react-unit-type="pnshop"
         data-react-unit-id="6000320676"
         data-react-unit-text=""
    >
        <a class="cmplan_link clickable" href="https://www.ssg.com/plan/planShop.ssg?dispCmptId=6000320676" data-react-tarea="메인매장|기획전베스트|기획전_클릭|물가안정 노브랜드 장보기" data-react-tarea-dtl-cd="t00051">
            <div class="cmplan_imgbx">
                <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/201910/2019100815590559261948814294_734.jpg&w=400&h=400&edit=c&t=7ffc201539ea5836728198af47c3b8db3b2d1fc7" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/201910/2019100815590559261948814294_734.jpg&w=800&h=800&edit=c&t=c86be5e85a511d041c0339f6dbb1895ce6b9bdfd 2x" alt="" class="cmplan_img" onerror="this.onerror=null;this.src='//simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/service/@750x452.jpg&w=400&h=400&edit=c'">
            </div>
            <div class="cmplan_detailbx">
                <div class="cmplan_tagarea">
                        <span class="cmplan_tag">#기획전</span>
                    </div>
                <em class="cmplan_tit">모두가 사랑하는</em>
                </div>
            </a>

        </div>
<div class="cmplan_unit "
        
         data-react-unit-type="pnshop"
         data-react-unit-id="6000131503"
         data-react-unit-text=""
    >
        <a class="cmplan_link clickable" href="https://www.ssg.com/plan/planShop.ssg?dispCmptId=6000131503" data-react-tarea="메인매장|기획전베스트|기획전_클릭|금주의 추천상품" data-react-tarea-dtl-cd="t00051">
            <div class="cmplan_imgbx">
                <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202404/2024042515122021828890355889_148.jpg&w=400&h=240&edit=c&t=18eecc0461cea604c40de30f3f443b08d7df8e92" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202404/2024042515122021828890355889_148.jpg&w=800&h=480&edit=c&t=a92edb7f2a7e1892d85b9439b09bc8a2cc98bf33 2x" alt="" class="cmplan_img" onerror="this.onerror=null;this.src='//simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/service/@750x452.jpg&w=400&h=240&edit=c'">
            </div>
            <div class="cmplan_detailbx">
                <div class="cmplan_tagarea">
                        <span class="cmplan_tag">#기획전</span>
                    </div>
                <em class="cmplan_tit">금주의 추천상품!</em>
                </div>
            </a>

        </div>
</div>
                <div class="cmmain_gridcol3">
                <div class="cmplan_unit "
        
         data-react-unit-type="pnshop"
         data-react-unit-id="6000351800"
         data-react-unit-text=""
    >
        <a class="cmplan_link clickable" href="https://www.ssg.com/plan/planShop.ssg?dispCmptId=6000351800" data-react-tarea="메인매장|기획전베스트|기획전_클릭|트레이더스 쓱배송 대용량 장보기!" data-react-tarea-dtl-cd="t00051">
            <div class="cmplan_imgbx">
                <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202112/2021122912283488126942623694_504.jpg&w=400&h=240&edit=c&t=47a2098c1df3af36aec9805a26cbbb6025f6568e" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202112/2021122912283488126942623694_504.jpg&w=800&h=480&edit=c&t=613af508e5762eb6839ef8eddebe7e7c51750da2 2x" alt="" class="cmplan_img" onerror="this.onerror=null;this.src='//simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/service/@750x452.jpg&w=400&h=240&edit=c'">
            </div>
            <div class="cmplan_detailbx">
                <div class="cmplan_tagarea">
                        <span class="cmplan_tag">#기획전</span>
                    </div>
                <em class="cmplan_tit">TR 쓱배송 상품</em>
                </div>
            </a>

        </div>
<div class="cmplan_unit "
        
         data-react-unit-type="pnshop"
         data-react-unit-id="6000371963"
         data-react-unit-text=""
    >
        <a class="cmplan_link clickable" href="https://www.ssg.com/plan/planShop.ssg?dispCmptId=6000371963" data-react-tarea="메인매장|기획전베스트|기획전_클릭|다이슨 기프트 에디션" data-react-tarea-dtl-cd="t00051">
            <div class="cmplan_imgbx">
                <img src="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202404/2024043008503492329081892908_761.jpg&w=400&h=400&edit=c&t=1288c5556dce53afc8821f8a8467b34bc1ccbdf6" srcset="https://simg.ssgcdn.com/trans.ssg?src=/cmpt/banner/202404/2024043008503492329081892908_761.jpg&w=800&h=800&edit=c&t=1f5079ba02220206da3b734d6aca1364919e50a1 2x" alt="" class="cmplan_img" onerror="this.onerror=null;this.src='//simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/service/@750x452.jpg&w=400&h=400&edit=c'">
            </div>
            <div class="cmplan_detailbx">
                <div class="cmplan_tagarea">
                        <span class="cmplan_tag">#기획전</span>
                    </div>
                <em class="cmplan_tit">다양한 스타일링이 가능한</em>
                </div>
            </a>

        </div>
</div>
                </div>
    </div>
<!-- 광고 기획전 -->
    <div class="cmmain_sec_ad"></div>
    <!-- //광고 기획전-->
    <div class="newmall_area" style="display: none;"></div><div class="newmall_area" style="display: none;"></div><!-- 클립 -->
    <div class="cmmain_sec_myclip" id="main_clipArea" style="display:none"></div>
    <!-- //클립 -->
</div>

<div class="ssgmain_sitemap_sec">
    <h2 class="blind">사이트맵</h2>
<div class="ssgmain_sitemap react-area">
	<dl class="ssgmain_sitemap_list">
		<dt class="ssgmain_sitemap_tit">신세계브랜드</dt>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="https://shinsegaemall.ssg.com">
				신세계몰</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="https://department.ssg.com">
				신세계백화점</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="https://emart.ssg.com">
				이마트몰</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="https://casamia.family.ssg.com">
				까사미아</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="https://starbucks.family.ssg.com">
				STARBUCKS
			</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="https://chicor.family.ssg.com">
				CHICOR</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="https://live.family.ssg.com">
				신세계라이브쇼핑</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="https://triip.ssg.com">
				여행
			</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="https://si.family.ssg.com">
				S.I.VILLAGE</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="https://starfield.ssg.com">
				스타필드</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="https://premiumoutlets.family.ssg.com">
				프리미엄 아울렛</a>
		</dd>
	</dl>
	<dl class="ssgmain_sitemap_list">
		<dt class="ssgmain_sitemap_tit">SSG.COM 서비스매장</dt>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="/service/specialMain.ssg?tabDivCd=obanjang">
				오반장</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="/service/specialMain.ssg?tabDivCd=happy">
				쓱-특가</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="/service/gift/main.ssg">
				선물하기</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="/service/bestMain.ssg">
				베스트</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="/service/newarrival.ssg">
				신상품</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="/event/eventMain.ssg">
				이벤트&쿠폰</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="/plan/index.ssg">
				기획전</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="/special/index.ssg">
				공식스토어</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="/contents/lifeMagazineMain.ssg">
				라이프매거진</a>
		</dd>
		<dd class="ssgmain_sitemap_item notranslate">
			<a class="ssgmain_sitemap_link" href="/service/bizMain.ssg ">
				SSG.COM Biz.
			</a>
		</dd>
	</dl>
	<dl class="ssgmain_sitemap_list">
		<dt class="ssgmain_sitemap_tit">BEST 공식스토어</dt>
		<dd class="ssgmain_sitemap_item"><a href="https://emart.ssg.com/specialStore/nobrand/main.ssg" class="ssgmain_sitemap_link">노브랜드</a></dd>
		<dd class="ssgmain_sitemap_item"><a href="https://emart.ssg.com/specialStore/ssgpeacock/main.ssg" class="ssgmain_sitemap_link">피코크</a></dd>
		<dd class="ssgmain_sitemap_item"><a href="https://shinsegaemall.ssg.com/special/gucci/main.ssg" class="ssgmain_sitemap_link">GUCCI</a></dd>
		<dd class="ssgmain_sitemap_item"><a href="https://department.ssg.com/special/chanelMain.ssg" class="ssgmain_sitemap_link">CHANEL</a></dd>
		<dd class="ssgmain_sitemap_item"><a href="https://jaju.blossom.ssg.com" class="ssgmain_sitemap_link">JAJU</a></dd>
		<dd class="ssgmain_sitemap_item"><a href="https://ralph-lauren.blossom.ssg.com" class="ssgmain_sitemap_link">랄프 로렌</a></dd>
		<dd class="ssgmain_sitemap_item"><a href="https://lululemonkorea.blossom.ssg.com" class="ssgmain_sitemap_link">룰루레몬</a></dd>
		<dd class="ssgmain_sitemap_item"><a href="https://shinsegaemall.ssg.com/specialStore/hm/main.ssg" class="ssgmain_sitemap_link">H&M</a></dd>
		<dd class="ssgmain_sitemap_item"><a href="https://shinsegaemall.ssg.com/specialStore/massimodutti/main.ssg" class="ssgmain_sitemap_link">MASSIMO DUTTI</a></dd>
		<dd class="ssgmain_sitemap_item"><a href="https://apple.blossom.ssg.com" class="ssgmain_sitemap_link">애플</a></dd>
		<dd class="ssgmain_sitemap_item"><a href="https://premiumoutlets.family.ssg.com" class="ssgmain_sitemap_link">프리미엄아울렛</a></dd>
		<dd class="ssgmain_sitemap_item"><a href="https://starbucks.family.ssg.com" class="ssgmain_sitemap_link">스타벅스</a></dd>
		</dl>
	<dl class="ssgmain_sitemap_list">
		<dt class="ssgmain_sitemap_tit">스마트 쇼핑팁</dt>
		<dd class="ssgmain_sitemap_item"><a class="ssgmain_sitemap_link" href="/event/birthdayCpn.ssg">생일쿠폰</a></dd>
		<dd class="ssgmain_sitemap_item"><a class="ssgmain_sitemap_link" href="http://www.shinsegae.com/shinsegaePoint_d/pointInfo/pointSystem.jsp" target="_blank">신세계포인트</a></dd>
		<dd class="ssgmain_sitemap_item"><a class="ssgmain_sitemap_link" href="http://www.shinsegae.com/certificate_d/ticket/ticketInfo.jsp" target="_blank">신세계상품권</a></dd>
		<dd class="ssgmain_sitemap_item"><a class="ssgmain_sitemap_link" href="https://www.ssgpay.com" target="_blank">SSGPAY</a></dd>
	</dl>
	<dl class="ssgmain_sitemap_list">
		<dt class="ssgmain_sitemap_tit">고객센터</dt>
		<dd class="ssgmain_sitemap_item"><a href="/customer/main.ssg" class="ssgmain_sitemap_link clickable" data-react-tarea="푸터메뉴바|푸터메뉴바고객센터|자주찾는질문_클릭">자주 찾는 질문</a></dd>
		<dd class="ssgmain_sitemap_item"><a href="/customer/counselForm.ssg" class="ssgmain_sitemap_link clickable" data-react-tarea="푸터메뉴바|푸터메뉴바고객센터|1:1이메일상담_클릭">1:1 이메일상담</a></dd>
		<dd class="ssgmain_sitemap_item"><a href="/customer/main.ssg" class="ssgmain_sitemap_btn clickable" data-react-tarea="푸터메뉴바|푸터메뉴바고객센터|고객센터메인_클릭">고객센터 메인</a></dd>
	</dl>
	<dl class="ssgmain_sitemap_list">
		<dt class="ssgmain_sitemap_tit">공지사항</dt>
		<dd class="ssgmain_sitemap_item"><a class="ssgmain_sitemap_link" href="/customer/noticeList.ssg?siteNo=6005&bbsId=1&postngId=1215593704&postTeryIdnfNo=6005#1215593704_6005_">UBPAY 결제서비스 종료 안내</a></dd>
		<dd class="ssgmain_sitemap_item"><a class="ssgmain_sitemap_link" href="/customer/noticeList.ssg?siteNo=6005&bbsId=1&postngId=1212330270&postTeryIdnfNo=6005#1212330270_6005_">SSG.COM 사칭 문자 주의 안내</a></dd>
		<dd class="ssgmain_sitemap_item"><a class="ssgmain_sitemap_btn" href="/customer/noticeList.ssg?siteNo=6005">공지사항 더보기</a></dd>
	</dl>
</div>
</div>
<hr/>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/jquery.form.js"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/commonUtil.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/event.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/nevnt.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/common/ssgGnb.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/common/commJs.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/m_ssg/js/ui/mcom.webview.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/common/clipJs.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ui.datepicker.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.common.pluginset.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.common.layout.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.common.component.js?v=20240424"></script>

<script type="text/javascript" src="https://sui.ssgcdn.com/ui/ssg/js/ui/ssg.view.translate.js?v=20240424"></script>
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
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.view.main.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/common/siteoverlay.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/common/ssgStore.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ui.timerManager.js?v=20240424"></script>

<script type="text/javascript">
deferredObj.done(function() {
    window.criteo_q = window.criteo_q || [];
    window.criteo_q.push(
            { event: "setAccount", account: [49618,106273] },
            { event: "setCustomerId", id: settings.UserInfo.mbrLoginId2 },
            { event: "setSiteType", type: "d" },
            { event: "viewHome", mall_type: "ssg"}
    );
});
</script>
<script type="text/javascript">
    n_so_pid(1);
</script>

<script type="text/javascript">
    (function() {
        deferredObj.done(function() {
            if(settings.emergency.DISP_CONTENTS_LIMIT_EMERGENCY != 'Y') {
                //getMainLayerPopup();

                if (UserInfo.isLoginYn == 'Y') {
                    getClipContents();
                }
            }
        });

        var dealItemsSection = $('.cmmain_sec_deal');
        if (dealItemsSection.length > 0) {
            var $activeButton = $('.cmmain_sec_deal .cmmain_tablist > li.on > button');
            $activeButton.trigger('click');
        }

        ajaxGetPnshopContents(0);
        getSsgDayContents(); // 2023 쓱데이 컨텐츠 조회

        getAjaxArea('ajaxMainMemberShipBanner');
        getAjaxArea('ajaxMainMemberShipItem', setMemberShipItem);
    })();

    /*메인 팝업창 스크립트 시작*/
    mainTodayClose = function (closeId) {
        $.cookie('popup_' + closeId,'Y',{expires:1,path:'/'});
        $("#popup_" + closeId).hide();
    };

    mainPopupClose = function (closeId) {
        $("#popup_" + closeId).hide();
    };

    getCookieMain = function (name){
        var nameOfCookie = name + "=";
        var x = 0;
        while ( x <= document.cookie.length ){
            var y = (x+nameOfCookie.length);
            if ( document.cookie.substring( x, y ) == nameOfCookie ) {
                if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
                    endOfCookie = document.cookie.length;
                return unescape( document.cookie.substring( y, endOfCookie ) );
            }
            x = document.cookie.indexOf( " ", x ) + 1;
            if ( x == 0 )
                break;
        }
        return "";
    }

    function setMemberShipItem(html){

        $('#ajaxMainMemberShipItem').html(html).show();
        $(".common_mmbrs_slider .cunit_thmb_lst").find(">li").find("img").attr("loading", "auto");

        if(ssg.util.hasElement('#common_mmbrs_slider')){
            var oSsgViewSmileClubSlider = new ssg.View.main.smileClubSlider();
            oSsgViewSmileClubSlider.on('smileClubSlider.dataUpdate', function() {

               var page = parseInt($("#common_mmbrs_slider .cunit_thmb_lst li:last-child").attr("curPage")) +1;

                // ##### 경로 수정 #####
                $.ajax({
                    url: '/mainNew/ajaxMainMemberShipItemListPage.ssg?page=' + page,
                    method: 'GET',
                    dataType: 'html'
                }).done(function (data) {
                    // ul안에 상품 리스트 append
                    document.querySelector("#common_mmbrs_slider .cunit_thmb_lst").insertAdjacentHTML("beforeend", data);
                    oSsgViewSmileClubSlider.updateSlider();  // 슬라이드 리로드
                });
            });
        }

    }

    // 비동기 호출 공통 함수
    function getAjaxArea(areaId, callback, sliderData, page) {

        if($('#' + areaId).length === 0 && typeof callback != 'function') {
            return;
        }

        if (areaId === "ajaxMainMemberShipBanner"){
            _url = '/mainNew/ajaxMainMemberShipBanner.ssg';
            $.ajax({
                type : 'GET',
                url : _url,
                dataType : 'html',
                success:function(data) {
                    $('#ajaxMainMemberShipBanner').html(data).show();
                }
            });
        }

        var _url = '';
        if(areaId === "ajaxMainMemberShipItem"){
            _url = '/mainNew/ajaxMainMemberShipItem.ssg';
        }else{
            return;
        }

        $.ajax({
            type : 'GET',
            url : _url,
            dataType : 'html',
            success:function(data) {
                callback(data, sliderData);
            }
        });

    }

    //레이어 팝업 조회
    function getMainLayerPopup() {
        
        var url = '/main/ajaxLayerPopup.ssg';
        
        $.ajax({
            type : "GET",
            url : url,
            dataType : "html",
            success:function(html) {
                var $tempDiv = $('<div/>').html(html);
                // 긴급공지 팝업 노출 결정
                $tempDiv.find('.cmnotipop').each(function(idx, data) {
                    var popupId = $(data).attr('id');

                    if (getCookieMain(popupId) != "Y") {
                        $("#cmmain_notipop_inr_div").append(data);
                    }
                });
                // 레이어 팝업 노출 결정
                $tempDiv.find('.notice_lpop').each(function(idx, data) {
                    var popupId = $(data).attr('id');

                    if (getCookieMain(popupId) != "Y") {
                        $("#cmmain_notipop_inr_div").append(data);
                    }
                });

            }
        });
    }
    /*메인 팝업창 스크립트 종료*/

    function hideTab(className) {
        $("." + className + " [role='tabpanel']").html("");
        $("." + className + " [role='tabpanel']").addClass("js_loading_data");
    }

    function ajaxGetDealItemList(e) {
        var dealType = $(e).data("dealType");
        $(e).parent().siblings().removeClass("on");
        $(".cmmain_sec_deal [data-deal-type='" + dealType + "']").parent().addClass("on");
        hideTab("cmmain_sec_deal");

        $.ajax({
            url: "/mainNew/ajaxGetDealItemList.ssg",
            method: "GET",
            data: {
                "dealType": dealType
            },
            dataType: "html",
            success: function(data) {
                $(".cmmain_sec_deal [role='tabpanel']").removeClass("js_loading_data");
                $(".cmmain_sec_deal [role='tabpanel']").html(data);

                var $section = $('.cmmain_sec_deal');
                var $adItems = $section.find('.gate_unit');
                ssg_ad.callImp('item_list', $adItems);
            }
        });
    };

    function ajaxGetPnshopContents(page, advertYn) {
        $(".cmmain_sec_ad:last .cmmain_loading").show();
        $(".cmmain_sec_ad:last .cmmain_more").hide();

        $.ajax({
            url: "/mainNew/ajaxPnshopContents.ssg",
            method: "GET",
            dataType: "html",
            data: {
                "page": page,
                "advertYn": advertYn
            },
            success: function(data, status, xhr) {
                $(".cmmain_sec_ad:last .cmmain_loading").hide();
                if (page == 0) {
                    $('.cmmain_sec_ad').html(data);
                } else {
                    $('.cmmain_sec_ad:last').after(data);
                }

                // 광고 기획전 PV(PageView) 호출
                var $section = $('.cmmain_sec_ad');
                var $adItems = $section.find('.gate_unit');
                ssg_ad.callImp('banr', $adItems);

                Clip.readyClipBtn();
            }
        });
    };

    function getClipContents() {
        $.ajax({
            url: "/mainNew/ajaxClipContents.ssg",
            method: "GET",
            dataType: "html"
        }).done(function(data) {
            $('#main_clipArea').append(data).show();
        });
    };

    function getSsgDayContents() {
        $.ajax({
            url: "/mainNew/ajaxSsgDayContents.ssg",
            method: "GET",
            dataType: "html"
        }).done(function(data) {
            $('#main_ssgday').replaceWith(data).show();
        });
    };

</script>

<script>
    $(document).ready(function () {
        var $welTabMenu = $('#category-best .cmmain_tablist > li.on > .cmmain_tab');
        var $welTabContent = $('#category-best .cmmain_tabcont > .cmmain_tabpanel.on');
        categoryBestService.changeTab($welTabMenu, $welTabContent);

        var oSsgViewMainTabmenu = new ssg.View.main.tabMenu();

        oSsgViewMainTabmenu.on('clickTabmenu.popular', function(welTabMenu, welTabContent) {
            var $welTabMenu = $(welTabMenu);
            var $welTabContent = $(welTabContent);
            categoryBestService.changeTab($welTabMenu, $welTabContent);
        });
    });

    var categoryBestService = {
        changeTab: function ($welTabMenu, $welTabContent) {
            $welTabContent.empty();
            $welTabContent.addClass('js_loading_data');
            var cornerSetId = $welTabMenu.attr('data-corner-set-id');
            this.getItems(cornerSetId, $welTabContent);
        },

        getItems: function (cornerSetId, $welTabContent) {
            $.ajax({
                type: "GET",
                url: "/main/categoryBest/categoryBestItems.ssg",
                data: {
                    "cornerSetId": cornerSetId
                },
                dataType: "html",
                success: function (data) {
                    var html = $.parseHTML(data);

                    $welTabContent.removeClass('js_loading_data');
                    $welTabContent.append(html);

                    Clip.readyClipBtn();
                }
            });
        }
    }
</script><script>
    $(document).ready(function () {

        var oSsgViewMainTabmenu = new ssg.View.main.tabMenu();

        oSsgViewMainTabmenu.on('clickTabmenu.brandstore', function(welTabMenu, welTabContent) {
            setTimeout(() => {
                welTabContent.removeClass('js_loading_data');
            }, 1000);
            Clip.readyClipBtn();
        });
    });
</script><script>
    $(document).ready(function () {
        horizontalBannerService.callAdPageView();
    });

    const horizontalBannerService = {
        callAdPageView: function () {
            const $horizontalBanners = $('#horizontal-banner [data-areaid="quick_banr"]');
            $horizontalBanners.each(function () {
                ssg_ad.callImp('quick_banr', $(this));
            });
        }
    }
</script><script>
    $(document).ready(function () {
        var oSsgViewMainTabmenu = new ssg.View.main.tabMenu();

        oSsgViewMainTabmenu.on('clickTabmenu.gift', function (welTabMenu, welTabContent) {
            var $welTabMenu = $(welTabMenu);
            var $welTabContent = $(welTabContent);
            mainGiftThemeService.getItems($welTabMenu, $welTabContent);
        });

        var $section = $('.cmmain_sec_gift');
        var $activeTab = $section.find('.cmmain_tablist > li:first-child > button');
        var $activePanel = $section.find('.cmmain_tabcont > div:first-child');
        mainGiftThemeService.getItems($activeTab, $activePanel);
    });

    var mainGiftThemeService = {
        getItems: function ($welTabMenu, $welTabContent) {
            var options = $welTabMenu.data('options');

            $.ajax({
                type: "GET",
                url: "/main/gift-theme/items.ssg",
                data: options,
                dataType: "html",
                success: function (data) {
                    var html = $.parseHTML(data);
                    $welTabContent.append(html);
                    $welTabContent.removeClass('js_loading_data');
                }
            });
        }
    }
</script><script>
    $(document).ready(function () {
        var $welTabMenu = $('#main-ranking .cmmain_tablist > li.on > .cmmain_tab');
        var $welTabContent = $('#main-ranking .cmmain_tabcont > .cmmain_tabpanel.on');
        mainRankingService.changeTab($welTabMenu, $welTabContent);

        var oSsgViewMainTabmenu = new ssg.View.main.tabMenu();

        oSsgViewMainTabmenu.on('clickTabmenu.ranking', function(welTabMenu, welTabContent) {
            var $welTabMenu = $(welTabMenu);
            var $welTabContent = $(welTabContent);
            mainRankingService.changeTab($welTabMenu, $welTabContent);
        });
    });

    var mainRankingService = {
        changeTab: function ($welTabMenu, $welTabContent) {
            $welTabContent.empty();
            $welTabContent.addClass('js_loading_data');

            var cornerId = $welTabMenu.attr('data-corner-id');
            var displayCategoryId = $welTabMenu.attr('data-display-category-id');
            if (cornerId && displayCategoryId) {
                this.getItems(cornerId, displayCategoryId, $welTabContent);
            } else {
                this.getRealTimeBestItems($welTabContent);
            }
        },

        getItems: function (cornerId, displayCategoryId, $welTabContent) {
            $.ajax({
                type: "GET",
                url: "/main/mainRanking/mainRankingItems.ssg",
                data: {
                    "cornerId": cornerId,
                    "displayCategoryId": displayCategoryId
                },
                dataType: "html",
                success: function (data) {
                    var html = $.parseHTML(data);

                    $welTabContent.removeClass('js_loading_data');
                    $welTabContent.append(html);

                    Clip.readyClipBtn();
                }
            });
        },

        getRealTimeBestItems: function ($welTabContent) {
            $.ajax({
                url: '/main/mainRanking/realTimeBestItems.ssg' + location.search,
                method: 'GET',
                dataType: 'html',
                success: function (data) {
                    var html = $.parseHTML(data);

                    $welTabContent.removeClass('js_loading_data');
                    $welTabContent.append(html);

                    ssg.View.main.ranking.prototype.init();

                    Clip.readyClipBtn();
                }
            });
        }
    }
</script><script>
    $(document).ready(function () {
        var $welTabMenu = $('#special-shop .cmmain_tablist > li.on > .cmmain_tab');
        var $welTabContent = $('#special-shop .cmmain_tabcont > .cmmain_tabpanel.on');
        newSpecialShopService.changeTab($welTabMenu, $welTabContent);

        var oSsgViewMainTabmenu = new ssg.View.main.tabMenu();

        oSsgViewMainTabmenu.on('clickTabmenu.official_brand', function(welTabMenu, welTabContent) {
            var $welTabMenu = $(welTabMenu);
            var $welTabContent = $(welTabContent);
            newSpecialShopService.changeTab($welTabMenu, $welTabContent);
        });
    });

    var newSpecialShopService = {
        changeTab: function ($welTabMenu, $welTabContent) {
            $welTabContent.empty();
            $welTabContent.addClass('js_loading_data');
            var spcShopDispTypeCd = $welTabMenu.attr('data-spcshop-disptype-cd');
            this.getSpecialShops(spcShopDispTypeCd, $welTabContent);
        },

        getSpecialShops: function (spcShopDispTypeCd, $welTabContent) {
            $.ajax({
                type: "GET",
                url: "/main/newSpecialShop/newSpecialShops.ssg",
                data: {
                    "spcShopDispTypeCd": spcShopDispTypeCd
                },
                dataType: "html",
                success: function (data) {
                    var html = $.parseHTML(data);

                    $welTabContent.removeClass('js_loading_data');
                    $welTabContent.append(html);

                    Clip.readyClipBtn();
                }
            });
        }
    }
</script><script>
    (function() {
        var $wrappers = $(".newmall_area");
        var ajaxNewMallContents = { state: function() {} };

        var ajaxMore = function() {
            if('pending' === ajaxNewMallContents.state()) {
                return;
            }
            fetch().done(render);
        }

        var fetch = function() {
            ajaxNewMallContents = $.ajax({
                url: '/mainNew/ajaxNewMallContents.ssg',
                method: 'GET',
                dataType: 'html'
            });
            return ajaxNewMallContents;
        }

        var render = function(data) {
            var $newmalls = $($.parseHTML(data)).filter("div");
            var lastIndex = $wrappers.length - 1;
            $newmalls.each(function(index, newmall) {
                if (index > lastIndex) {
                    index = lastIndex;
                }
                $wrappers.eq(index).append($(newmall)).show();

                $(".cmmain_cunit_slider>ul").filter(function() {
                    return $(this).find(">li").length > 1
                }).bxSlider({
                    infiniteLoop: false,
                    hideControlOnEnd: true,
                    adaptiveHeight: true,
                    responsive: false,
                    pager: false,
                    prevText: '<span class="blind">이전 목록보기</span>',
                    nextText: '<span class="blind">다음 목록보기</span>',
                    onSliderLoad: function r() {
                        $(".cmmain_cunit_slider .bx-controls-direction").attr("data-react-unit-type","text");
                        $(".cmmain_cunit_slider .bx-controls-direction").attr("data-react-unit-id","");
                        $(".cmmain_cunit_slider .bx-controls-direction").attr("data-react-unit-text",'[{"type":"tarea_addt_val","value":"null"}]');

                        $(".cmmain_cunit_slider .bx-controls-direction a").attr("tabIndex", "-1");
                        $(".cmmain_cunit_slider .bx-controls-direction a").addClass("clickable");
                        $(".cmmain_cunit_slider .bx-controls-direction a").attr("data-react-tarea-dtl-cd", "t00060");
                        $(".cmmain_cunit_slider>ul>li").prop("tabIndex", "-1")
                    }
                })
            });
        };

        $(function() {
            ajaxMore();
        });
    }());
</script><script>
    $(document).ready(function () {
        var $mondayMoonSection = $('#mondayMoon');
        if ($mondayMoonSection) {
            mondayMoonService.getItems($mondayMoonSection);
        }
    });

    var mondayMoonService = {
        getItems: function getMondayMoonData($mondayMoonSection) {
            $.ajax({
                url: "/mainNew/ajaxMondayMoon.ssg" + location.search,
                method: "GET",
                dataType: "html",
                success: function (data) {
                    $mondayMoonSection.html(data);
                    Clip.readyClipBtn();
                }
            });
        }
    }
</script><iframe src="https://asia.creativecdn.com/tags?id=pr_0eprxmL3KSJIVYpHgQkK_home&amp;id=pr_0eprxmL3KSJIVYpHgQkK_custom_site_ssg" width="1" height="1" scrolling="no" frameBorder="0" style="display: none;"></iframe>



</div>

    <section id="floating" class="ssg_floating react-area">
    <ul class="ssg_floating_nav" data-react-tarea-cd="00042_000000454">
        <li >
            <div class="floating_delivery ssgcar_swiper">
                <div class="swiper-container">
                    <ul class="swiper-wrapper" id="deliveryTimeTable">
                    </ul>
                </div>
                <div class="swiper-ctrls">
                    <div class="ssgcar_swiper_ctrls">
                        <button type="button" class="ssgcar_ctrl_btn ssgcar_ctrl_prev">
                            <i class="icon ty_xs icon_chevron_left"><span class="blind">이전 배너 보기</span></i>
                        </button>
                        <button type="button" class="ssgcar_ctrl_btn ssgcar_ctrl_auto pause">
                            <i class="icon ty_xs icon_caret_up"><span class="blind">배너 자동재생 하기</span></i>
                            <i class="icon ty_xs icon_pause"><span class="blind">배너 자동재생 멈추기</span></i>
                        </button>
                        <button type="button" class="ssgcar_ctrl_btn ssgcar_ctrl_next">
                            <i class="icon ty_xs icon_chevron_right"><span class="blind">다음 배너 보기</span></i>
                        </button>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <div class="floating_card ssgcard_swiper">
                <div class="swiper-container">
                    <ul class="swiper-wrapper">
                        <li class="swiper-slide">
                                <div class="ssgcard_item ty_card_bi08">
                                    <a href="https://event.ssg.com/eventDetail.ssg?nevntId=1000000013188" class="ssgcard_item_link">
                                        <div class="ssgcard_img">
                                            <img src="https://sui.ssgcdn.com/ui/ssg/img/common/card/card_bi08.svg" alt="현대카드" loading="lazy">
                                        </div>
                                        <div class="ssgcard_info">
                                            <span class="ssgcard_name">현대카드</span>
                                            <span class="ssgcard_rate">SSGPAY</span>
                                            <span class="ssgcard_discount">7% 청구할인</span>
                                        </div>
                                    </a>
                                </div>
                            </li>
                        <li class="swiper-slide">
                                <div class="ssgcard_item ty_card_bi02">
                                    <a href="https://event.ssg.com/eventDetail.ssg?nevntId=1000000013186" class="ssgcard_item_link">
                                        <div class="ssgcard_img">
                                            <img src="https://sui.ssgcdn.com/ui/ssg/img/common/card/card_bi02.svg" alt="KB국민카드" loading="lazy">
                                        </div>
                                        <div class="ssgcard_info">
                                            <span class="ssgcard_name">KB국민카드</span>
                                            <span class="ssgcard_rate">뷰티쓱세일</span>
                                            <span class="ssgcard_discount">8% 청구할인</span>
                                        </div>
                                    </a>
                                </div>
                            </li>
                        </ul>
                </div>
                <div class="swiper-ctrls">
                    <div class="ssgcard_swiper_ctrls">
                        <button type="button" class="swiper-ctrls-btn swiper-btn-prev">
                            <i class="icon ty_xs icon_chevron_left"><span class="blind">이전 배너 보기</span></i>
                        </button>
                        <button type="button" class="swiper-ctrls-btn swiper-btn-auto pause">
                            <i class="icon ty_xs icon_caret_up"><span class="blind">배너 자동재생 하기</span></i>
                            <i class="icon ty_xs icon_pause"><span class="blind">배너 자동재생 멈추기</span></i>
                        </button>
                        <button type="button" class="swiper-ctrls-btn swiper-btn-next">
                            <i class="icon ty_xs icon_chevron_right"><span class="blind">다음 배너 보기</span></i>
                        </button>
                    </div>
                </div>
            </div>
        </li>
        <li id="sky_ssgtalk">
            <div class="floating_talk cmfloating_btncsbot" id="span_ssgCs" data-react-unit-type="text" data-react-unit-text='[{"type":"tarea_addt_val","value":"고객센터"}]'>
                <a href="javascript:void(0);" class="btn_talk ty_csbot clickable" ata-react-tarea="공통|플로팅|고객센터" data-react-tarea-dtl-cd="t00060">
                    <span class="blind">고객센터톡</span>
                    <i class="icon icon_talk" aria-hidden="true"></i>
                    <span class="cmnoti_push">
                        <span class="blind">새 메세지 수</span>
                        <span class="cmnoti_num">0</span>
                    </span>
                </a>
            </div>
        </li>
        <li>
            <div class="floating_top">
                <button type="button" class="floating_top_btn js_move_top">
                    <span class="blind">최상단으로 이동</span>
                    <i class="icon ty_sm icon_arrow_top" aria-hidden="true"></i>
                </button>
            </div>
        </li>
    </ul>
</section>


<script type="text/javascript">
    var talkNavigator = {
        goSellerTalk: function (sellerhomeId, isMobile) {
            var reqSellerhomeId = (sellerhomeId && sellerhomeId != 'null' && sellerhomeId != 'undefined') ? $.trim(sellerhomeId) : '';
            var appFuncNo = $.cookie("APP_FUNC_NO");

            var url;
            if ('false' == 'true'
                    && ('' === '1' || '' === '6')
                    && (appFuncNo && Number(appFuncNo) < 39) // 쓱톡웹전환
            ) {
                url = reqSellerhomeId ? "://ssgtalk/sellertalk?sellerhomeId=B" + reqSellerhomeId : "://ssgtalk/opentab/seller";
            } else {
                var dvicDivCd = (isMobile ?? settings.isMobile) ? '20' : '10';
                url = 'https://talk.ssg.com/webchat?gateType=seller&sellerhomeId=' + reqSellerhomeId + '&siteNo=' + settings.curr_siteno + '&dvicDivCd=' + dvicDivCd;
            }

            talkNavigator._go(url, isMobile);
        },
        goCsTalk: function (isMobile) {
            var appFuncNo = $.cookie("APP_FUNC_NO");

            var url;
            if ('false' == 'true'
                    && ('' === '1' || '' === '6')
                    && (appFuncNo && Number(appFuncNo) < 39) // 쓱톡웹전환
            ) {
                url = "://status/open_csbot_chat";
            } else {
                url = 'https://talk.ssg.com/webchat/?gateType=cs&siteNo=' + settings.curr_siteno;
            }

            talkNavigator._go(url, isMobile);
        },
        goCartShareTalk: function (channelUrl, isMobile) {
            var appFuncNo = $.cookie("APP_FUNC_NO");

            var url;
            if ('false' == 'true'
                    && "" == '1'
                    && (appFuncNo && Number(appFuncNo) < 39) // 쓱톡웹전환
            ) {
                url = "://status/open_sharedCart_chat?channelUrl=" + channelUrl;
            } else {
                var dvicDivCd = (isMobile ?? settings.isMobile) ? '20' : '10';
                url = 'https://talk.ssg.com/webchat?gateType=cartShare&channelUrl=' + channelUrl + '&siteNo=' + settings.curr_siteno + '&dvicDivCd=' + dvicDivCd;
            }

            talkNavigator._go(url, isMobile);
        },
        _go: function (url, isMobile) {
            url = url.replace('https:', 'http:');
            var _isMobile = isMobile ?? settings.isMobile;
            if (_isMobile) {
                
                mobileLogin('', url);
                
            } else {
                
                login('', function () {
                    var newWindow = window.open(url, 'SSGTALK_WEB', 'width=740,height=750,resizable=yes');
                    if (newWindow && window.focus) {
                        setTimeout(function () {
                            newWindow.focus();
                        }, 100);
                    }
                    setTimeout(function () {
                        location.reload(true);
                    }, 1000);
                });
                
            }
        }
    };

    var talkApiClient = {
        _processingUrls: [],
        _defaultSettings: {
            contentType: 'application/json;charset=UTF-8'
        },
        execute: function (paramSettings) {

            var beforeSendFunc = paramSettings.beforeSend;
            var successFunc = paramSettings.success;
            var errorFunc = paramSettings.error;
            var completeFunc = paramSettings.complete;

            var superSettings = {
                xhrFields: {
                    withCredentials: true
                },
                beforeSend: function (xhr) {
                    if ($.inArray(paramSettings.url, talkApiClient._processingUrls) >= 0) {
                        xhr.abort();
                    } else {
                        talkApiClient._processingUrls.push(paramSettings.url);
                        if (beforeSendFunc) {
                            beforeSendFunc(xhr);
                        }
                    }
                },
                success: function (response, textStatus, jqXHR) {
                    if (!response.code || response.code != '200') {
                        if (window.console && typeof window.console.error === 'function') {
                            window.console.error('talkApiClient - ' + response.message ? response.message : textStatus);
                        }
                    } else {
                        if (successFunc) {
                            successFunc(response, textStatus, jqXHR);
                        }
                    }
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    if (window.console && typeof window.console.error === 'function') {
                        window.console.error('Talk API error : ' + textStatus + '(' + jqXHR.status + ')');
                    }
                    if (errorFunc) {
                        errorFunc(jqXHR, textStatus, errorThrown);
                    }
                },
                complete: function (jqXHR, textStatus) {
                    var index = $.inArray(paramSettings.url, talkApiClient._processingUrls);
                    if (index >= 0) {
                        talkApiClient._processingUrls.splice(index, 1);
                    }
                    if (completeFunc) {
                        completeFunc(jqXHR, textStatus);
                    }
                }
            };

            var ajaxSettings = $.extend({}, talkApiClient._defaultSettings, paramSettings, superSettings);
            $.ajax(ajaxSettings);
        }
    };
</script>
<script type="text/javascript">
    $(function() {
        if ($('#sky_ssgtalk').size() > 0 && skyTalkHandler) {
            skyTalkHandler.init();
        }
    });

    var skyTalkHandler = {
        timer: null,
        init: function() {
            $('#span_ssgCs .btn_talk').on('click', function() {
                talkNavigator.goCsTalk();
            }); 

            
        },
        _getBotChannelsOnLastMessage: function() {
            var passUnreadMessageCnt = settings && settings.emergency && settings.emergency.SSGTALK_PASS_UNREAD_COUNT == 'Y'; /* EMERGENCY!! */

            if(!passUnreadMessageCnt){
                talkApiClient.execute({
                    url: '/talkapi/users/bots/last-message-channels',
                    success: function(response, textStatus, jqXHR) {

                        if(response.detailCode) {
                            switch(response.detailCode) {
                                case '7000':
                                case '400201':
                                case '808':
                                    if(skyTalkHandler.timer) {
                                        clearInterval(skyTalkHandler.timer);
                                        skyTalkHandler.timer = null;
                           	         }
                                    return;
                            }
                        }

                        var botTypes = ['ssgCs'];
                        $.each(botTypes, function(i, botType) {

                            if (response.data && response.data[botType] && response.data[botType].unread_message_count > 0) {
                                var $spanBot = $('#span_' + botType);
                                $spanBot.find('.cmnoti_num').html(response.data[botType].unread_message_count);

                            }
                        });
                    }
                });
            }
        },
        
        createItemSellerTalk: function(sellerhomeId, itemImgUrl, singleTarget) {
            //do nothing
        }
    };
    
<%@ include file="footer.jsp" %>