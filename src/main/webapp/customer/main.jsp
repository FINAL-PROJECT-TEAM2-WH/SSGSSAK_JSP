<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html> 
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="shortcut icon" type="image/x-icon" href="//sui.ssgcdn.com/ui/common/img/ssg.ico">
    <link rel="image_src" href="//sui.ssgcdn.com/ui/common/img/sns/ssg.png"  />
    <title class="notranslate">고객센터, 믿고 사는 즐거움 SSG.COM</title>
    <meta name="title" content="고객센터, 믿고 사는 즐거움 SSG.COM" />
    <meta name="description" content="고객센터, 믿고 사는 즐거움 SSG.COM" />
    <meta name="google-site-verification" content="riDJ-IX46HanskLx25pj6-y8ANf2qTgZNfv_UJvkHq8" />
    <meta name="facebook-domain-verification" content="ctgl43lmqq8gm4thxgg7j3b38sfqau" />
    <link rel="preload" href="//sui.ssgcdn.com/ui/ssg/css/ssg_global.css?v=20240424" as="style" />
<link rel="preload" href="//sui.ssgcdn.com/ui/ssg/css/ssg_layout.css?v=20240424" as="style" />
<link rel="preload" href="//sui.ssgcdn.com/ui/ssg/css/ssg_component.css?v=20240424" as="style" />
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssg_global.css?v=20240424" />
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssg_layout.css?v=20240424" />
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/scom.css?v=20240424"/>
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssg_component.css?v=20240424"/>

<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/com_component.css?v=20240424" />
<link rel="stylesheet" type="text/css" href="https://sui.ssgcdn.com/ui/m_ssg/css/ssg_component.css?v=20240424" />
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssgday_2023.css?v=20240424" />



<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/cs.css?v=20240424" />
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
<%@include file="../Top.jsp" %>
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
                    if('' == 'main'){
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

    <div id="container" >
        
























<div class="ccs_header v2">
	<div class="ccs_srcharea">
        <h2 class="ccs_title">
	        <a href="/customer/main.ssg" class="clickable">
	                <!-- [D] 텍스트로 span 안에 해당 몰 이름 추가 -->
	                <span class="blind">SSG.COM</span>
	                고객센터
	        </a>
        </h2>
        <div class="ccs_hotline">
                <h4 class="blind">전화상담 현황</h4>
                <!-- [D] 원활/보통/지연/OFF 상태 -->
                <!-- <div class="ccs_level ty_good">
                        <span class="ccs_level_txt">전화상담 원활</span>
                </div>
                <div class="ccs_level ty_normal">
                        <span class="ccs_level_txt">전화상담 보통</span>
                </div>
                <div class="ccs_level ty_bad">
                        <span class="ccs_level_txt">전화상담 지연</span>
                </div>
                <div class="ccs_level ty_off">
                        <span class="ccs_level_txt">전화상담 OFF</span>
                </div> -->
        </div>
		<div class="ccs_srch">
			<form name="searchFrm" action="/customer/faqKeywordList.ssg" method="get">
				<div class="ccs_srchform">
					<label for="cs_srch" class="blind">검색어 입력<!-- 검색어 입력 --></label>
					<input type="text" class="ccs_srchform_txt" id="cs_srch" value="" placeholder="궁금하신 내용을 입력해주세요." autocomplete="off">
					<button type="button" class="ccs_srchform_btn clickable" onclick="fnFaqSearch()"><span class="ccs_sp_ico"><span class="blind">검색</span></span></button>
				</div>
			</form>
			<!-- [D] 검색어 자동완성 -->
			<div id="faqSearchDiv" class="auto_word ccs_auto_word" style="display:none;">
                <div class="word_list" id="mall-word_list">

					<ul id="ssg-auto-list">
					</ul>
				</div>
			</div>
		</div>
	</div>
	<ul class="ccs_keyword" data-react-tarea-cd="00232_000000522">
		<!-- 대표 키워드 -->
	</ul>

	<ul class="ccs_mtm v2" data-react-tarea-cd="00232_000000912">
		<li><a href="javascript:answerConfirmE();" onclick="ssg_react_v2.direct_call(this);" class="clickable" data-react-tarea-dtl-cd="t00060" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'E-mail상담'}]">E-mail 상담</a></li>
		<li><a href="javascript:answerConfirm();" onclick="ssg_react_v2.direct_call(this);" class="clickable" data-react-tarea-dtl-cd="t00060" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'답변확인'}]">답변확인</a></li>
		<li class="cs_talk" data-react-tarea-cd="00232_000000912">
			<a href="javascript:void(0);" onclick="ssg_react_v2.direct_call(this);" class="cmfooter_corp_btn clickable _cstalk_open_pc" title="새창 열림" data-react-tarea-dtl-cd="t00060" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'고객센터톡'}]">고객센터톡</a>
		</li>
	</ul>
</div>

<!-- modal : 체류팝업 -->
<div id="ccs_stay_help" class="ssg-layer-popup ccs_lypop ccs_stay_help v2">
	<div class="ccs_lypop_header">
		<h1 class="ccs_lypop_tit">도움이 필요하세요?</h1>
	</div>
	<div class="ccs_lypop_container">
		<div class="ccs_lypop_cont">
			<p class="tx_help">고객님! 원하는 문의사항이 없으신가요?<br>도움이 더 필요하시면 <span class="tx_underline">E-mail상담</span>을 통해 문의해주세요.<br>정성을 다하는 SSG.COM이 되겠습니다.</p>
		</div>
		<div class="ccs_btnarea" data-react-tarea-cd="00232_000000888">
			<a href="javascript:void(0); onclick=gotoCounselForm();ssg_react_v2.direct_call(this);" class="ccs_btn clickable" data-react-tarea-dtl-cd="t00060" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'팝업'}]">문의하기</a>
		</div>
	</div>
	<button type="button" class="btn_stay_clse"><span><span class="blind">닫기</span></span></button>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        repKeyWord();
        counselStatus();
        document.getElementById('cs_srch').addEventListener('keydown', faqKeyEventHandler, false);
      //체류팝업 보기
        oHelpNoti = oHelpSetTime();
      
    });

    function oHelpSetTime(){
    	return 	setTimeout(function(){
                	oHelpNotification.show();
        		}, 180000);
    }
    
    var selectedItemIdx = -1;
    var browserType = 0; //일반
    if(navigator.userAgent.search('Firefox') > -1){
    	browserType = 1; //FF
    }
	var faqKeyEventHandler = function(event){
			var k = -1;
			/* NOT FF */
	        if (browserType == 0) {
	            k = event.keyCode;
	        }
	        /* FF */
	        else{ 
	            k = event.which;
	        }
	        /* 13 enter, 38 up, 40 down */
	        if(k == '13' || k == '38' || k == '40'){
	        	if(k=='13'){
	        		event.stopPropagation();
	        		event.preventDefault();
	        		var q = document.getElementById('cs_srch').value;
					if(q.trim() != ''){
						//Faq검색
						funcPageLocate(q);
					}else{
						alert('검색어를 입력해주세요.');
					}
	        		return false;
	            }else if(k=='38'){
	            		var idx = selectedItemIdx;
	            		var li = document.getElementById('ssg-auto-list').childNodes;
						if(idx>0){
							idx--;
						}else if(idx==0){
							idx = li.length-1;
						}
						if(li && li.length > idx){
	            			for(var i=0;i<li.length;i++){
	            				if(i == idx){
	            					li[i].setAttribute('class', 'on');
	            					var title = li[i].childNodes[0].innerText;
	            					document.getElementById('cs_srch').value = title;
	            				}else{
	            					li[i].setAttribute('class', '');
	            				}
	            			}
	            		}
						selectedItemIdx = idx;
	            }else if(k=='40'){
	            		var idx = selectedItemIdx;
	            		var li = document.getElementById('ssg-auto-list').childNodes;
						if(idx<li.length-1){
							idx++;
						}else{
							idx = 0;
						}
	            		if(li && li.length > idx){
	            			for(var i=0;i<li.length;i++){
	            				if(i == idx){
	            					li[i].setAttribute('class', 'on');
	            					var title = li[i].childNodes[0].innerText;
	            					document.getElementById('cs_srch').value = title;
	            				}else{
	            					li[i].setAttribute('class', '');
	            				}
	            			}
	            		}
	            		selectedItemIdx = idx;
	            }
	        }
	};

	var fnFaqSearch = function(){
		var q = document.getElementById('cs_srch').value;

		if(q.trim() == ''){
			alert('검색어를 입력해주세요.');
			return;
		}else{
			funcPageLocate(q);
		}
	};
	
    function popupArs() {
        popupWin('/customer/popup/popupArs.ssg', '', 640, 750, 'yes', 'no');
    }
    
    function gotoCounselForm() {
    	if ("N" == "N") {
    		var retUrl = 'https://www.ssg.com'+"/customer/counselForm.ssg";
    		location.href = 'https://member.ssg.com/member/login.ssg?retURL=' + escape(retUrl);
    	} else {
    		location.href = "/customer/counselForm.ssg?place=stayhelp";
    	}
    }
    
    function repKeyWord() {
        $.ajax({
            url: '/customer/repKeyWord.ssg',
            type: 'get',
            dataType : "json"
        }).done(function (repKeyWordList) {
            var htmlArr = [];

            if (repKeyWordList.length) {
                for (var i = 0; i < repKeyWordList.length; i++) {
                    var e = repKeyWordList[i];
                   htmlArr.push('<li><a href="/customer/faqKeywordList.ssg?keyword=' + encodeURI(e.cnslClsNm) + '" onclick="ssg_react_v2.direct_call(this);" class="clickable" data-react-tarea-dtl-cd="t00060" data-react-unit-type="text" data-react-unit-text="[{\'type\':\'text\',\'value\':\'' + e.cnslClsNm + '\'}]">'+e.cnslClsNm+'</a></li>');
				}

                $('.ccs_keyword').html(htmlArr.join(''));
            }
        }).fail(function () {
        });
    }

    function answerConfirm() {
        if ("N" == "N") {
        	var retUrl = 'https://www.ssg.com'+"/myssg/activityMng/counselList.ssg";
            location.href = 'https://member.ssg.com/member/login.ssg?retURL=' + escape(retUrl);
        } else {
            location.href = "/myssg/activityMng/counselList.ssg";
        }
    }
    
    function answerConfirmE() {
    	if ("N" == "N") {
    		var retUrl = 'https://www.ssg.com'+"/customer/counselForm.ssg";
    		location.href = 'https://member.ssg.com/member/login.ssg?retURL=' + escape(retUrl);
    	}else{
    		location.href = "/customer/counselForm.ssg";
    	}
    }
    
    

    function counselStatus() {
        var counselStatusUrl = "/customer/counselStatusNew.ssg";
    	var infloSiteNo = '6005';
    	
    	$.ajax({
            url: counselStatusUrl,
            type: 'GET',
            data: {
                siteNo : infloSiteNo
            },
            dataType : "json"
        }).done(function (responseDto) {
            if (responseDto.resultCode == "SUCCESS") {
                var htmlArr = [];
                
                if (responseDto.result.cnslStatus == 0) {
                    if (responseDto.result.rcpnRate >= 85) {
                        htmlArr.push('<div class="ccs_level ty_good">');
                        htmlArr.push('		<span class="ccs_level_txt">전화상담 원활</span>');
                        htmlArr.push('</div>');
                    } else if (responseDto.result.rcpnRate >= 70 && responseDto.result.rcpnRate <= 85) {
                        htmlArr.push('<div class="ccs_level ty_normal">');
                        htmlArr.push('  	<span class="ccs_level_txt">전화상담 보통</span>');
                        htmlArr.push('</div>');
                    } else {
                        htmlArr.push('<div class="ccs_level ty_bad">');
                        htmlArr.push('  	<span class="ccs_level_txt">전화상담 지연</span>');
                        htmlArr.push('</div>');
                    }
                } else if (responseDto.result.cnslStatus == -1) { 
                    htmlArr.push('<div class="ccs_level ty_off">');
                    htmlArr.push('    <span class="ccs_level_txt">현황 점검중</span>');
                    htmlArr.push('</div>');
                } else if (responseDto.result.cnslStatus == 1) { 
                	htmlArr.push('<div class="ccs_level ty_off">');
                    htmlArr.push('    <span class="ccs_level_txt">전화상담 OFF</span>');
                    htmlArr.push('</div>');
                }
               
                $("div.ccs_hotline").append(htmlArr.join(""));
            }
        }).fail(function () {
        });
    }

    $("#lnbCtg li").mouseenter(function() {
        $(this).addClass("active");
    }).mouseleave(function() {
        $(this).removeClass();
    });

    function nonMemberOrd() {
        var url = 'https://pay.ssg.com/myssg/orderList.ssg';

        if ("N" == "N") {
            url = 'http://member.ssg.com/member/login.ssg?retURL=' + escape(url);
        }

        location.href = url;
    }
    
	$('#cs_srch').keyup(function(event){
    	
   		var k = event.keyCode;
    	if( k == '38' || k == '40'){
    		return;
    	}
    	
    	var suggestFaqList = [];
   		var addTrHtml = "";
    	var keyword = $(this).val().toUpperCase();
    	if(keyword == '' || keyword == null){
    		$('#ssg-auto-list').empty();
    		$('#faqSearchDiv').hide();
			return;    		
    	}
    	
    	for(var i in faqTitleNmList) {
    	  	var titleNm = faqTitleNmList[i].postngTitleNm; 
    	  	
    	  	/* 시작문자 
    	  	if(titleNm.startsWith(keyword) ){
	    		suggestFaqList.push(titleNm);
	    		addTrHtml += "<li><a href='javascript:;'><strong>"+keyword+"</strong>"+titleNm.substr(keyword.length)+"</a></li>";
    		}
    	  	 */
    	  	 
    	  	//포함
    	  	if(titleNm.indexOf(keyword) > 0 ){
	    		suggestFaqList.push(titleNm);
	    		var keyIndex = titleNm.indexOf(keyword);
	    		addTrHtml += "<li><a href='javascript:funcPageLocate(\""+titleNm+"\");'>"+titleNm.substring(0,keyIndex)+"<strong>"+keyword+"</strong>"+titleNm.substr(keyIndex + keyword.length)+"</a></li>";
    		}
    	  	 
    		if(suggestFaqList.length >= 10)
    			break;
    	}
    	
    	if(addTrHtml != ''){
	    	$('#ssg-auto-list').empty().append(addTrHtml);
	    	$('#faqSearchDiv').show();
    	}else{
    		$('#ssg-auto-list').empty();
    		$('#faqSearchDiv').hide();
    	}
    	selectedItemIdx = -1;
    	
    });
	
	var cur = false;
	$('#faqSearchDiv').on('mouseenter', function () {
		cur = true;
	});
	$('#faqSearchDiv').on('mouseleave', function () {
		 cur = false;
	});
	$('#cs_srch').on('focusout', function () {
		if(!cur) {
			$('#faqSearchDiv').hide();
		}
	});

    var faqTitleNmList= [];
    
    (function() {
		$.ajax({
            url: '/customer/ajaxFaqTitleNmList.ssg',
            type: 'GET',
            data: {
            	"dvicDivCd":"10" //PC
            },
            dataType : "json"
        }).done(function (responseDto) {
            if (responseDto.length>0) {
            	faqTitleNmList = responseDto;
            }
        }).fail(function () {
        });
    })();
    
	function funcPageLocate(keyword){
        keyword = keyword.replaceAll("\"", "").replaceAll("'","").replaceAll("%","");
        location.href = "/customer/faqKeywordList.ssg?keyword=" + encodeURIComponent(keyword);
	}


	function checkLoginYn(result, dataType, retUrl) {
		if(result === null) return true;

		try {
			if(dataType.toUpperCase() == "HTML") {
				result = JSON.parse(result);
			}
			if(result.errorCode !== null && result.errorCode === "AJAX_LOGIN_FAIL") {
				retUrl = 'http://member.ssg.com/member/login.ssg?retURL=' + encodeURI(retUrl);
				location.href = retUrl;
				return false;
			}
		} catch(err) {}

		return true;
	}
