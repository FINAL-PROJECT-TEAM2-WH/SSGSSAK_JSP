<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!doctype html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>배송정보, 믿고 사는 즐거움 SSG.COM</title>
<link rel="shortcut icon" type="image/x-icon"
	href="https://sui.ssgcdn.com/ui/common/img/ssg.ico">
<link rel="stylesheet" type="text/css"
	href="https://sui.ssgcdn.com/ui/ssg/css/ssg_global.css?v=20240423" />
<link rel="stylesheet" type="text/css"
	href="https://sui.ssgcdn.com/ui/ssg/css/ssg_layout.css?v=20240423" />
<link rel="stylesheet" type="text/css"
	href="https://sui.ssgcdn.com/ui/ssg/css/ssg_component.css?v=20240423" />

<link rel="stylesheet" type="text/css"
	href="https://sui.ssgcdn.com/ui/ssg/css/odr_v2.css?v=20240423" />
<link rel="stylesheet" type="text/css"
	href="https://sui.ssgcdn.com/ui/ssg/css/ssg_component.css">
<script>
	// regex patterns to identify known bot instances:
	let botPattern = "(googlebot\/|bot|Googlebot-Mobile|Googlebot-Image|Google favicon|Mediapartners-Google|bingbot|slurp|java|wget|curl|Commons-HttpClient|Python-urllib|libwww|httpunit|nutch|phpcrawl|msnbot|jyxobot|FAST-WebCrawler|FAST Enterprise Crawler|biglotron|teoma|convera|seekbot|gigablast|exabot|ngbot|ia_archiver|GingerCrawler|webmon |httrack|webcrawler|grub.org|UsineNouvelleCrawler|antibot|netresearchserver|speedy|fluffy|bibnum.bnf|findlink|msrbot|panscient|yacybot|AISearchBot|IOI|ips-agent|tagoobot|MJ12bot|dotbot|woriobot|yanga|buzzbot|mlbot|yandexbot|purebot|Linguee Bot|Voyager|CyberPatrol|voilabot|baiduspider|citeseerxbot|spbot|twengabot|postrank|turnitinbot|scribdbot|page2rss|sitebot|linkdex|Adidxbot|blekkobot|ezooms|dotbot|Mail.RU_Bot|discobot|heritrix|findthatfile|europarchive.org|NerdByNature.Bot|sistrix crawler|ahrefsbot|Aboundex|domaincrawler|wbsearchbot|summify|ccbot|edisterbot|seznambot|ec2linkfinder|gslfbot|aihitbot|intelium_bot|facebookexternalhit|yeti|RetrevoPageAnalyzer|lb-spider|sogou|lssbot|careerbot|wotbox|wocbot|ichiro|DuckDuckBot|lssrocketcrawler|drupact|webcompanycrawler|acoonbot|openindexspider|gnam gnam spider|web-archive-net.com.bot|backlinkcrawler|coccoc|integromedb|content crawler spider|toplistbot|seokicks-robot|it2media-domain-crawler|ip-web-crawler.com|siteexplorer.info|elisabot|proximic|changedetection|blexbot|arabot|WeSEE:Search|niki-bot|CrystalSemanticsBot|rogerbot|360Spider|psbot|InterfaxScanBot|Lipperhey SEO Service|CC Metadata Scaper|g00g1e.net|GrapeshotCrawler|urlappendbot|brainobot|fr-crawler|binlar|SimpleCrawler|Livelapbot|Twitterbot|cXensebot|smtbot|bnf.fr_bot|A6-Indexer|ADmantX|Facebot|Twitterbot|OrangeBot|memorybot|AdvBot|MegaIndex|SemanticScholarBot|ltx71|nerdybot|xovibot|BUbiNG|Qwantify|archive.org_bot|Applebot|TweetmemeBot|crawler4j|findxbot|SemrushBot|yoozBot|lipperhey|y!j-asr|Domain Re-Animator Bot|AddThis)";
	let regex = new RegExp(botPattern, 'i');
	// define var conditionalSampleRate as 0 if the userAgent matches a pattern in botPatterns
	// otherwise, define conditionalSampleRate as 100
	let conditionalSampleRate = regex.test(navigator.userAgent) ? 0 : 0.01;
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
			service: 'ssg-pay-webapp',
			env: 'PROD',
			// Specify a version number to identify the deployed version of your application in Datadog
			// version: '1.0.0',
			sessionSampleRate: 0.01,
			sessionReplaySampleRate: conditionalSampleRate,
			trackUserInteractions: true,
			trackResources: true,
			trackLongTasks: true,
			trackInteractions: true,
			trackSessionAcrossSubdomains: true,
			defaultPrivacyLevel: 'mask',
			enableExperimentalFeatures: ['clickmap']
		});
		DD_RUM.startSessionReplayRecording();
	})