</script>





















<div id="content" class="ccs_content ccs_main">
	<div class="ccs_cont_sec">
		<!-- FAQ Top 10 -->
		<div class="ccs_contit ty_txtctr">
			<h3 class="ccs_contit_tx">자주 찾는 질문 TOP 10</h3>
		</div>
		<div class="ccs_faq10">
			<ul data-react-tarea-cd="00232_000000878">
				
				<li onclick="increaseFaqHitCount(3, 1198963089);ssg_react_v2.direct_call(this);" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'NO.1'}]"
				class="clickable">
				<a href="#ccs_faq10_1" class="btn_open clickable">
					<span class="num">1</span>
					<span>신세계 유니버스 클럽의 모든 혜택이 알고 싶어요.</span>
				</a>
				<div id="ccs_faq10_1" class="ssg-layer-popup ccs_lypop ccs_faq10_1 ty_faq10_cont">
					<div class="ccs_lypop_header">
						<h1 class="ccs_lypop_tit ty_small">1. 신세계 유니버스 클럽의 모든 혜택이 알고 싶어요.</h1>
					</div>
					<div class="ccs_lypop_container">
						<div class="ccs_lypop_cont">
							<p>한 번의 가입으로 SSG.COM/이마트/신세계백화점/스타벅스/G마켓/옥션/신세계면세점 모두에서 혜택을 누릴 수 있습니다.&nbsp;
 <br /> 온오프라인을 넘나드는 신세계 유니버스 클럽 혜택을 지금 바로 확인하세요!
 <br /> 
 <br /> 
 <strong>[신세계 유니버스 클럽 혜택]&nbsp;</strong>
 <br /> ① 가입선물 SSG머니 3만원
 <br /> ② 장바구니 7% 할인쿠폰 2장, 5% 할인쿠폰 3장
 <br /> ③ (스탬프 15개 달성시) 장바구니 10% 할인쿠폰 3장 추가
 <br /> ④ 이마트 혜택 (매월 5% 할인쿠폰 4장, 이달의 플러스 혜택 제공)
 <br /> ⑤ 신세계백화점 혜택 (패션/잡화 구매시 5% 할인, 매월 멤버스바 무료 음료 2잔)
 <br /> ⑥ 스타벅스 혜택(별 더블적립 매월 5회, 6회차 주문시 사이즈업 쿠폰 제공)
 <br /> ⑦ G마켓/옥션 혜택(매월 최대 12% 할인쿠폰 4장, 5% 할인쿠폰 무제한, 회원 전용 추가혜택)
 <br /> ⑧ 신세계 면세점 혜택 (매월 최대 3만원 즉시할인, GOLD멤버십 최대 15% 할인 혜택 기본 제공)
 <br /> ※ SSG머니 3만원은 매년 결제일 기준으로 지급됩니다.
 <br /> 
 <br /> 
 <br /> 
 <br /> 
 <a class="btn_txt_lnk" href="http://m.ssg.com/membership/gate.ssg?">▶ 신세계 유니버스 클럽 혜택 한눈에 보기</a></p>
						</div>
					</div>
					<button type="button" class="btn_clse"><span class="ccs_sp_ico"><span class="blind">닫기</span></span></button>
				</div>
				</li>
				
				<li onclick="increaseFaqHitCount(3, 1198907692);ssg_react_v2.direct_call(this);" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'NO.2'}]"
				class="clickable">
				<a href="#ccs_faq10_2" class="btn_open clickable">
					<span class="num">2</span>
					<span>신세계 유니버스 클럽 가입과 가입비 결제는 어떻게 하나요?</span>
				</a>
				<div id="ccs_faq10_2" class="ssg-layer-popup ccs_lypop ccs_faq10_1 ty_faq10_cont">
					<div class="ccs_lypop_header">
						<h1 class="ccs_lypop_tit ty_small">2. 신세계 유니버스 클럽 가입과 가입비 결제는 어떻게 하나요?</h1>
					</div>
					<div class="ccs_lypop_container">
						<div class="ccs_lypop_cont">
							<p>SSG.COM 신세계 유니버스 클럽은 신세계포인트 통합회원에 한해 가입 가능하며,&nbsp;
 <br /> 매년 연회비 30,000원 자동 결제를 통해 신세계 유니버스 클럽 서비스를 이용할 수 있습니다.&nbsp;
 <br /> 연 가입비 결제는 SSGPAY(신용/체크카드)로만 가능하며, 카드가 SSGPAY에 등록되지 않은 경우 카드 정보 등록을 먼저 진행하셔야 합니다. (최초 1회)
 <br /> 
 <br /> 최초 가입시 1개월의 무료 이용기간을 제공해 드리니 부담 없이 가입해보세요!
 <br /> 
 <br /> 
 <a class="btn_txt_lnk" href="http://member.ssg.com/m/mbrsp/join/agree.ssg?">▶ 신세계 유니버스 클럽 가입 바로가기</a>
 <br /> &nbsp;</p>
						</div>
					</div>
					<button type="button" class="btn_clse"><span class="ccs_sp_ico"><span class="blind">닫기</span></span></button>
				</div>
				</li>
				
				<li onclick="increaseFaqHitCount(3, 1198907694);ssg_react_v2.direct_call(this);" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'NO.3'}]"
				class="clickable">
				<a href="#ccs_faq10_3" class="btn_open clickable">
					<span class="num">3</span>
					<span>1개월 무료체험은 어떻게 이용할 수 있나요?</span>
				</a>
				<div id="ccs_faq10_3" class="ssg-layer-popup ccs_lypop ccs_faq10_1 ty_faq10_cont">
					<div class="ccs_lypop_header">
						<h1 class="ccs_lypop_tit ty_small">3. 1개월 무료체험은 어떻게 이용할 수 있나요?</h1>
					</div>
					<div class="ccs_lypop_container">
						<div class="ccs_lypop_cont">
							<p>유니버스 클럽 최초 가입 시, [ 1개월 무료 체험 후 가입 ] or [ 즉시 가입, 13개월 이용 ] 으로 혜택 시점을 선택하실 수 있으며
 <br /> 무료 체험 기간 중, 해지하시는 경우 잔여 무료 이용 기간은 소멸 됩니다.
 <br /> 
 <br /> 단, 가입 이력이 있는 경우에는 무료 기간이 제공되지 않습니다.
 <br /> 
 <br /> 
 <img alt="1개월 무료 체험 이용 선택 방법 화면 입니다.  " src="data:image/png;base64,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u2XdunVG2VthecOGDbJz507TOFIDiV9PPPGE3HfffXLPPfcY4gBRGD9+vLnemjVrpH79+sYAWFx77bVSq1YtqV27tjRv3lyefvrpcIvIJZdcIiVKlDANMy3Q4KdOnSpNmjSRpk2bSuPGjc210gOU+UMPPSQPPvigiQW7mDVrljnXk08+Ga4Jxjfg3Oedd54sX75cbrrpphiJoT5xvzw/oLfE81AOgJ+I4crFTQuef/55KV26tJx99tlmOQruaciQITJ8+HBTfhMmTDDv7P777zfbH374Yalatap5LwCy5n59wTzlz/137drV1FXOxTlRgKkBoki5UH84jwX3XqZMGVOnMiM8SfEk5VgC+iHRYG7YJr7+oTORyJPC9vfff9+0d4/MC09S0gEMZKlSpYwhw8i50rZtW0lKSjIFaEGWOASmYcOGxjhbwfDXrVvX7D9jxoxw731Bo2rdurXkypVLChUqJHfccYdZ361bN2nXrp2sWLFCihUrJtdff73p1WOkL774YmNAe/ToIf369TNGhoaJgT3rrLPMNZ955hlznihoyBjgxx57TC644AJZsGCBLFq0SObNm2fOAwHjWHolUWCIMe4VKlQw10B4VgjGAw88IPPnzzfkqXz58oYsWOCRgCh06tRJOnfuLEuWLDHPAlatWmXOc9ttt5nlq666SqpUqSI7duwwy9wv55w4caJZpt6wP/edCHfeeacpT95V+/btzbvMmjWrjBs3Ti6//HIZNWqUZMmSJfYOIXVDhw41pJB7HDlypJx22mmGZEKeLrroIunevbs5H2QrNbCN98E7xytlYe+X8s2M8CTFk5RjCXRaIBsQlUTekug6BLuF9zStToZH5oAnKekABrpIkSJy+umnh2tS8Pjjj0vevHnN/VvAzDHCMHx6/1Zw77N/7ty5ZfLkyeHe8SDkQCPC43LppZfKFVdcIY888oh5UX379pUuXboYo122bFm56667ZM+ePaZXXq1aNWnQoIHxsCAVK1aU5ORkcz5IDUbR9fa4wNPB80E0atasabwxSJ06daR69epSrlw5Q4osSXBBZjzHtmrVytwLxo1rcw8QJ0gVx3IeSBAeiXPOOcd4IQYOHCh9+vQxz9W7d28ZNGiQISZr16419wu5ABdeeKHkyZPH1DOApwayMGDAALPMc2XPnl1OPvlks5wIlAOGEoPZq1cvU34L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" /></p>
						</div>
					</div>
					<button type="button" class="btn_clse"><span class="ccs_sp_ico"><span class="blind">닫기</span></span></button>
				</div>
				</li>
				
				<li onclick="increaseFaqHitCount(3, 1198963095);ssg_react_v2.direct_call(this);" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'NO.4'}]"
				class="clickable">
				<a href="#ccs_faq10_4" class="btn_open clickable">
					<span class="num">4</span>
					<span>신세계 유니버스 클럽 VIP 기준 및 혜택은 어떻게 되나요?</span>
				</a>
				<div id="ccs_faq10_4" class="ssg-layer-popup ccs_lypop ccs_faq10_1 ty_faq10_cont">
					<div class="ccs_lypop_header">
						<h1 class="ccs_lypop_tit ty_small">4. 신세계 유니버스 클럽 VIP 기준 및 혜택은 어떻게 되나요?</h1>
					</div>
					<div class="ccs_lypop_container">
						<div class="ccs_lypop_cont">
							<p>매월 1일 직전 3개월의 스탬프 수가 15개 이상인 경우 멤버십 VIP 등급이 부여되며,
 <br /> VIP가 되시면 10% 장바구니 할인쿠폰 3장을 받으실 수 있습니다.
 <br /> (7월 1일 기준 VIP 고객님은 멤버십에 가입하시면 24년 6월까지 VIP 등급이 유지됩니다)
 <br /> 
 <br /> 
 <br /> 
 <a class="btn_txt_lnk" href="https://m.ssg.com/event/couponInfo.ssg?myssg=couponInfo?">▶ 스탬프 확인하러 가기</a></p>
						</div>
					</div>
					<button type="button" class="btn_clse"><span class="ccs_sp_ico"><span class="blind">닫기</span></span></button>
				</div>
				</li>
				
				<li onclick="increaseFaqHitCount(3, 1198963094);ssg_react_v2.direct_call(this);" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'NO.5'}]"
				class="clickable">
				<a href="#ccs_faq10_5" class="btn_open clickable">
					<span class="num">5</span>
					<span>신세계 유니버스 클럽 SSG 월 쿠폰 혜택을 자세히 알려주세요.</span>
				</a>
				<div id="ccs_faq10_5" class="ssg-layer-popup ccs_lypop ccs_faq10_1 ty_faq10_cont">
					<div class="ccs_lypop_header">
						<h1 class="ccs_lypop_tit ty_small">5. 신세계 유니버스 클럽 SSG 월 쿠폰 혜택을 자세히 알려주세요.</h1>
					</div>
					<div class="ccs_lypop_container">
						<div class="ccs_lypop_cont">
							<p>신세계 유니버스 클럽 장바구니 할인쿠폰은 매월 아래와 같이 제공됩니다.
 <br /> ※ 장바구니 할인쿠폰은 SSG.COM 일부 상품을 제외하고 사용 가능한 할인쿠폰을 의미합니다.
 <br /> 
 <br /> 5% 장바구니 할인쿠폰 3장
 <br /> 7% 장바구니 할인쿠폰 2장
 <br /> 10% 장바구니 할인쿠폰 3장 (스탬프 15개)
 <br /> 
 <br /> 
 <strong>[유의사항]</strong>
 <br /> &nbsp;- 장바구니 쿠폰은 ‘결제페이지&gt;할인혜택’ 단계에서 적용 가능하며, 각 쿠폰의 기준 금액 및 할인금액이 다르므로 사용 전 반드시 확인 해주시기 바랍니다.
 <br /> &nbsp;- 5% 장바구니 쿠폰은 최소 구매금액 없이 최대 2만원 까지 할인 적용되며, 7%/10% 장바구니 쿠폰은 대상 상품 합산 4만원 이상 구매 시 최대 1만원까지 할인 적용됩니다.
 <br /> &nbsp;- 쿠폰은 기타 할인 혜택(적립쿠폰, 카드쿠폰, 등급쿠폰 등)과 중복 적용되지 않으며, 할인액 및 배송비는 기준 금액에서 제외됩니다.
 <br /> &nbsp;- 할인쿠폰은 일부 상품(상품권, 서비스상품, 행사상품, 특가상품 등)에는 적용되지 않으며, 주문 시 결제 페이지에서 쿠폰 확인이 되지 않을 경우, 해당 상품은 쿠폰 적용이 불가한 상품입니다.
 <br /> &nbsp;- 쿠폰은 매월 1일 쿠폰함으로 자동 발급되며, 다운로드 받은 쿠폰의 사용 기간은 매월 말일과 본인의 멤버십 종료 도래일 중 더 가까운 기간입니다.&nbsp;신규 가입 고객의 경우 가입한 순간에 쿠폰이 자동 발급되며, 서버 상황에 따라 약간의 시간차가 발생할 수 있습니다.
 <br /> &nbsp;- 할인쿠폰을 사용하여 주문 후 부분 취소/반품 하셨을 때는 쿠폰이 재발급 되지 않습니다.(전체 취소/반품 시에만 재발급 가능)
 <br /> &nbsp;- 재발급된 쿠폰의 유효기간이 종료된 경우, 재발급된 다음날 밤 12시까지 사용 가능합니다.
 <br /> &nbsp;- 할인쿠폰은 신세계 유니버스 클럽 정상 가입고객에 한해 발급됩니다. (간편회원, 사업자회원 제외)
 <br /> 
 <br /> ※ 본 혜택은 당사 사정에 따라 변경/중단 될 수 있습니다.
 <br /> 
 <br /> 
 <br /> 
 <br /> 
 <a class="btn_txt_lnk" href="https://m.ssg.com/event/couponInfo.ssg?myssg=couponInfo?">▶ 쿠폰함 바로가기</a></p>
						</div>
					</div>
					<button type="button" class="btn_clse"><span class="ccs_sp_ico"><span class="blind">닫기</span></span></button>
				</div>
				</li>
				
				<li onclick="increaseFaqHitCount(3, 1185132741);ssg_react_v2.direct_call(this);" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'NO.6'}]"
				class="clickable">
				<a href="#ccs_faq10_6" class="btn_open clickable">
					<span class="num">6</span>
					<span>주문한 상품의 배송 조회는 어디서 하나요?</span>
				</a>
				<div id="ccs_faq10_6" class="ssg-layer-popup ccs_lypop ccs_faq10_1 ty_faq10_cont">
					<div class="ccs_lypop_header">
						<h1 class="ccs_lypop_tit ty_small">6. 주문한 상품의 배송 조회는 어디서 하나요?</h1>
					</div>
					<div class="ccs_lypop_container">
						<div class="ccs_lypop_cont">
							<p>
 <span apple="" font-size:="" gothic="" sd="" style="color: rgb(34, 34, 34); font-family: Spoqa-Regular, -apple-system, BlinkMacSystemFont, ">[SSG.COM 로그인 → 주문배송조회 → 배송조회]</span>
 <br /> 
 <br apple="" font-size:="" gothic="" sd="" style="color: rgb(34, 34, 34); font-family: Spoqa-Regular, -apple-system, BlinkMacSystemFont, " /> 
 <a ..="" apple="" background-attachment:="" background-clip:="" background-origin:="" background-position:="" background-repeat:="" background-size:="" class="btn_txt_lnk" color:="" csc="" font-family:="" gothic="" href="https://pay.ssg.com/myssg/orderList.ssg?gnb=orderlist" img="" line-height:="" sd="" style="margin: 0px; padding: 0px 20px 1px 9px; text-decoration-line: none; display: inline-block; overflow: hidden; height: 27px; border: 1px solid rgb(34, 34, 34); background-image: url(" vertical-align:="">주문/배송조회 바로가기</a> 
 <div></div></p>
						</div>
					</div>
					<button type="button" class="btn_clse"><span class="ccs_sp_ico"><span class="blind">닫기</span></span></button>
				</div>
				</li>
				
				<li onclick="increaseFaqHitCount(3, 1000002325);ssg_react_v2.direct_call(this);" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'NO.7'}]"
				class="clickable">
				<a href="#ccs_faq10_7" class="btn_open clickable">
					<span class="num">7</span>
					<span>배송비는 얼마인가요?</span>
				</a>
				<div id="ccs_faq10_7" class="ssg-layer-popup ccs_lypop ccs_faq10_1 ty_faq10_cont">
					<div class="ccs_lypop_header">
						<h1 class="ccs_lypop_tit ty_small">7. 배송비는 얼마인가요?</h1>
					</div>
					<div class="ccs_lypop_container">
						<div class="ccs_lypop_cont">
							<p>
 <p><strong class="css_tbl_tit">배송비 안내</strong></p> 
 <div class="ccs_tbl_wrap ccs_tbl_ly"> 
  <table class="ccs_tbl"> 
   <caption>
    <span class="blind">배송비 안내 정보</span>
   </caption> 
   <colgroup> 
    <col /> 
    <col /> 
    <col /> 
   </colgroup> 
   <thead> 
    <tr> 
     <th colspan="2" scope="col">구분</th> 
     <th scope="col">배송비</th> 
    </tr> 
   </thead> 
   <tbody> 
    <tr> 
     <th rowspan="3" scope="row">신세계백화점</th> 
     <td>택배배송</td> 
     <td>3만원 이상 - 무료<br /> 3만원 미만 - 3,000원</td> 
    </tr> 
    <tr> 
     <td>퀵배송</td> 
     <td>10만원 이상 - 7,000원<br /> 10만원 미만 - 12,000원<br /> ※ 서울 지역 대상, 일부 제외&nbsp;</td> 
    </tr> 
    <tr> 
     <td>매장픽업</td> 
     <td>무료</td> 
    </tr> 
    <tr class="ty_line"> 
     <th rowspan="4" scope="row">이마트몰</th> 
     <td>쓱배송</td> 
     <td>4만원 이상 - 무료<br /> 4만원 미만 - 3,000원</td> 
    </tr> 
    <tr> 
     <td>택배배송</td> 
     <td>3만원 이상 - 무료<br /> 3만원 미만 - 3,000원</td> 
    </tr> 
    <tr> 
     <td>정기배송</td> 
     <td>2만원 이상 - 무료<br /> 2만원 미만 - 3,000원</td> 
    </tr> 
    <tr> 
    </tr> 
    <tr class="ty_line"> 
     <th rowspan="2" scope="row">트레이더스</th> 
     <td>쓱배송</td> 
     <td>12만원 이상 - 무료<br /> 12만원 미만 - 4,000원</td> 
    </tr> 
    <tr> 
     <td>택배배송</td> 
     <td>12만원 이상 - 무료<br /> 12만원 미만 - 4,000원</td> 
    </tr> 
    <tr class="ty_line"> 
     <th scope="row">새벽배송</th> 
     <td>새벽배송</td> 
     <td>4만원 이상&nbsp; - 무료<br /> 4만원 미만&nbsp; - 3,000원</td> 
    </tr> 
    <tr> 
     <th scope="row">쓱1DAY배송</th> 
     <td>택배배송</td> 
     <td>2만원 이상&nbsp; - 무료<br /> 2만원 미만&nbsp; - 3,000원</td> 
    </tr> 
    <tr class="ty_line"> 
     <th scope="row">신세계라이브쇼핑</th> 
     <td>택배배송</td> 
     <td>업체 및 상품에 따라 배송비 상이(상품페이지 참고)<br /> ※ 동일 업체의 상품이 아닐 경우 배송비는 각각 부과</td> 
    </tr> 
    <tr class="ty_line"> 
     <th scope="row">협력업체</th> 
     <td>택배배송</td> 
     <td>업체 및 상품에 따라 배송비 상이(상품페이지 참고)<br /> ※ 동일 업체의 상품이 아닐 경우 배송비는 각각 부과</td> 
    </tr> 
   </tbody> 
  </table> 
 </div></p>
						</div>
					</div>
					<button type="button" class="btn_clse"><span class="ccs_sp_ico"><span class="blind">닫기</span></span></button>
				</div>
				</li>
				
				<li onclick="increaseFaqHitCount(3, 1000002418);ssg_react_v2.direct_call(this);" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'NO.8'}]"
				class="clickable">
				<a href="#ccs_faq10_8" class="btn_open clickable">
					<span class="num">8</span>
					<span>반품 / 교환 신청 시 주의사항이 있나요?</span>
				</a>
				<div id="ccs_faq10_8" class="ssg-layer-popup ccs_lypop ccs_faq10_1 ty_faq10_cont">
					<div class="ccs_lypop_header">
						<h1 class="ccs_lypop_tit ty_small">8. 반품 / 교환 신청 시 주의사항이 있나요?</h1>
					</div>
					<div class="ccs_lypop_container">
						<div class="ccs_lypop_cont">
							<p>
 <div></div> 
 <div> 
  <div></div> 
  <div>
   <strong>단순변심 및 사이즈/색상 불만에 관련된 교환/반품 신청은 배송완료 후 7일 이내(주말/공휴일 포함)에 가능합니다</strong>.
  </div> 
  <div>
   단, 상품이 표기/광고내용과 다르거나 계약내용과 다른 경우 상품을 받으신 날부터 3개월 이내,
  </div> 
  <div>
   또는 사실을 알게된 날(알 수 있었던 날)부터 30일 이내에 신청 가능합니다.
   <br /> &nbsp;
  </div> 
  <div></div> 
  <div>
   <strong>■ 교환/반품 시 유의사항</strong>
  </div> 
  <div>
   &nbsp; - 실제 상품, 용역 등을 제공받은 날로부터&nbsp; 7일 이내(주말/공휴일 포함) 교환/반품 가능
  </div> 
  <div>
   &nbsp; - 상품에 따라 TAG, 라벨 등의 훼손이나 구성품, 사은품 누락, 수선, 세탁, 폐기 후에는 반품 불가
  </div> 
  <div>
   &nbsp; - 설치상품(설치 이후) / 신선식품 / 특수 주문제작상품 / 순금은 단순 변심 사유로 교환/반품 불가&nbsp;
  </div> 
  <div></div> 
  <div>
   <br /> &nbsp;※ 상품에 따라 취소/교환/반품의 기준이 다를 수 있으며,&nbsp;
  </div> 
  <div>
   &nbsp; &nbsp; 자세한 사항은 상품 상세설명 및 페이지 하단 [교환 및 반품 안내] 참고 부탁드립니다.
  </div> 
 </div></p>
						</div>
					</div>
					<button type="button" class="btn_clse"><span class="ccs_sp_ico"><span class="blind">닫기</span></span></button>
				</div>
				</li>
				
				<li onclick="increaseFaqHitCount(3, 1152418758);ssg_react_v2.direct_call(this);" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'NO.9'}]"
				class="clickable">
				<a href="#ccs_faq10_9" class="btn_open clickable">
					<span class="num">9</span>
					<span>주문한 상품을 취소하고 싶은데 취소가 안돼요. 어떻게 하나요?</span>
				</a>
				<div id="ccs_faq10_9" class="ssg-layer-popup ccs_lypop ccs_faq10_1 ty_faq10_cont">
					<div class="ccs_lypop_header">
						<h1 class="ccs_lypop_tit ty_small">9. 주문한 상품을 취소하고 싶은데 취소가 안돼요. 어떻게 하나요?</h1>
					</div>
					<div class="ccs_lypop_container">
						<div class="ccs_lypop_cont">
							<p>상품의 즉시 취소는 [결제 완료] 단계에서만 가능합니다. 주문 취소가 바로 어려운 경우는 아래와 같습니다.&nbsp;
 <br /> 
 <br /> 
 <strong>■ 결제완료 단계에서 상품 준비중으로 변경된 경우</strong>
 <br /> &nbsp;- 업체에서 상품 준비 단계가 시작되어 즉시 주문 취소가 불가합니다.
 <br /> &nbsp;- 취소를 원하실 경우,
 <br /> &nbsp; [MY SSG → 주문/배송 조회] 에서 [취소 요청]이 가능합니다.
 <br /> &nbsp;- [취소 요청] 시, 업체에서 상품 출고 여부에 따라 [취소 승인] 혹은 [취소 거절]로 진행되며 취소가 거절될 경우 배송이 진행됩니다.
 <br /> 
 <br /> 
 <strong>■&nbsp; 주문 제작 상품일 경우&nbsp;</strong>
 <br /> &nbsp;- 사이즈, 개인 요청 사항 등 특수 주문 제작 상품을 구매하신 경우, 상품 제작이 진행된 이후에는 취소가 어려울 수 있습니다.&nbsp;
 <br /> 
 <br /> &nbsp;※ 빠른 취소를 원하실 경우 고객센터로 연락 부탁드립니다.</p>
						</div>
					</div>
					<button type="button" class="btn_clse"><span class="ccs_sp_ico"><span class="blind">닫기</span></span></button>
				</div>
				</li>
				
				<li onclick="increaseFaqHitCount(3, 1000002153);ssg_react_v2.direct_call(this);" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'NO.10'}]"
				class="clickable">
				<a href="#ccs_faq10_10" class="btn_open clickable">
					<span class="num">10</span>
					<span>쓱(새벽)배송 배송점포 확인 및 기본 배송지 변경은 어디서 하나요?</span>
				</a>
				<div id="ccs_faq10_10" class="ssg-layer-popup ccs_lypop ccs_faq10_1 ty_faq10_cont">
					<div class="ccs_lypop_header">
						<h1 class="ccs_lypop_tit ty_small">10. 쓱(새벽)배송 배송점포 확인 및 기본 배송지 변경은 어디서 하나요?</h1>
					</div>
					<div class="ccs_lypop_container">
						<div class="ccs_lypop_cont">
							<p>
 <p>사이트 상단 [ E 쓱배송/ T 쓱배송] 중&nbsp;원하시는 배송을 클릭 하시면,&nbsp;<br /> 가장 빠른 배송 시간을 확인하실 수 있습니다.&nbsp;<br /> <br /> 더불어, 해당 시간대를 클릭하시면&nbsp;<br /> 팝업되는 페이지에서 배송지 변경 및 배송 점포 확인이 가능합니다.&nbsp;<br /> <br /> <img alt="쓱 배송 점포 확인 및 배송지 변경 화면 입니다. " src="data:image/png;base64,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" />&nbsp;<br /> <br /> <br /> &nbsp;<a class="btn_txt_lnk" href="https://member.ssg.com/myssg/myinfoMng/shpplocNacctMng.ssg?menu=shpplocNacctMng">기본배송지 변경&nbsp;바로가기</a><br /> &nbsp;<a class="btn_txt_lnk" href="https://member.ssg.com/addr/popup/zipcdShppInfo.ssg?tabType=dawn&amp;callbackUrl=http%3A%2F%2Fearlymorning.ssg.com%2F">새벽배송 지역찾기 바로가기</a><br /> <br /> &nbsp;</p> 
 <div class="img_area"></div></p>
						</div>
					</div>
					<button type="button" class="btn_clse"><span class="ccs_sp_ico"><span class="blind">닫기</span></span></button>
				</div>
				</li>
				
			</ul>
		</div>

		<!-- KEYWORD -->
		<h3 class="blind">자주 찾는 질문</h3>
		<div> <!-- <div class="ccs_tab"> -->
			<ul class="ccs_tab_list ty5" role="tablist" data-react-tarea-cd="00233_000000879">
				
					
				
					
						<li role="presentation" onclick="showFaqRootList(this,'F366');ssg_react_v2.direct_call(this);" id="F366" class="clickable" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'신세계 유니버스 클럽'}]">
							<button type="button" class="ccs_tab_btn" role="tab" aria-selected="false">
								<span>신세계 유니버스 클럽</span>
							</button>
						</li>
					
				
					
				
					
				
					
				
					
				
					
				
					
						<li role="presentation" onclick="showFaqRootList(this,'F82');ssg_react_v2.direct_call(this);" id="F82" class="clickable" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'회원'}]">
							<button type="button" class="ccs_tab_btn" role="tab" aria-selected="false">
								<span>회원</span>
							</button>
						</li>
					
				
					
				
					
				
					
				
					
						<li role="presentation" onclick="showFaqRootList(this,'F86');ssg_react_v2.direct_call(this);" id="F86" class="clickable" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'주문/결제'}]">
							<button type="button" class="ccs_tab_btn" role="tab" aria-selected="false">
								<span>주문/결제</span>
							</button>
						</li>
					
				
					
				
					
				
					
				
					
				
					
				
					
						<li role="presentation" onclick="showFaqRootList(this,'F89');ssg_react_v2.direct_call(this);" id="F89" class="clickable" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'배송'}]">
							<button type="button" class="ccs_tab_btn" role="tab" aria-selected="false">
								<span>배송</span>
							</button>
						</li>
					
				
					
				
					
				
					
				
					
				
					
						<li role="presentation" onclick="showFaqRootList(this,'F94');ssg_react_v2.direct_call(this);" id="F94" class="clickable" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'취소/환불'}]">
							<button type="button" class="ccs_tab_btn" role="tab" aria-selected="false">
								<span>취소/환불</span>
							</button>
						</li>
					
				
					
				
					
				
					
						<li role="presentation" onclick="showFaqRootList(this,'F328');ssg_react_v2.direct_call(this);" id="F328" class="clickable" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'SSG MONEY'}]">
							<button type="button" class="ccs_tab_btn" role="tab" aria-selected="false">
								<span>SSG MONEY</span>
							</button>
						</li>
					
				
					
				
					
						<li role="presentation" onclick="showFaqRootList(this,'F97');ssg_react_v2.direct_call(this);" id="F97" class="clickable" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'반품/교환'}]">
							<button type="button" class="ccs_tab_btn" role="tab" aria-selected="false">
								<span>반품/교환</span>
							</button>
						</li>
					
				
					
				
					
				
					
						<li role="presentation" onclick="showFaqRootList(this,'F233');ssg_react_v2.direct_call(this);" id="F233" class="clickable" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'항공'}]">
							<button type="button" class="ccs_tab_btn" role="tab" aria-selected="false">
								<span>항공</span>
							</button>
						</li>
					
				
					
				
					
				
					
				
					
				
					
				
					
						<li role="presentation" onclick="showFaqRootList(this,'F267');ssg_react_v2.direct_call(this);" id="F267" class="clickable" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'호텔'}]">
							<button type="button" class="ccs_tab_btn" role="tab" aria-selected="false">
								<span>호텔</span>
							</button>
						</li>
					
				
					
				
					
				
					
				
					
				
					
				
					
						<li role="presentation" onclick="showFaqRootList(this,'F320');ssg_react_v2.direct_call(this);" id="F320" class="clickable" data-react-tarea-dtl-cd="t00014" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'기타'}]">
							<button type="button" class="ccs_tab_btn" role="tab" aria-selected="false">
								<span>기타</span>
							</button>
						</li>
					
				
					
				
					
				
					
				
					
				
			</ul>
			<div class="ccs_tabcont_wrap">
				<div class="ccs_tabcont active" role="tabpanel">
					<!-- level2 카테고리 -->
					<div class="condition_group">
					</div>
					<!-- faq -->
					<ul id="faqList" class="ccs_lst ty_faq fold_article_wrap">
					</ul>
					<div class="com_paginate">
				    </div>
				</div>
			</div>
		</div>
	</div>

	<div class="ccs_cont_sec ty_topline">
		<div class="ccs_contit ty_float">
			<h3 class="ccs_contit_tx">고객센터 핫라인</h3>
			<ul class="ccs_contit_desc">
			        <li>핫라인은 고객센터 상담간 불편함이 해소되지 않고, 잘못된 관행이나 응대로 불편이 가중되는것을 개선하기 위해 신고하는 제도 입니다.</li>
					<li>부당한 행위 불만접수 처리지연, 상담불만등 고객센터 이용간 개선이 필요한 사항에 대해 신고 바랍니다.</li>
			        <li>일반문의는 <a href="javascript:gotoCounselForm();" class="tx_underline">E-mail 상담</a>을 이용 부탁드립니다.</li>
			</ul>
			<span class="ccs_contit_side" onclick="showRptForm();" data-react-tarea-cd="00232_000000882">
				<a href="#ccs_complain" id="rptBtn" onclick="ssg_react_v2.direct_call(this);" class="ccs_btn btn_submit btn_hotline_open clickable" data-react-tarea-dtl-cd="t00060" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'신고하기'}]">
					<span class="blind">핫라인</span> 신고하기</a>
			</span>
		</div>
	</div>

	<!-- modal : 핫라인 신고 레이어팝업 -->
	<div id="ccs_complain" class="ssg-layer-popup ccs_lypop ccs_complain">
		<div class="ccs_lypop_header">
			<h1 class="ccs_lypop_tit ty_small">핫라인 신고</h1>
		</div>
		<div id="ccs_complain_container" class="ccs_lypop_container">
			<div class="ccs_lypop_cont">
			</div>
		</div>
		<button type="button" class="btn_hotline_close"><span class="ccs_sp_ico"><span class="blind">닫기</span></span></button>
	</div>

	<div class="ccs_cont_sec ty_topline">
		<div class="ccs_contit ty_float" data-react-tarea-cd="00232_000000883">
			<h3 class="ccs_contit_tx">웹접근성 신고</h3>
			<ul class="ccs_contit_desc">
				<li>사이트 내 장애인 웹접근성과 관련된 신고 접수만 가능합니다.</li>
				<li>일반문의는 <a href="javascript:gotoCounselForm();" class="tx_underline">E-mail 상담</a>을 이용 부탁드립니다.</li>
			</ul>
			<span class="ccs_contit_side" onclick="showWebAccessibilityForm();"><a href="#ccs_accessibility" onclick="ssg_react_v2.direct_call(this);" class="ccs_btn btn_submit btn_hotline_open clickable" data-react-tarea-dtl-cd="t00060" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'신고하기'}]"><span class="blind">웹접근성</span> 신고하기</a></span>
		</div>
	</div>

	<!-- modal : 웹 접근성 신고 레이어팝업 -->
	<div id="ccs_accessibility" class="ssg-layer-popup ccs_lypop ccs_accessibility">
		<div class="ccs_lypop_header">
			<h1 class="ccs_lypop_tit ty_small">웹접근성 신고</h1>
		</div>
		<div id="ccs_accessibility_container" class="ccs_lypop_container">
			<div class="ccs_lypop_cont">
			</div>
		</div>
		<button type="button" class="btn_hotline_close"><span class="ccs_sp_ico"><span class="blind">닫기</span></span></button>
	</div>


	<!-- 고객센터 이용안내 : SSG.COM 통합번호 -->
	<div class="ccs_cont_sec ty_topline">
		<div class="ccs_contit ty_inline">
			<h3 class="ccs_contit_tx">고객센터 이용안내</h3>
			<span class="ccs_contit_desc">운영시간 09:00~21:00</span>
			<span class="ccs_contit_side"><span class="tel">1577-3419</span></span>
		</div>
	</div>

	<div class="ccs_cont_sec">
		<div class="ccs_tab">
			<ul class="ccs_tab_list ty2" role="tablist" data-react-tarea-cd="00232_000000898">
				<li class="active" role="presentation"><button type="button" onclick="ssg_react_v2.direct_call(this);" class="ccs_tab_btn clickable" role="tab" aria-selected="true" data-react-tarea-dtl-cd="t00060" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'공지사항'}]">공지사항</button></li>
				<li role="presentation"><button type="button" onclick="ssg_react_v2.direct_call(this);" class="ccs_tab_btn clickable" role="tab" aria-selected="false" data-react-tarea-dtl-cd="t00060" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'이벤트당첨자발표'}]">이벤트 당첨자 발표</button></li>
			</ul>
			<div class="ccs_tabcont_wrap">
				<div class="ccs_tabcont active" role="tabpanel">
					<!-- [D] .ccs_lst - 기본형 -->
					<ul class="ccs_lst fold_article_wrap">
						
							
								<li>
									<!-- [D] 새 글일 때 .subject에 .ico_new 클래스 추가, 내부에 <span class="blind">새 글</span> 추가 -->
									<a href="#" onclick="showCntt('1','1','1215593704','6005');" class="subject " role="button" aria-expanded="false">
										
										
										<span id="1215593704_6005">[SSG.COM] UBPAY 결제서비스 종료 안내</span>
										<span class="date" role="presentation"><span class="blind">게시일</span>2024.03.06</span>
										<span class="ccs_sp_ico ico_lst_toggle"><span class="sr_off"><span class="blind">펼치기</span></span><span class="sr_on"><span class="blind">접기</span></span></span>
									</a>
									<div class="content">
										<div class="answer" id="content_1"></div>
									</div>
								</li>
							
						
							
								<li>
									<!-- [D] 새 글일 때 .subject에 .ico_new 클래스 추가, 내부에 <span class="blind">새 글</span> 추가 -->
									<a href="#" onclick="showCntt('2','1','1212330270','6005');" class="subject " role="button" aria-expanded="false">
										
										
										<span id="1212330270_6005">[SSG.COM] SSG.COM 사칭 문자 주의 안내</span>
										<span class="date" role="presentation"><span class="blind">게시일</span>2024.01.10</span>
										<span class="ccs_sp_ico ico_lst_toggle"><span class="sr_off"><span class="blind">펼치기</span></span><span class="sr_on"><span class="blind">접기</span></span></span>
									</a>
									<div class="content">
										<div class="answer" id="content_2"></div>
									</div>
								</li>
							
						
							
								<li>
									<!-- [D] 새 글일 때 .subject에 .ico_new 클래스 추가, 내부에 <span class="blind">새 글</span> 추가 -->
									<a href="#" onclick="showCntt('3','1','1200106474','6005');" class="subject " role="button" aria-expanded="false">
										
										
										<span id="1200106474_6005">[SSG.COM] 이마트몰 택배 배송 배송비 조정 안내 (23/08/01~)</span>
										<span class="date" role="presentation"><span class="blind">게시일</span>2023.06.28</span>
										<span class="ccs_sp_ico ico_lst_toggle"><span class="sr_off"><span class="blind">펼치기</span></span><span class="sr_on"><span class="blind">접기</span></span></span>
									</a>
									<div class="content">
										<div class="answer" id="content_3"></div>
									</div>
								</li>
							
						
							
								<li>
									<!-- [D] 새 글일 때 .subject에 .ico_new 클래스 추가, 내부에 <span class="blind">새 글</span> 추가 -->
									<a href="#" onclick="showCntt('4','1','1196016435','6005');" class="subject " role="button" aria-expanded="false">
										
										
										<span id="1196016435_6005">[SSG.COM] SSG.COM 사칭사이트 주의 안내</span>
										<span class="date" role="presentation"><span class="blind">게시일</span>2023.04.19</span>
										<span class="ccs_sp_ico ico_lst_toggle"><span class="sr_off"><span class="blind">펼치기</span></span><span class="sr_on"><span class="blind">접기</span></span></span>
									</a>
									<div class="content">
										<div class="answer" id="content_4"></div>
									</div>
								</li>
							
						
							
								<li>
									<!-- [D] 새 글일 때 .subject에 .ico_new 클래스 추가, 내부에 <span class="blind">새 글</span> 추가 -->
									<a href="#" onclick="showCntt('5','1','1218586389','6005');" class="subject " role="button" aria-expanded="false">
										
										
										<span id="1218586389_6005">[SSG.COM] SSG.COM 개인정보처리방침 개정 안내 [개정일 : 2024.05.08]</span>
										<span class="date" role="presentation"><span class="blind">게시일</span>2024.04.30</span>
										<span class="ccs_sp_ico ico_lst_toggle"><span class="sr_off"><span class="blind">펼치기</span></span><span class="sr_on"><span class="blind">접기</span></span></span>
									</a>
									<div class="content">
										<div class="answer" id="content_5"></div>
									</div>
								</li>
							
						
							
								<li>
									<!-- [D] 새 글일 때 .subject에 .ico_new 클래스 추가, 내부에 <span class="blind">새 글</span> 추가 -->
									<a href="#" onclick="showCntt('6','1','1218348958','6005');" class="subject " role="button" aria-expanded="false">
										
										
										<span id="1218348958_6005">[SSG.COM] 주문,배송 알림톡을 앱푸시로 안내해 드려요</span>
										<span class="date" role="presentation"><span class="blind">게시일</span>2024.04.25</span>
										<span class="ccs_sp_ico ico_lst_toggle"><span class="sr_off"><span class="blind">펼치기</span></span><span class="sr_on"><span class="blind">접기</span></span></span>
									</a>
									<div class="content">
										<div class="answer" id="content_6"></div>
									</div>
								</li>
							
						
							
								<li>
									<!-- [D] 새 글일 때 .subject에 .ico_new 클래스 추가, 내부에 <span class="blind">새 글</span> 추가 -->
									<a href="#" onclick="showCntt('7','1','1217447146','6005');" class="subject " role="button" aria-expanded="false">
										
										
										<span id="1217447146_6005">[SSG.COM] SSG.COM 이용약관 개정 안내 [개정일 : 2024.05.08]</span>
										<span class="date" role="presentation"><span class="blind">게시일</span>2024.04.08</span>
										<span class="ccs_sp_ico ico_lst_toggle"><span class="sr_off"><span class="blind">펼치기</span></span><span class="sr_on"><span class="blind">접기</span></span></span>
									</a>
									<div class="content">
										<div class="answer" id="content_7"></div>
									</div>
								</li>
							
						
							
								<li>
									<!-- [D] 새 글일 때 .subject에 .ico_new 클래스 추가, 내부에 <span class="blind">새 글</span> 추가 -->
									<a href="#" onclick="showCntt('8','1','1216954851','6005');" class="subject " role="button" aria-expanded="false">
										
										
										<span id="1216954851_6005">[SSG.COM] 스마일캐시 전환 한도 변경 안내&nbsp;(5/1)</span>
										<span class="date" role="presentation"><span class="blind">게시일</span>2024.03.28</span>
										<span class="ccs_sp_ico ico_lst_toggle"><span class="sr_off"><span class="blind">펼치기</span></span><span class="sr_on"><span class="blind">접기</span></span></span>
									</a>
									<div class="content">
										<div class="answer" id="content_8"></div>
									</div>
								</li>
							
						
							
								<li>
									<!-- [D] 새 글일 때 .subject에 .ico_new 클래스 추가, 내부에 <span class="blind">새 글</span> 추가 -->
									<a href="#" onclick="showCntt('9','1','1216351072','6005');" class="subject " role="button" aria-expanded="false">
										
										
										<span id="1216351072_6005">[SSG.COM] SSG.COM 개인정보처리방침 개정 안내 [개정일 : 2024.03.27]</span>
										<span class="date" role="presentation"><span class="blind">게시일</span>2024.03.20</span>
										<span class="ccs_sp_ico ico_lst_toggle"><span class="sr_off"><span class="blind">펼치기</span></span><span class="sr_on"><span class="blind">접기</span></span></span>
									</a>
									<div class="content">
										<div class="answer" id="content_9"></div>
									</div>
								</li>
							
						
							
								<li>
									<!-- [D] 새 글일 때 .subject에 .ico_new 클래스 추가, 내부에 <span class="blind">새 글</span> 추가 -->
									<a href="#" onclick="showCntt('10','1','1214705282','6005');" class="subject " role="button" aria-expanded="false">
										
										
										<span id="1214705282_6005">[SSG.COM] SSG.COM 개인정보처리방침 개정 안내 [개정일 : 2024.02.28]</span>
										<span class="date" role="presentation"><span class="blind">게시일</span>2024.02.21</span>
										<span class="ccs_sp_ico ico_lst_toggle"><span class="sr_off"><span class="blind">펼치기</span></span><span class="sr_on"><span class="blind">접기</span></span></span>
									</a>
									<div class="content">
										<div class="answer" id="content_10"></div>
									</div>
								</li>
							
						
					</ul>
					<div class="ccs_btnarea" data-react-tarea-cd="00232_000000898">
						<a href="/customer/noticeList.ssg?siteNo=6005" onclick="ssg_react_v2.direct_call(this);" class="btn_more clickable" data-react-tarea-dtl-cd="t00060" data-react-unit-type="text" data-react-unit-text="[{'type':'text','value':'전체보기'}]"><span class="blind">공지사항 </span>전체보기<span class="ccs_sp_ico ico_arr_rgt"></span></a>
					</div>
				</div>
				<div class="ccs_tabcont" role="tabpanel">
					<ul class="ccs_lst"><!-- <ul class="ccs_lst fold_article_wrap">  -->
						
							<li id="event_1000000013107">
								<a href="/event/winnerDetail.ssg?promId=1000000013107" class="subject ico_new" >
									
										<span class="blind">새 글</span>
									
									[체험단]강아지 유산균
									
								</a>
								
							</li>
						
							<li id="event_1000000012855">
								<a href="/event/winnerDetail.ssg?promId=1000000012855" class="subject ico_new" >
									
										<span class="blind">새 글</span>
									
									미니 등심 돈까스 체험단
									
								</a>
								
							</li>
						
							<li id="event_1000000012974">
								<a href="/event/winnerDetail.ssg?promId=1000000012974" class="subject ico_new" >
									
										<span class="blind">새 글</span>
									
									더텐 소프트 체험단 모집
									
								</a>
								
							</li>
						
							<li id="event_1000000013037">
								<a href="/event/winnerDetail.ssg?promId=1000000013037" class="subject ico_new" >
									
										<span class="blind">새 글</span>
									
									[제르조프] 체험단
									
								</a>
								
							</li>
						
							<li id="event_1000000012872">
								<a href="/event/winnerDetail.ssg?promId=1000000012872" class="subject ico_new" >
									
										<span class="blind">새 글</span>
									
									[MADA]광채 세럼스틱
									
								</a>
								
							</li>
						
							<li id="event_1000000012949">
								<a href="/event/winnerDetail.ssg?promId=1000000012949" class="subject " >
									
									[메종쥬 J.U.S] 체험단
									
								</a>
								
							</li>
						
							<li id="event_1000000012795">
								<a href="/event/winnerDetail.ssg?promId=1000000012795" class="subject " >
									
									[닥터트웬티프로젝트]나인세럼
									
								</a>
								
							</li>
						
							<li id="event_1000000013040">
								<a href="/event/winnerDetail.ssg?promId=1000000013040" class="subject " >
									
									NEW 원피엘 앰플 글로우
									
								</a>
								
							</li>
						
							<li id="event_1000000012403">
								<a href="/event/winnerDetail.ssg?promId=1000000012403" class="subject " >
									
									[아베다] 인바티 울트라
									
								</a>
								
							</li>
						
							<li id="event_1000000012799">
								<a href="/event/winnerDetail.ssg?promId=1000000012799" class="subject " >
									
									[정직한실험실]시카케라틴샴푸
									
								</a>
								
							</li>
						
					</ul>
					<div class="ccs_btnarea">
						<a href="/event/winnerList.ssg" class="btn_more"><span class="blind">이벤트 당첨자 발표</span> 전체보기<span class="ccs_sp_ico ico_arr_rgt"></span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/jquery.form.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.common.pluginset.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.common.layout.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ui.datepicker.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ui.timerManager.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ui.customerCenter.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.view.csc_v2.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ssg.view.calendar_v2.js"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/commonUtil.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/common/ssgGnb.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/common/commJs.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/m_ssg/js/ui/mcom.webview.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/common/clipJs.js?v=20240424"></script>
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


<script type="text/javascript">
$(function(){
	$('.ccs_tab_list').find('li').first().click();

	var oSsgHotLineLayerPopup = new ssg.View.layerPopup({
	    sTarget: '.btn_hotline_open', // 레이어 팝업 보기 버튼
	    sClose: '.btn_hotline_close', // 레이어 팝업 닫기 버튼
	    htDefault: {
	        overlayCSS: {
	            backgroundColor: '#000',
	            opacity: 0.8
	        },
	        onOverlayClick: function() {
	            oSsgHotLineLayerPopup.closeLayer();
	        }
	    },
	    sNamespaceEmit: '.ssgHotLine'
	});

	oSsgHotLineLayerPopup.on('afterClose.ssgHotLine', function() {
		oHelpNoti = oHelpSetTime();
    });


	if("" != ""){
		$("#").click();
	}

	$(document).ready(function() {
		if("" === "hl") {
			$("#rptBtn").click();
		}
	});

});



function buttonActivate(obj){
    $(obj).addClass('on').siblings().removeClass('on');
}

function selectCategoryByPrior(obj, priorPostngClsCd) {
	$(obj).addClass('active').siblings().removeClass('active');
	var htmlArr = [];
	if (priorPostngClsCd != null && priorPostngClsCd != ''){
	    $.ajax({
	        url: '/customer/ajaxCategoryByPrior.ssg',
	        type: 'post',
	        dataType : 'json',
	        data : {"priorPostngClsCd" : priorPostngClsCd}
	    }).done(function (categoryByPrior) {
	        htmlArr.push('		<button type="button" class="btn_condition on" onclick="showFaqList(1, this, \'' + priorPostngClsCd + '\');"><span>전체</span></button>');
	        if (categoryByPrior.length) {
	            for (var i = 0; i < categoryByPrior.length; i++) {
	                var e = categoryByPrior[i];
	                htmlArr.push('				<button type="button" class="btn_condition" onclick="showFaqList(1, this, \'' + e.postngClsCd + '\');"><span>' + e.postngClsNm + '</span></button>');
	            }
	        }
			$('.condition_group').html(htmlArr.join(''));
	    }).fail(function () {
	    });
	} else {
		$('.condition_group').html('');
	}
}