</script>

<script type="text/javascript">
	+function(a,p,P,b,y){a.braze={};a.brazeQueue=[];for(var s="BrazeSdkMetadata DeviceProperties Card Card.prototype.dismissCard Card.prototype.removeAllSubscriptions Card.prototype.removeSubscription Card.prototype.subscribeToClickedEvent Card.prototype.subscribeToDismissedEvent Card.fromContentCardsJson Banner CaptionedImage ClassicCard ControlCard ContentCards ContentCards.prototype.getUnviewedCardCount Feed Feed.prototype.getUnreadCardCount ControlMessage InAppMessage InAppMessage.SlideFrom InAppMessage.ClickAction InAppMessage.DismissType InAppMessage.OpenTarget InAppMessage.ImageStyle InAppMessage.Orientation InAppMessage.TextAlignment InAppMessage.CropType InAppMessage.prototype.closeMessage InAppMessage.prototype.removeAllSubscriptions InAppMessage.prototype.removeSubscription InAppMessage.prototype.subscribeToClickedEvent InAppMessage.prototype.subscribeToDismissedEvent InAppMessage.fromJson FullScreenMessage ModalMessage HtmlMessage SlideUpMessage User User.Genders User.NotificationSubscriptionTypes User.prototype.addAlias User.prototype.addToCustomAttributeArray User.prototype.addToSubscriptionGroup User.prototype.getUserId User.prototype.incrementCustomUserAttribute User.prototype.removeFromCustomAttributeArray User.prototype.removeFromSubscriptionGroup User.prototype.setCountry User.prototype.setCustomLocationAttribute User.prototype.setCustomUserAttribute User.prototype.setDateOfBirth User.prototype.setEmail User.prototype.setEmailNotificationSubscriptionType User.prototype.setFirstName User.prototype.setGender User.prototype.setHomeCity User.prototype.setLanguage User.prototype.setLastKnownLocation User.prototype.setLastName User.prototype.setPhoneNumber User.prototype.setPushNotificationSubscriptionType InAppMessageButton InAppMessageButton.prototype.removeAllSubscriptions InAppMessageButton.prototype.removeSubscription InAppMessageButton.prototype.subscribeToClickedEvent FeatureFlag FeatureFlag.prototype.getStringProperty FeatureFlag.prototype.getNumberProperty FeatureFlag.prototype.getBooleanProperty automaticallyShowInAppMessages destroyFeed hideContentCards showContentCards showFeed showInAppMessage toggleContentCards toggleFeed changeUser destroy getDeviceId initialize isPushBlocked isPushPermissionGranted isPushSupported logCardClick logCardDismissal logCardImpressions logContentCardImpressions logContentCardClick logContentCardsDisplayed logCustomEvent logFeedDisplayed logInAppMessageButtonClick logInAppMessageClick logInAppMessageHtmlClick logInAppMessageImpression logPurchase openSession requestPushPermission removeAllSubscriptions removeSubscription requestContentCardsRefresh requestFeedRefresh refreshFeatureFlags requestImmediateDataFlush enableSDK isDisabled setLogger setSdkAuthenticationSignature addSdkMetadata disableSDK subscribeToContentCardsUpdates subscribeToFeedUpdates subscribeToInAppMessage subscribeToSdkAuthenticationFailures toggleLogging unregisterPush wipeData handleBrazeAction subscribeToFeatureFlagsUpdates getAllFeatureFlags".split(" "),i=0;i<s.length;i++){for(var m=s[i],k=a.braze,l=m.split("."),j=0;j<l.length-1;j++)k=k[l[j]];k[l[j]]=(new Function("return function "+m.replace(/\./g,"_")+"(){window.brazeQueue.push(arguments); return true}"))()}window.braze.getCachedContentCards=function(){return new window.braze.ContentCards};window.braze.getCachedFeed=function(){return new window.braze.Feed};window.braze.getUser=function(){return new window.braze.User};window.braze.getFeatureFlag=function(){return new window.braze.FeatureFlag};(y=p.createElement(P)).type='text/javascript';
		y.src='https://js.appboycdn.com/web-sdk/4.7/braze.min.js';
		y.async=1;(b=p.getElementsByTagName(P)[0]).parentNode.insertBefore(y,b)
	}(window,document,'script');

	if (['DEV','QA'].indexOf('PROD') > -1) { // 운영 배포 시 서버 환경 체크 제거
		const apiKey = '4a23e2c2-9255-4dd0-97c0-64c0e4036eb5';
		let initialized = false;
		if (apiKey !== '') {
			initialized = braze.initialize(apiKey, {
				baseUrl: 'sdk.iad-05.braze.com',
				enableLogging: false
			});
			if (initialized) {
				const MEMBER_ID = ['STG','PROD'].indexOf('PROD') > -1 ? $.cookie("MEMBER_ID").substring(4) : "0003035261";
				if (MEMBER_ID !== '') {
					braze.changeUser(MEMBER_ID); // SSG.ABCD1234EFGH 형태인데, SSG. 제거
				}
				braze.openSession();
			}
		}
  	}