function showFaqRootList(obj, priorPostngClsCd){
	selectCategoryByPrior(obj, priorPostngClsCd);
	showFaqListAjax(1, priorPostngClsCd);
}

function showFaqList(page, obj, postngClsCd){
	$(obj).addClass('on').siblings().removeClass('on');
	showFaqListAjax(page, postngClsCd);
}

function showFaqListAjax(page, postngClsCd){
	var htmlArr = [];
	var url = '/customer/ajaxFaqAllList';
	$.ajax({
        url: url,
        type: 'GET',
        dataType : "json",
        data : {	 "postngClsCd":postngClsCd
        			, "page":page}
    }).done(function (resultPageList) {
    	if (resultPageList.resultList.length) {
            for (var i = 0; i < resultPageList.resultList.length; i++) {
                var result = resultPageList.resultList[i];
				htmlArr.push('<li class="">');
                htmlArr.push('    <a href="javascript:void(0);" onclick="faqHitCount(this, '+result.bbsId+', '+result.postngId+');" id="q_'+result.postngId+'" class="subject" role="button" aria-expanded="false">');
                htmlArr.push('        <span class="blind">질문</span>');
                htmlArr.push('        '+result.postngTitleNm);
                htmlArr.push('        <span class="ccs_sp_ico ico_lst_toggle"></span>');
                htmlArr.push('    </a>');
                htmlArr.push('    <div class="content">');
                htmlArr.push('        <div class="answer">');
                htmlArr.push('            <span class="blind">답변</span>');
                htmlArr.push('            <p>');
                htmlArr.push('                '+result.postngCntt);
                htmlArr.push('            </p>');
                htmlArr.push('        </div>');
                htmlArr.push('    </div>');
                htmlArr.push('</li>');
            }
        }
		$('#faqList').html(htmlArr.join(''));
		pageNaviMain(resultPageList, postngClsCd, $(".com_paginate"));

    	if("" != "" && $("#q_").offset()){
    		$("#q_").click();
			var offset = $("#q_").offset(); //해당 위치 반환
			$("html, body").animate({scrollTop: offset.top},400);
		}

    }).fail(function () {
    });
}

function pageNaviMain(pageInfo, postngClsCd, obj){
	var pageStr = '';
	if(pageInfo.totalPage > 0){
		if(pageInfo.moveBtnDisable == null){
			if(pageInfo.curPage > 1){
				pageStr+= '<a href="javascript:;" onclick="showFaqListAjax(1,\''+postngClsCd+'\');" class="btn_first"><span class="blind">처음 페이지로</span></a>';
			}
			if(pageInfo.startPage > 1){
				pageStr+= '<a href="javascript:;" onclick="showFaqListAjax('+pageInfo.previousScalePage+',\''+postngClsCd+'\');" class="btn_prev"><span class="blind">이전 페이지로</span></a>';
			}
		}

		for(var i=pageInfo.startPage;i<=pageInfo.totalPage;i++){

			if(pageInfo.curPage != i){
				pageStr+= '<a href="javascript:;" onclick="showFaqListAjax('+i+',\''+postngClsCd+'\');">'+i+'</a>';
			}else{
				pageStr+= '<strong title="현재위치">'+i+'</strong>';
			}
		}

		if(pageInfo.moveBtnDisable == null){
		    if(pageInfo.curPage < pageInfo.endPage){
		    	pageStr+= '<a class="btn_next on" href="javascript:;" onclick="showFaqListAjax('+(pageInfo.curPage+1)+',\''+postngClsCd+'\');"><span class="blind">다음 페이지로</span></a>';
		    }
		    if(pageInfo.curPage != pageInfo.totalPage){
		    	pageStr+= '<a class="btn_last on" href="javascript:;" onclick="showFaqListAjax('+pageInfo.totalPage+',\''+postngClsCd+'\');"><span class="blind">마지막 페이지로</span></a>';
		    }
		}

	}
	$(obj).children().remove();
	(obj).html(pageStr);
}