</script>

<script type="text/javascript">
		
				var netfunnelActionId  = "order_prod";
			</script>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
			new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
		j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
		'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','GA4_dataLayer','GTM-PWBFGRL');</script>
<script type="text/javascript">
	window.GA4_dataLayer = window.GA4_dataLayer || [];
	function gtmPush(){GA4_dataLayer.push(arguments);}
</script>
</head>

<body class="body_wide body_wide_ctn">
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PWBFGRL"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<div id="skip">
		<h2>스킵 네비게이션</h2>
		<ul>
			<li><a href="#container"
				onclick="document.getElementById('container').tabIndex = -1;document.getElementById('container').focus();return false;">본문바로가기</a></li>
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
            itemPath : '//sitem.ssgcdn.com',
            uccPath : '//succ.ssgcdn.com',
            uploadDefaultUrl: 'temp_up/',
            cdnDomain : 'http://ui.ssgcdn.com' != '' ?
                'http://ui.ssgcdn.com' : '//sui.ssgcdn.com',
            jsPath : 'http://ui.ssgcdn.com/ui/ssg/js'
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
            ckWhere          : 'pc_ssgbr1',
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
<%@ include file="SSG_shipping_select_top.jsp"%>
<!-- MYSSG UI 변경 대응 -->
	<hr>
	<div id="container" class="case_new delivery_report">
		<!-- left -->
		<div id="content" class="codr_ct_step2">
			<div class="codr_header">
				<h2 class="codr_header_tit notranslate">배송정보</h2>
			</div>
			<div class="codr_wrap">
				<div id="_codr_sticky" class="codr_cont codr_sticky"
					style="min-height: 792px;">
					<div class="codr_col_rgt v2">
						<div class="codr_fixed" style="margin-left: 0px;">
							<div id="_codr_opt_bar" class="codr_opt_bar">
								<div class="codr_opt_wrap">
									<input type="hidden" id="changeShpplocDrctPurchYn_1" value="" />
									<input type="hidden" id="changeShpplocItemId_1" value="" /> <input
										type="hidden" id="changeShpplocOrdItemInfloTgtId_1" value="" />
									<div class="codr_opt_top">
										<strong class="codr_opt_delivtx notranslate"> <span
											class="codr_sp codr_ico_loc"></span> <span class="tx_ko">배송지</span><span
											class="tx_en"></span> : <span id="shpplocAntnmNm">이동영</span></strong>
										<span class="codr_opt_delivaddr notranslate"
											id="shpplocBascAddr"> (우편번호) 해당 유저의 도로명 주소</span>
										<div class="codr_cell_btnarea">
											<ul class="codr_cell_btnlst">
												<li><a href="#" role="button"
													class="codr_btn_option btnChangeShpploc" target="_blank">배송지변경을 누르면 회원의 배송지 목록이 출력된다.</a></li>
											</ul>
										</div>
									</div>
									<div class="codr_opt_cont codr_scroll">
										<div class="codr_opt_area">
											<div class="codr_opt_bx">
												<strong class="codr_opt_picktx"><span
													class="codr_sp codr_ico_basket"></span> <strong><!-- 주문상품이 여러개인 경우 DIV태그 갯수 늘리기
														여기에 몇개 사는지 출력 -->1<span class="notranslate"><span class="tx_ko">개</span></span>
												</strong> </strong>
												<div class="codr_opt_pickitem">
													<div class="codr_opt_pickimgarea">
														<span class="codr_opt_pickimg"> <img
														<%-- 회원이 구매하려는 제품의 이미지와 어떤 제품인지 데이터 넣기--%>
															src="#"
															srcset="https://sitem.ssgcdn.com/40/28/59/item/0000009592840_i1_120.jpg 2x"
															alt="백오이 (5입/봉)" width="60" height="60"
															onerror="javascript:this.src='https://sui.ssgcdn.com/ui/sd/img/common/noImg_80.gif';this.alt='상품 이미지 준비중입니다.';" /></span>
														<span class="codr_opt_picktit"> <span
															class="codr_unit_name notranslate">어떤 제품??</span> <span
															class="codr_unit_count"><strong>수량</strong> <em
																class="num">1</em>개</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="codr_opt_btm" style="display: flex; justify-content: center;">
									<!-- 결제창으로 이동  -->
									    <a href="#" class="codr_btn_payment" id="saveShppInfo" style="display: flex; align-items: center;">
									        <div style="margin-left: 90px">계속하기</div>
									    </a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="codr_col_lft">
						<div id="div_multi_section_1" data-shpplocseq="1">
							<div class="codr_acdo">
								<div class="codr_acdo_tit">
									<h2 class="codr_acdo_tittx">쓱배송 일자/시간 선택</h2>
								</div>
								<input type="hidden" id="emDispItemCnt" value="1"> <input
									type="hidden" id="emDispRepItemNm" value="회원이 구매하는 상품" />
								<div class="codr_acdo_cont">
									<div class="codr_sec ty_nobd">
										<div class="codr_sec_tit">
											<strong class="codr_sec_tittx">주문 상품 : 1개</strong>
										</div>

										<div class="codr_moretgl codr_toggle">
											<div class="codr_unit_lst codr_moretgl_cont codr_toggle_cont">
												<ul role="presentation">

													<li class="codr_unit_prd">
														<div class="codr_prd_info">
															<span class="codr_unit_img" aria-hidden="true"><img
																src="https://sitem.ssgcdn.com/40/28/59/item/0000009592840_i1_100.jpg"
																srcset="https://sitem.ssgcdn.com/40/28/59/item/0000009592840_i1_180.jpg 2x"
																alt="백오이 (5입/봉)" width="90" height="90"
																onerror="javascript:this.src='https://sui.ssgcdn.com/ui/sd/img/common/noImg_100.gif';this.alt='상품 이미지 준비중입니다.';" /></span>
															<span class="codr_prd_tit"> <span
																class="codr_unit_name notranslate">어떤 상품인지</span> <span
																class="codr_unit_count"> <strong>수량</strong> <em
																	class="num">몇개??</em><span>개</span>
															</span>
															</span>
														</div>
													</li>
												</ul>
											</div>
										</div>
										<div class="codr_odrdeliv_time v2 emart">
											<table>
												<caption>
													<span class="blind">쓱배송 시간 변경 테이블입니다.</span>
												</caption>
												<colgroup>
													<col>
													<col>
													<col>
													<col>
													<col>
													<col>
												</colgroup>
												<thead>
													<tr>
														<th scope="col"></th>
														<th scope="col">날짜 5개 출력</th>
														<th scope="col">날짜 5개 출력</th>
														<th scope="col">날짜 5개 출력</th>
														<th scope="col">날짜 5개 출력</th>
														<th scope="col">날짜 5개 출력</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td colspan="6" class="codr_bubblebx_anytime"><span>근처
																이웃과 같은 시간에 받고 탄소를 줄여보세요</span></td>
													</tr>
													<!-- 만약 이미 시간이 지났다면 예약 마감이 출력되게 한다. -->
													<!-- 라디오 버튼을 누르고 계속하기 누르면 데이터를 어디에 담아둘지?? -->
													<!-- 예약이 마감되면 codr_state_finished 이 클래스 먹이기  -->
													<tr class="cdor_anytime_row ">
														<th scope="row"><strong>이날 아무때나</strong></th>
														<td class="codr_state_anytime"><span class="codr_rdo">
																<input type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_0_0" name="rsvtShppInfo_1_1"
																value="12^20240503^1600^2000^4^4^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+1 선택"> <label
																for="rsvtShppInfo_1_1_0_0"> 예약가능 </label>
														</span></td>
														<td class="codr_state_anytime"><span class="codr_rdo">
																<input type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_0_1" name="rsvtShppInfo_1_1"
																value="12^20240504^1500^1900^3^3^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+2 선택"> <label
																for="rsvtShppInfo_1_1_0_1"> 예약가능 </label>
														</span></td>
														<td class="codr_state_anytime"><span class="codr_rdo">
																<input type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_0_2" name="rsvtShppInfo_1_1"
																value="12^20240505^1200^1600^2^2^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+3 선택"> <label
																for="rsvtShppInfo_1_1_0_2"> 예약가능 </label>
														</span></td>

														<td class="codr_state_anytime"><span class="codr_rdo">
																<input type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_0_3" name="rsvtShppInfo_1_1"
																value="12^20240506^1500^1900^3^3^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+4 선택"> <label
																for="rsvtShppInfo_1_1_0_3"> 예약가능 </label>
														</span></td>

														<td class="codr_state_bookready" rowspan="6"><span
															class="codr_state"><span class="codr_ico_closed"></span><span
																class="codr_tx_closed">예약준비중이에요!</span></span></td>
													</tr>
													<tr class=" ">
														<th scope="row">10:00~14:00</th>
														
														<td class="codr_state_finished"><span>예약마감</span></td>
														
														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_1_1" name="rsvtShppInfo_1_1"
																value="10^20240504^1000^1400^1^1^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+2 선택"> <label
																for="rsvtShppInfo_1_1_1_1"> 예약가능 </label>
														</span></td>
														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_1_2" name="rsvtShppInfo_1_1"
																value="10^20240505^1000^1400^1^1^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+3 선택"> <label
																for="rsvtShppInfo_1_1_1_2"> 예약가능 </label>
														</span></td>
														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_1_3" name="rsvtShppInfo_1_1"
																value="10^20240506^1000^1400^1^1^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+4 선택"> <label
																for="rsvtShppInfo_1_1_1_3"> 예약가능 </label>
														</span></td>

													</tr>
													<tr class=" ">

														<th scope="row">12:00~16:00</th>

														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_2_0" name="rsvtShppInfo_1_1"
																value="10^20240503^1200^1600^2^2^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+1 선택"> <label
																for="rsvtShppInfo_1_1_2_0"> 예약가능 </label>
														</span></td>

														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_2_1" name="rsvtShppInfo_1_1"
																value="10^20240504^1200^1600^2^2^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+2 선택"> <label
																for="rsvtShppInfo_1_1_2_1"> 예약가능 </label>
														</span></td>
														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_2_2" name="rsvtShppInfo_1_1"
																value="10^20240505^1200^1600^2^2^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+3 선택"> <label
																for="rsvtShppInfo_1_1_2_2"> 예약가능 </label>
														</span></td>

														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_2_3" name="rsvtShppInfo_1_1"
																value="10^20240506^1200^1600^2^2^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+4 선택"> <label
																for="rsvtShppInfo_1_1_2_3"> 예약가능 </label>
														</span></td>
													</tr>
													<tr class=" ">
														<th scope="row">15:00~19:00</th>
														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_3_0" name="rsvtShppInfo_1_1"
																value="10^20240503^1500^1900^3^3^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+1 선택"> <label
																for="rsvtShppInfo_1_1_3_0"> 예약가능 </label>
														</span></td>

														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_3_1" name="rsvtShppInfo_1_1"
																value="10^20240504^1500^1900^3^3^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+2 선택"> <label
																for="rsvtShppInfo_1_1_3_1"> 예약가능 </label>
														</span></td>
														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_3_2" name="rsvtShppInfo_1_1"
																value="10^20240505^1500^1900^3^3^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+3 선택"> <label
																for="rsvtShppInfo_1_1_3_2"> 예약가능 </label>
														</span></td>

														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_3_3" name="rsvtShppInfo_1_1"
																value="10^20240506^1500^1900^3^3^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+4 선택"> <label
																for="rsvtShppInfo_1_1_3_3"> 예약가능 </label>
														</span></td>
													</tr>
													<tr class=" ">

														<th scope="row">16:00~20:00</th>
														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_4_0" name="rsvtShppInfo_1_1"
																value="10^20240503^1600^2000^4^4^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+1 선택"> <label
																for="rsvtShppInfo_1_1_4_0"> 예약가능 </label>
														</span></td>
														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_4_1" name="rsvtShppInfo_1_1"
																value="10^20240504^1600^2000^4^4^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+2 선택"> <label
																for="rsvtShppInfo_1_1_4_1"> 예약가능 </label>
														</span></td>
														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_4_2" name="rsvtShppInfo_1_1"
																value="10^20240505^1600^2000^4^4^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+3 선택"> <label
																for="rsvtShppInfo_1_1_4_2"> 예약가능 </label>
														</span></td>
														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_4_3" name="rsvtShppInfo_1_1"
																value="10^20240506^1600^2000^4^4^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+4 선택"> <label
																for="rsvtShppInfo_1_1_4_3"> 예약가능 </label>
														</span></td>
													</tr>
													<tr class=" ">
														<th scope="row">18:00~23:59</th>
														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_5_0" name="rsvtShppInfo_1_1"
																value="10^20240503^1800^2359^5^5^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+1 선택"> <label
																for="rsvtShppInfo_1_1_5_0"> 예약가능 </label>
														</span></td>


														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_5_1" name="rsvtShppInfo_1_1"
																value="10^20240504^1800^2359^5^5^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+2 선택"> <label
																for="rsvtShppInfo_1_1_5_1"> 예약가능 </label>
														</span></td>
														<td class="codr_state_finished "><span>예약마감</span></td>

														<td class=""><span class="codr_rdo"> <input
																type="radio" class="blind payTracking"
																id="rsvtShppInfo_1_1_5_3" name="rsvtShppInfo_1_1"
																value="10^20240506^1800^2359^5^5^2022^2022^A01^01^"
																data-pt-click="이마트몰 쓱배송 일자선택|타임테이블|D+4 선택"> <label
																for="rsvtShppInfo_1_1_5_3"> 예약가능 </label>
														</span></td>

													</tr>

													<tr>
														<td colspan="6"><strong>쓱배송과 새벽배송 차이를 둬서 000원이상일 경우 무료배송(기본 배송비 000원)</strong></td>
													</tr>

												</tbody>

											</table>
										</div>

										<div class="codr_sec"></div>
									</div>

									<input type="hidden" id="defiShortgProcMthd" value="99">

									<div class="codr_sec ty_nobd">
										<dl class="codr_dl" role="presentation">
											<dt class="codr_dt">
												<span class="codr_dt_tit codr_ipt_tit">품절상품 대체여부</span>
											</dt>
											<dd class="codr_dd">
												<div class="codr_pay_box">
													<div class="codr_segment_box">
														<span class="codr_segment"> <input type="radio"
															id="shortgProcMthdCdAll_1_Y" name="shortgProcMthdCdAll_1"
															class="codr_segment_item" value="1^10"> <label
															for="shortgProcMthdCdAll_1_Y" class="codr_segment_tx">대체상품으로
																배송</label>
														</span> <span class="codr_segment"> <input type="radio"
															id="shortgProcMthdCdAll_1_N" name="shortgProcMthdCdAll_1"
															class="codr_segment_item" value="1^20"> <label
															for="shortgProcMthdCdAll_1_N" class="codr_segment_tx">대체상품
																받지 않음</label>
														</span>
														<div class="codr_segment">
															<input type="radio" id="echRplcSetup_1"
																name="shortgProcMthdCdAll_1" class="codr_segment_item"
																value=""> <label for="echRplcSetup_1"
																class="codr_segment_tx">상품별 선택</label>
														</div>
													</div>
													<!-- [D] '상품별 선택' 선택 시 show (display:block)-->
													<div class="codr_tooltip_wrap ty3 on"
														style="display: none;" id="echRplcSetupLayer_1">
														<div class="codr_tooltip_cont" role="dialog"
															aria-labelledby="codr_tooltip_prodcondsel"
															aria-hidden="true">
															<div class="codr_tooltip_head">
																<strong class="codr_tooltip_tit"
																	id="codr_tooltip_prodcondsel">대체여부 상품별 선택</strong>
															</div>
															<div class="codr_tooltip_area codr_scroll">
																<div class="codr_tooltip_tbl ty_replace">
																	<table>
																		<caption>
																			<span class="blind">대체여부 상품별 선택 테이블</span>
																		</caption>
																		<colgroup>
																			<col>
																			<col style="width: 30%">
																		</colgroup>
																		<thead class="blind">
																			<tr>
																				<th scope="col">대체할 수 있는 상품 명</th>
																				<th scope="col">대체 여부 선택</th>
																			</tr>
																		</thead>
																		<tbody>
																		</tbody>
																	</table>
																</div>
															</div>														
														</div>
													</div>
												</div>
											</dd>
										</dl>
									</div>
								</div>
							</div>
							<div id="frebieItemDiv_1" style="display: none;">
								<input type="hidden" id="incFrebieItemYn_1" value="N">
							</div>
						</div>
						<div id="plccBanrDiv"></div>
					</div>
				</div>
			</div>
		</div>

		<a href="#addord_list" class="codr_btn_view" id="addord_trigger"
			style="display: none">주문더하기 선택 팝업 열기</a>
		<div class="ssg-layer-popup codr_lypop codr_lypop_orderplus"
			id="addord_list"></div>
		<script type="text/javascript"
			src="https://sui.ssgcdn.com/ui/pay/js/tools/jquery/jquery-1.9.1.min.js"></script>
		<script type="text/javascript">
		