function faqHitCount(obj, bbsId, postngId) {
    if ($(obj).parent().attr("class").indexOf("active") == -1) {
        increaseFaqHitCount(bbsId, postngId);
    }
}

function increaseFaqHitCount(bbsId, postngId) {
    $.ajax({
        type : "get",
        url : "/customer/increaseFaqHitCount.ssg",
        data : {
            bbsIds : bbsId,
            postngIds : postngId
        },
        dataType : "json",
        success : function(responseDto) {
            if (responseDto.resultCode == 'SUCCESS') {

            } else if (responseDto.resultCode == 'FAIL') {

            }
        },
        error : function() {
        }
    });
}

//레코드 제목 클릭 시 내용 보여주기
function showCntt(cnt, bbsId, postngId, postTeryIdnfNo) {

	// 조회 여부
	var id = "#" + postngId + "_" + postTeryIdnfNo;
	if ($(id).parent().parent().attr("class") == "active") {
		return false;
	}
	// 공지사항 내용리스트 출력
	$.ajax({
		url: '/customer/ajaxNoticeCnttList.ssg',
		type: 'GET',
		data : {
			"postngId" : postngId
			,"postTeryIdnfNo" : postTeryIdnfNo
		},
		dataType : "json"
	}).done(function (noticeCnttList) {
		var htmlArr = [];

		if (noticeCnttList) {
			for (var i = 0; i < noticeCnttList.length; i++) {
				var cntt = noticeCnttList[i].postngCntt;
				htmlArr.push(cntt);
			}
			$("#content_"+cnt).empty();
			$("#content_"+cnt).html(htmlArr.join(''));
		}

		// 조회수 증가
		increaseNoticeHitCount(bbsId, postngId, postTeryIdnfNo);
	}).fail(function () {
	});
}