var _MBR_ID        			= "51963846";
var IMG_PATH 				= "https://sui.ssgcdn.com/ui/ssg/img";
var NODCSN_ORD_ID 			= "1294587052";
var _DOMAIN_URL    			= "https://pay.ssg.com";
var _SSG_DOMAIN    			= "www.ssg.com";
var _MEMBER_DOMAIN 			= "member.ssg.com";
var _OAPI_DOMAIN			= "oapi.ssg.com";
var CDN_DOMAIN 			    = "https://sui.ssgcdn.com";
var _ITEM_DTL_URL 			= "http://www.ssg.com/item/itemRedirect.ssg";
var _DEAL_ITEM_URL 			= "http://www.ssg.com/item/dealItemView.ssg";
var _SHPPLOC_DOMAIN 		= "https://member.ssg.com";
var payAuthServerEnv 		= "PROD";
var DEFI_SHORTG_PROC_MTHD	= "20";
var _PAY_JS_PATH   			= "https://sui.ssgcdn.com/ui/pay/js";
var icebagNotAvailYn        = "";
var isFirstEarlyMrngShpp    = true;

	
		var CART_TYPE_CD 			= "10";
		var CART_TYPE_DTL_CD 		= "20";

var GA_ITEM_LIST = [

{	"shppTypeCd" : "10",
	"shppMainCd" : "21",
	"stdCtgNm" : "오이",
	"itemId" : "0000009592840"
}


];

var SHPPLOC_INFO_MAP = {

	1 : {
	"shpplocAntnmNm" 		: "이동영",
	"item" : {
	
	
		"1" : {
		"itemNm" 				: "백오이 (5입/봉)"
		, "shppTypeCd" 			: "10"
		, "shppTypeDtlCd" 		: "11"
		, "shortgProcMthdCd" 	: "10"
		, "rplcPsblTypeCd"  	: "10"
		, "exusItemDivCd" 		: "10"
		, "addCmptSellprc"		: "0"
		, "salestrNo" 			: "2022"
		, "shppMthdChngSalestrNo" : ""
		, "todayQshppPsblYn" 	: "N"
		, "todayTshppPsblYn" 	: "N"
		, "addOrdPsblYn" 	: "Y"
		, "nodcsnOrdShpplocSeq" : "1"
		, "nodcsnOrdShppDtlSeq" : "1"
		, "nodcsnOrdCstSeq" : "1"
		, "repTempOrdItemSeq" : "1"
		, "cartId"				: "6320152398"
		, "ordItemRepTypeCd"	: "10"
		, "ordItemTypeCd"		: "10"
		, "siteNo"				: "6001"
		, "itemChrctDivCd"		: "10"
		, "itemChrctDtlCd"		: "10"
		, "currentShppMthd"		: "R"
		, "itemRegDivCd" 		: "20"
		, "eaddShpmtCuinvYn"	: "N"
		, "pkMarketYn"		: "N"
		, "bothRsvtItemYn"      : "N"
		}
		
	<!-- 업체 주류픽업 -->
	
	},
	"shpploc" : {
	
		"1" : {
		"rsvtShppInfo"			: "",
		"dwnShppInfo" 			: "",
		"eosPickuInfo"			: "",
		"nodcsnOrdShppDtlSeq"	: "1",
		"priorSalestrNo"		: "2022",
		"salestrNo"				: "2022",
		"shppRsvtTypeCd"		: "",
		"shppDgrTypeCd"			: "",
		"siteNo"				: "6001",
		"shppCst" 				: "0",
		"dispShppcst" 			: "",
		"shppTypeCd"			: "10",
		"shppTypeDtlCd"			: "11",
		"acntrStrTypeCd"		: "01",
		"dwnIncEaddShpmtYn"     : "",
		"emIncEaddShpmtYn"      : "",
		"trIncEaddShpmtYn"      : "",
		"bothRsvtIncEaddShpmtYn" : "",
		"nodcsnOrdShppDtlSeqList" : "",
		"addOrdCapaYn"			: "N",
		"addOrdCapaInfo" 		: "",
		"isSsgZeroDgr"          : false,
		"bothRsvtShppInfoYn"    : "N"
		}
	
	
	},
	"capaInfo" : {
	"tshppCapaInfo" : {
	
	}
	, "qshppCapaInfo" : {
	
	}
	},
	"holyShppInfo" : {
	
	}
	}

};