function increaseNoticeHitCount(bbsId, postngId, postTeryIdnfNo) {
	$.ajax({
		type: "get",
		url: "/customer/increaseNoticeHitCount.ssg",
		data: {
			bbsId: bbsId,
			postngId: postngId,
			postTeryIdnfNo: postTeryIdnfNo
		},
		dataType: "json",
		success: function(responseDto) {
			if (responseDto.resultCode == 'SUCCESS') {

			} else if (responseDto.resultCode == 'FAIL') {

			}
		},
		error: function() {
			alert('서버와의 통신중 에러가 발생하였습니다.');
		}
	});
}

function showRptForm() {
	if ("N" == "N") {
		    cnslLogin();
	} else {
		$.ajax({
	        url: '/customer/rptForm.ssg',
	        type: 'GET',
	        dataType : "html",
	        data : {
	        },
	        success :function(result){
				if(!checkLoginYn(result, "html", 'https://www.ssg.com/customer/main.ssg')) return;
	        	$("#ccs_complain_container").empty();
	        	$("#ccs_complain_container").append(result);
	        },
	        error : function (e) {
	        	alert('서버와의 통신중 에러가 발생하였습니다.');
	        }
	    });
	}
}

function showWebAccessibilityForm() {
	if ("N" == "N") {
		cnslLogin();
	} else {
		$.ajax({
			url: '/customer/webAccessibilityForm.ssg',
			type: 'GET',
			dataType : "html",
			data : {
			},
			success :function(result){
				if(!checkLoginYn(result, "html", 'https://www.ssg.com/customer/main.ssg')) return;
				$("#ccs_accessibility_container").empty();
				$("#ccs_accessibility_container").append(result);
			},
			error : function (e) {
				alert('서버와의 통신중 에러가 발생하였습니다.');
			}
		});
	}
}

function cnslLogin() {
    location.href = 'https://member.ssg.com/member/login.ssg?retURL=' + escape(location.href);
}

function gotoCounselForm() {
	if ("N" == "N") {
		var retUrl = 'https://www.ssg.com'+"/customer/counselForm.ssg";
		location.href = 'https://member.ssg.com/member/login.ssg?retURL=' + escape(retUrl);
	} else {
		location.href = "/customer/counselForm.ssg";
	}
}

$('.btn_clse').click( function() {
	tempItemType = "";
	oSsgViewHelpPopup.closeLayer();
});

</script>

<!-- 신규 추가 셀렉트박스 관련 -->
<script id="_dropdown-selected" type="text/x-jquery-tmpl">
	<span class="txt">{{= label}}</span>
	<span class="sel_arrow">&nbsp;</span>
</script>
<script id="_dropdown-list" type="text/x-jquery-tmpl">
	{{each(index, row) items}}
		{{if value !== "0"}}
			{{if selected}}
				<li class="selected" data-index="{{= index}}">
					<a href="#"><span class="txt">{{= label}}</span></a>
				</li>
			{{else}}
				<li {{if disabled}}class="disabled"{{/if}} data-index="{{= index}}">
					<a href="#"><span class="txt">{{= label}}</span></a>
				</li>
			{{/if}}
		{{/if}}
	{{/each}}
</script>
<script id="_dropdown" type="text/x-jquery-tmpl">
	<div class="tmpl_drop_opt">
		<a href="#" class="tmpl_drop_select _drop_select">
			{{tmpl(selected) "#_dropdown-selected"}}
		</a>
		<div class="tmpl_drop_scroll">
			<ul class="tmpl_drop_list _drop_list">
				{{if items}}
					{{tmpl "#_dropdown-list"}}
				{{/if}}
			</ul>
		</div>
	</div>