var CART_ID = "^6320152398";
var DWN_TO_SSG_CHNG_TGT_CART_ID = "";
var SSG_TO_DWN_CHNG_TGT_CART_ID = "^6320152398";
var EOS_TO_DWN_CHNG_TGT_CART_ID = "";
var EXCPT_CART_ID = "";
var ISNT_ITEM_ADDT_OPTN_VAL = 0;


	
		var SERVER_ZONE = "";

var PLCC_BANR_INFO_MAP = {
	"crdCd75" : JSON.parse("true"),
	"crdCd76" : JSON.parse("true")
};

</script>
		<script type="text/javascript"
			src="https://sui.ssgcdn.com/ui/ssg/js/ui/ssg.view.layerpopup.js?dummy=20240502"></script>
		<script type="text/javascript"
			src="https://sui.ssgcdn.com/ui/ssg/js/ui/ssg.view.order_v2.js?dummy=20240502"></script>

		<script type="text/javascript"
			src="https://sui.ssgcdn.com/ui/pay/js/pay/common/netfunnel.js"
			charset="UTF-8"></script>
		<script type="text/javascript"
			src="https://sui.ssgcdn.com/ui/pay/js/pay/common/payLogUtil.js?dummy=20240502"></script>
		<script type="text/javascript"
			src="https://sui.ssgcdn.com/ui/pay/js/pay/common/payUtil.js?dummy=20240502"
			crossorigin></script>
		<script type="text/javascript"
			src="https://sui.ssgcdn.com/ui/pay/js/pay/common/payComm.js?dummy=20240502"
			crossorigin></script>
		<script type="text/javascript"
			src="https://sui.ssgcdn.com/ui/pay/js/pay/common/payTracking.js?dummy=20240502"
			crossorigin></script>
		<script type="text/javascript"
			src="https://sui.ssgcdn.com/ui/pay/js/pay/nodcsnOrd/ordShppInfo.js?dummy=20240502"
			crossorigin></script>

		<script type="text/javascript">
	

var reactingObj = {};
	
</script>

	</div>
	<div id="layerPopupWrapDiv" class="tip_wrap"
		style="position: absolute;"></div>
	<div id="claimlayerPopupWrapDiv" class="layer_pop"
		style="width: 0px; height: 0px; display: none;"></div>
	<div class="dimmed" style="display: none;"></div>


	<%@ include file="footer.jsp" %>
	<p style="color: white; background: white;">api-pay-prod-was13_pay02</p>
</body>
</html>