</script>
<!-- //신규 추가 셀렉트박스 관련 -->
</html>

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
</script>
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

    deferredObj.done(function() {
        var paramCookie = '';
        if ( paramCookie == 'Y' || paramCookie == 'N' ) {
            $.cookie('usePCmode', paramCookie, {path: '/', domain: '.ssg.com'});
        }

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
    var Nethru_ssgDomain  = "www";
    if ( Nethru_GetCookie("SSGDOMAIN") ){
        ;
    }else{
        Nethru_SetCookie("SSGDOMAIN",Nethru_ssgDomain,null,"/",Nethru_domain);
    }
    Nethru_makePersistentCookie("PCID",10,"/",Nethru_domain);
    Nethru_makePersistentCookie1("RC",10,"/",Nethru_domain);
</script>
<!-- 플로팅배너 -->
    <!-- 
        좌측 풍선배너
    mallFloatBanner,  adFloatingBannerList : SSG가상매장 - 공통영역(푸터) - 풍선배너/광고_풍선자리 코너에서 관리
 -->
<!-- 
        우측 직사각형 배너
     SSG가상매장 - 공통영역(푸터) - 가로배너
 --> 
 <script type="text/javascript">
    $(document).ready(function() {
        bannerTimeCheck();
    });
    var mallBanrStrtDts     = '';
    var mallBanrEndDts         = '';
    var commBanrStrtDts     = ''; 
    var commBanrEndDts         = ''; 
    function bannerTimeCheck(){                
        var nowTimeNum      =   Math.floor(new Date()/1000);
        //몰별 플로팅 팝업
        if(mallBanrStrtDts.length > 0){
            var mallStartTime = new Date(mallBanrStrtDts.substring(0,4),mallBanrStrtDts.substring(4,6)-1,mallBanrStrtDts.substring(6,8),mallBanrStrtDts.substring(8,10),mallBanrStrtDts.substring(10,12),mallBanrStrtDts.substring(12));              //팝업 시작일시
            var mallendTime   = new Date(mallBanrEndDts.substring(0,4),mallBanrEndDts.substring(4,6)-1,mallBanrEndDts.substring(6,8),mallBanrEndDts.substring(8,10),mallBanrEndDts.substring(10,12),mallBanrEndDts.substring(12));              //팝업 종료일시
            var mallStartTimeNum    =   Math.floor(mallStartTime/1000);
            var mallendTimeNum    =   Math.floor(mallendTime/1000);
            
            if(nowTimeNum >= mallStartTimeNum && nowTimeNum <= mallendTimeNum){                
                $('#floatWrap3').show();
                floatBanner3Start();
            }
            
        }else{
            $('#floatWrap3').hide();
            $.cookie('floating_ty1', '', {expires: -1, path: '/'});
        }
        
        //공통 플로팅 팝업
        if(commBanrStrtDts.length > 0){
            var commStartTime = new Date(commBanrStrtDts.substring(0,4),commBanrStrtDts.substring(4,6)-1,commBanrStrtDts.substring(6,8),commBanrStrtDts.substring(8,10),commBanrStrtDts.substring(10,12),commBanrStrtDts.substring(12));              //팝업 시작일시
            var commendTime = new Date(commBanrEndDts.substring(0,4),commBanrEndDts.substring(4,6)-1,commBanrEndDts.substring(6,8),commBanrEndDts.substring(8,10),commBanrEndDts.substring(10,12),commBanrEndDts.substring(12));              //팝업 종료일시
            var commStartTimeNum = Math.floor(commStartTime/1000);
            var commendTimeNum = Math.floor(commendTime/1000);
            
            if(nowTimeNum >= commStartTimeNum && nowTimeNum <= commendTimeNum){                
                $('#floatWrap2').show();
                floatBanner2Start();
            }
        }else{
            $('#floatWrap2').hide();
            $.cookie('floating_ty2', '', {expires: -1, path: '/',domain:'ssg.com'});
        }
    }
</script>
<!-- 플로팅배너 -->

    <div class="ly_chg_w" id="lyChange">
    <div class="ly_chg_cont">
        <div class="ly_chg_tit notranslate">
            <em class="tx_ko">품절일 때 대신 구매하면 좋은 상품을 모았어요!</em>
            <em class="tx_en">The product is currently sold out! You might also like</em>
            <em class="tx_zh">收集了断货时购买的话很好的商品!</em>
        </div>
        <div class="ly_chg_goods loading"></div><!-- [D] 로딩중일때 addClass=loading -->
        <button type="button" class="ly_chg_prev"><span class="blind">이전</span></button>
        <button type="button" class="ly_chg_next"><span class="blind">다음</span></button>
        <button type="button" class="ly_chg_close"><span class="blind">닫기</span></button>
    </div>
</div>

<div class="ly_dtl_magicpick" id="magicPickupTt" role="tooltip">
    <ul class="tl_magicpick_lst">

    </ul>
</div>

<script type="text/javascript">
//대체상품 레이어 관련 스크립트
// #370751 [상품전시] 대체 상품 리스트 수정 요청
var Replacement = {
    getItems : function (htData) {
        return $.ajax({
            type: "get",
            dataType : "html",
            data: {
                itemId : htData.replaceCode,
                siteNo : htData.replaceSiteno,
                displayPrc : htData.replaceDisplayprc,
                sellPrc : htData.replaceSellprc
            },
            url : '/disp/list/ajaxReplaceItem'
        });
    }
};

$(function(){
    var oReplacementLayer=function(){function n(){var n=null,e=function(){n=$("#lyChange"),_welReplaceGoods=n.find(".ly_chg_goods")},l=function(){var n=_welReplaceGoods.children(),e=n.filter(".on").prev();e.length?e.addClass("on").siblings().removeClass("on"):n.last().addClass("on").siblings().removeClass("on")},o=function(){var n=_welReplaceGoods.children(),e=n.filter(".on").next();e.length?e.addClass("on").siblings().removeClass("on"):n.first().addClass("on").siblings().removeClass("on")},s=function(){n.on("click",".ly_chg_prev",l),n.on("click",".ly_chg_next",o)};return this.init=function(){return e(),s(),this},this.render=function(n){_welReplaceGoods.html(n).removeClass("loading")},this.empty=function(){_welReplaceGoods.html("").addClass("loading")},this.init()}return new n}();
    var oSsgViewLayerPopup = new ssg.View.layerPopup({
        bGlobal  : true,
        sTarget  : '.btn_change', // 레이어 팝업 보기 버튼
        sClose   : '.ly_chg_close', // 레이어 팝업 닫기 버튼
        htDefault: {
            overlayCSS: {
                backgroundColor: '#fff',
                opacity: 0.8
            },
            onOverlayClick: function() { oSsgViewLayerPopup.closeLayer(); } // overlay click 레이어 닫기
        },
        sNamespaceEmit: '.ssgReplaceLayer'
    });

    oSsgViewLayerPopup.on('beforeOpen.ssgReplaceLayer', function(htData){
        if(htData && htData.replaceCode){
            Replacement.getItems(htData).done(function(data){
                var trim = data.trim();
                if(trim){
                    oReplacementLayer.render(data);
                } else {
                    alert("준비된 대체상품이 없습니다.");
                    oSsgViewLayerPopup.closeLayer();
                }
            });
        }
    });

    oSsgViewLayerPopup.on('afterClose.ssgReplaceLayer', function(){
        oReplacementLayer.empty();
    });
});

$(function(){
    // 셀러톡 레이어
    var oSsgViewTalkLayerPopup = new ssg.View.layerPopup({
        sTarget  : '.cdtl_lypop_open', // 레이어 팝업 보기 버튼
        sClose   : '.ly_close', // 레이어 팝업 닫기 버튼
        htDefault: {
            overlayCSS: {
                backgroundColor: '#000',
                opacity: 0.7
            },
            css: {
                backgroundColor: "none"
            },
            onOverlayClick: function() { oSsgViewTalkLayerPopup.closeLayer(); } // overlay click 레이어 닫기
        }
    });

    // 셀러톡 툴팁레이어
    $('.cdtl_ly_talk .cdtl_ly_close').on('click', function(e){
        $('.cdtl_ly_talk').removeClass('on');
    });

    var welLayerPopup = $('.cdtl_lypop_wrap');
    welLayerPopup.on('change', '.custom_rdo input[type=radio]', function(){
        var sRadioGroupName = $(this).attr('name');
        var welRadioGroup = $('input[type=radio][name='+sRadioGroupName+']');

        welRadioGroup.each(function(){
            $(this).parent('.custom_rdo').toggleClass('on', $(this).is(':checked'));
        });
    });

    // 셀러톡 로그인 확인
    $('#sellerTalkQnaClick, #sellerTalkBtnClick, #sellerTalkOptBarClick').on('click', function(){
    if (UserInfo.isLoginYn == "N") {
        login('', function(){
        $.cookie('ITEM_VIEW_SELLERTALK_LAYER', 'pc');
        document.location.reload();
        });
        return;
    }
    oSsgViewTalkLayerPopup.showByTarget('#cdtl_lypop_talk');
    });

    // 셀러톡ID 확인 후, 있으면 바로 실행
    var talkId = $.cookie('ITEM_VIEW_SELLERTALK_ID');
    if(!!talkId){
    $.cookie('ITEM_VIEW_SELLERTALK_ID', '');
    if (UserInfo.isLoginYn !== "N") {
        sellerTalkPopup(talkId);
    }
    }

    // PC용 셀러톡 레이어
    var layerYn = $.cookie('ITEM_VIEW_SELLERTALK_LAYER');
    if(layerYn === 'pc'){
    $.cookie('ITEM_VIEW_SELLERTALK_LAYER', '');
    if (UserInfo.isLoginYn !== "N") {
        $('#sellerTalkBtnClick').trigger('click');
    }
    }
});
</script>
</div>

<script defer="defer">
    $(function(){
        $("#skyScraperTopBtn").on("click","a",function(e){
            e.preventDefault();
            $('html, body').animate({scrollTop: 0 } , 100);
        });
    });

    var jsPath = "//sui.ssgcdn.com/ui/ssg/js";

</script>

<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/history.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/chnlPopup.js"></script>


<style>
    .tooltip_message.active{display:block !important}
</style>

<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/common/ssg.comm.onerror.observer.js" crossorigin="anonymous"></script><div id="wp_tg_cts" style="display:none;"></div>
<script type="text/javascript">
var wptg_tagscript_vars = wptg_tagscript_vars || [];
wptg_tagscript_vars.push(
(function() {
    return {
        wp_hcuid:"",   /*고객넘버 등 Unique ID (ex. 로그인  ID, 고객넘버 등 )를 암호화하여 대입.
                *주의 : 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
        ti:"37624",    /*광고주 코드 */
        ty:"Home",    /*트래킹태그 타입 */
        device:"web"    /*디바이스 종류  (web 또는  mobile)*/
        
    };
}));
</script>

<script type="text/javascript" async src="//cdn-aitg.widerplanet.com/js/wp_astg_4.0.js"></script>
<script>
    // Emforce ROI V5 Tag Start
    (function(w,d,t,s,v,e,o){
        if (w.EmfV5)return;v=w.EmfV5=function(){v.queue.push(arguments)};
        v.queue=[];e=d.createElement(t);e.src=s;e.async=!0;
        o=d.getElementsByTagName(t)[0];o.parentNode.insertBefore(e,o);
    })(window, document, 'script', 'https://analytics.emforce.co.kr/conversion/v5/analytics.js');

    EmfV5('inflow', "723");
    //Emforce ROI V5 Conversion Tag End
</script>
</body>
</html>
