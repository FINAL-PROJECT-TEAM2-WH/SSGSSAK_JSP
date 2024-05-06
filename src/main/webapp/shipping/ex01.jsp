<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta charset="utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>
 믿고 사는 즐거움 SSG.COM</title>







<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/common/layout.css?v=20240424" />
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/scom.css?v=20240424" />
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/popup.css?v=20240424" />
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
        title : '믿고 사는 즐거움 SSG.COM'
    });

    // 회원 관련 객체, 사용하지 말 것.
    var UserInfo = {
        isLoginYn : 'true'=='true'?'Y':'N',
        mbrTypeCd : '10',
        ckWhere : 'pc_ssgbr1'
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
</head>
<body>
<div id="pop_wrap">
    



















<!-- 회원 유형 -->

<!-- [D] 600 X 822 : 팝업사이즈 -->
<div id="pop_wrap" class="cart">
	<div id="pop_header">
		<h1 >
			국내 배송지 추가
			
		</h1>
	</div>
	<hr>
	<div id="pop_container">
		<div id="pop_content" class="content_popup delivery" style="width:540px">
			<div class="section">
				
				<div class="delivery_reg">
					<div class="aside">
						<div class="btn_delivery_reset">
							<a href="javascript:shpploc.init();">초기화</a>
						</div>
					</div>
					<form id="submitForm" name="submitForm">
						<fieldset class="fieldset">
							<legend class="blind">국내 배송지 입력</legend>
							<div class="pop_data_table tbl_style1">
								<table border="1">
								<caption>국내 배송지 설정</caption>
								<colgroup><col style="width:100px;"><col style="width:448px;"></colgroup>
								<tbody>
								
									<tr>
									<th scope="row"><label for="addressName1">주소별칭</label></th>
									<td>
										<input type="text" id="shpplocAntnmNm" name="shpplocAntnmNm" value="" class="input_text small" style="width:232px;ime-mode:active;" maxlength="20">
									</td>
									</tr>
								
								
								<tr>
								<th scope="row"><label for="rcptpeNm">받으실 분</label></th>
								<td>
									<input type="text" id="rcptpeNm" name="rcptpeNm" value="" class="input_text small" style="width:232px;ime-mode:active;" maxlength="20"> 10자 이내
								</td>
								</tr>
								<tr>
								<th class="tbl_style1" scope="row">휴대폰</th>
								<td>
									<select id="hpno1" title="휴대폰 첫자리 선택" class="select small" style="width:97px">
										<option value="">선택</option>
										<option value="010" addtOptnVal1="" addtOptnVal2="">010</option><option value="011" addtOptnVal1="" addtOptnVal2="">011</option><option value="016" addtOptnVal1="" addtOptnVal2="">016</option><option value="017" addtOptnVal1="" addtOptnVal2="">017</option><option value="018" addtOptnVal1="" addtOptnVal2="">018</option><option value="019" addtOptnVal1="" addtOptnVal2="">019</option>
									</select>
									<span class="text">-</span>
									<input type="text" id="hpno2" title="휴대폰 중간자리 입력" value="" onKeyDown="inputNumberKeyDown()" class="input_text small" maxlength="4" style="width:96px;">
									<span class="text">-</span>
									<input type="text" id="hpno3" title="휴대폰 마지막자리 입력" value="" onKeyDown="inputNumberKeyDown()" class="input_text small last" maxlength="4" style="width:96px;">
								</td>
								</tr>
								<tr>
								<th scope="row">전화번호<br>(선택)</th>
								<td>
									<select id="telno1" title="지역 번호 선택" class="select small" style="width:97px">
										<option value="">선택</option>
										<option value="02" addtOptnVal1="" addtOptnVal2="">02</option><option value="031" addtOptnVal1="" addtOptnVal2="">031</option><option value="032" addtOptnVal1="" addtOptnVal2="">032</option><option value="033" addtOptnVal1="" addtOptnVal2="">033</option><option value="041" addtOptnVal1="" addtOptnVal2="">041</option><option value="042" addtOptnVal1="" addtOptnVal2="">042</option><option value="043" addtOptnVal1="" addtOptnVal2="">043</option><option value="051" addtOptnVal1="" addtOptnVal2="">051</option><option value="044" addtOptnVal1="" addtOptnVal2="">044</option><option value="052" addtOptnVal1="" addtOptnVal2="">052</option><option value="053" addtOptnVal1="" addtOptnVal2="">053</option><option value="054" addtOptnVal1="" addtOptnVal2="">054</option><option value="055" addtOptnVal1="" addtOptnVal2="">055</option><option value="061" addtOptnVal1="" addtOptnVal2="">061</option><option value="062" addtOptnVal1="" addtOptnVal2="">062</option><option value="063" addtOptnVal1="" addtOptnVal2="">063</option><option value="064" addtOptnVal1="" addtOptnVal2="">064</option><option value="070" addtOptnVal1="" addtOptnVal2="">070</option><option value="080" addtOptnVal1="" addtOptnVal2="">080</option><option value="0505" addtOptnVal1="" addtOptnVal2="">0505</option><option value="0507" addtOptnVal1="" addtOptnVal2="">0507</option>
										<option value="010" addtOptnVal1="" addtOptnVal2="">010</option><option value="011" addtOptnVal1="" addtOptnVal2="">011</option><option value="016" addtOptnVal1="" addtOptnVal2="">016</option><option value="017" addtOptnVal1="" addtOptnVal2="">017</option><option value="018" addtOptnVal1="" addtOptnVal2="">018</option><option value="019" addtOptnVal1="" addtOptnVal2="">019</option>
									</select>
									<span class="text">-</span>
									<input type="text" title="전화번호 두번째 자리 입력" id="telno2" value="" onKeyDown="inputNumberKeyDown()" class="input_text small" maxlength="4" style="width:96px;">
									<span class="text">-</span>
									<input type="text" title="전화번호 세번째 입력" id="telno3" value="" onKeyDown="inputNumberKeyDown()" class="input_text small last" maxlength="4" style="width:96px;">
								</td>
								</tr>
								<tr>
								<th scope="row" class="vt"><span class="full_address">배송주소</span></th>
								<td class="address">
									<input type="hidden" name="shpplocSeq" id="shpplocSeq" value="" />
									<input type="hidden" name="bascShpplocYn" id="bascShpplocYn" value="" />
									<input type="hidden" name="oldZipcd" id="oldZipcd" value="" />
									<input type="hidden" name="roadNmBascAddr" id="roadNmBascAddr" value="" />
									<input type="hidden" name="roadNmDtlAddr" id="roadNmDtlAddr" value="" />
									<input type="hidden" name="lotnoBascAddr" id="lotnoBascAddr" value="" />
									<input type="hidden" name="lotnoDtlAddr" id="lotnoDtlAddr" value="" />
									<input type="hidden" name="mbrIptAddrTypeCd" id="mbrIptAddrTypeCd" value="" />
									<input type="hidden" name="mbrIptAddr" id="mbrIptAddr" value="" />
									<input type="hidden" name="shpplocRegPstCd" id="shpplocRegPstCd" value="" />
									<input type="hidden" name="addrExamRstCd" id="addrExamRstCd" value="" />
									<input type="hidden" name="rcptpeTelno" id="rcptpeTelno" value="" />
									<input type="hidden" name="rcptpeHpno" id="rcptpeHpno" value="" />

									
									
									<input type="text" id="zipcd" name="zipcd" title="우편번호 앞자리 입력" value="" class="input_text small postal" style="width:101px" maxlength="5" readonly="readonly">
									<a class="btn small normal" href="javascript:void(0)" onclick="openAddrZip();"><span>우편번호 찾기</span></a>

									<div class="addr_info" style="display:none">
										<strong class="info_tit">도로명</strong>
										<span id="roadNmAddr" name="roadNmAddr" class="info_cont notranslate">
											
												도로명주소가 없거나 확인되지 않습니다.
												
											
										</span>
										<strong class="info_tit">지번</strong>
										<span id="lotnoAddr" name="lotnoAddr" class="info_cont notranslate">
											
												지번주소가 없거나 확인되지 않습니다
												
											
										</span>
                                    </div>
								</td>
								</tr>
								</tbody>
								</table>
							</div>
						</fieldset>
					</form>
					
					<ul class="data_list small notranslate">
						<li>배송 주소를 변경하실 경우는 쇼핑 전에 변경해주세요.</li>
						<li>이마트, 트레이더스 상품은 선택한 배송지에 따라 주문하실 상품의 재고가 달라집니다.</li>
						
					</ul>
					
				</div>
			</div>
			<div class="pop_btn_area notranslate">
				<a href="javascript:shpploc.save();" class="color4">확인</a>
				<a href="javascript:void(0);" onclick="shpploc.cancel()" class="color3">취소</a>
			</div>
		</div>
		<button class="button_close" type="button" onclick="window.close();">팝업닫기<span class="ir"></span></button>
	</div>
</div>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/jquery.form.js"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ui.flicking.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ui.flip.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/lib/jquery.cookie.js"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/lib/jquery.menu-aim.js"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ui.ssg.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/ui/ui-base.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/ssg/js/commonUtil.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/member/js/common/ssgGnb.js?v=20240424"></script>
<script type="text/javascript" src="//sui.ssgcdn.com/ui/member/js/common/commJs.js?v=20240424"></script>

<script type="text/javascript" src="/comm/js/memberJs.ssg"></script>
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
            "pcid" 				: "17131152624436742730857"
            , "fsid" 			: "scv8y40r01440uapiyh0"
            , "siteno"		    : "1001" // #443767 siteno 하드코딩 요청
            , "tarea" 			: ""
            , "log_type_flag" 	: "t"
            , "memberid" 		: "SSG.A9A9C919F04C2F990D153D1A0AD85A88"
            , "ga"				: "125"
            , "mbrgrdcd"		: "10"
            , "ckwhere"		    : "pc_ssgbr1"
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


<script type="text/javaScript" defer="defer">

$(document).ready(function() {
	perdc = "";

	
	
	window.resizeTo(640, 720);

	
});
var shpploc = {
	perdc : ""
	, pageDiv : ""
	, callbackUrl : "myssg"
	, campaignYn : ""
	, origin : ""
	, type: ""
	, csbot: ""
	, shpplocRegPstCd: ""
	, result : null
	, save : function() {
		var self = this;
		if (!this.validate()) return;
		setData();

		// 정기배송지 등록은 등록만 되게 설정
		/* if(this.perdc == "Y"){
			$('input[name="saveBasicOnlyType"]').val("");
		}
 */
		$('#submitForm').ajaxSubmit({
			type: "POST"
			, url: "/comm/popup/shpplocForm.ssg"
			, dataType: "json"
			, beforeSubmit: function() {
				loadingIndicator.show();
			}
			, success: function(map) {
				self.result = map;
				if (map.result == "00") {
					if (shpploc.perdc == "Y") self.actionPerdc();
					else self.action();
				} else if (map.result == "97") {
					alert('휴대폰 번호를 정확하게 다시 입력해주세요.');
				} else if (map.result == "96") {
					alert('전화번호를 정확하게 다시 입력해주세요.');
				} else if (map.result == "95") {
					alert('로그인이 필요한 서비스입니다.');
					window.close();
				} else {
					alert('입력값 형식이 유효하지 않습니다.');
				}
				loadingIndicator.hide();
			}
			, error: function(request, status, error) {
				alert('일시적인 장애로 서비스가 일시 중단되었습니다. 잠시 후 다시 시도해주세요.');
				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				loadingIndicator.hide();
			}
		});
	}
	, action : function() {
		var self = this;
		// insert
		if (this.result["histTypeCd"] == "I" && this.type === 'nonMember') {
			$.ajax({
				type: 'GET',
				url: "/comm/popup/setBascShpploc.ssg",
				dataType: 'jsonp',
				jsonp : 'callBack',
				data: { 'shpplocSeq' : this.result["shpplocSeq"] }
			})
			.always(function() {
				if(self.origin.indexOf('pay') > -1 ){
					document.location.href = self.origin + '/callback/shpplocPop.ssg';
				} else {
					document.location.href = self.origin + '/comm/popup/shpplocCallBack.ssg';
				}
			});
		} else if (this.result["histTypeCd"] == "I" && confirm('새 배송지가 등록되었습니다. \n지금 등록한 배송지를 기본배송지로 설정하시겠습니까?')) {
			$.ajax({
				type: "GET"
				, url: "/comm/popup/setBascShpploc.ssg"
				, dataType: "jsonp"
				, jsonp : "callBack"
				, data: { "shpplocSeq" : this.result["shpplocSeq"] }
				, success: function(map) {
					if (map["CHNG_SALESTR_NM_YN"] === 'Y' && !(this.pageDiv === 'orderpage' || this.pageDiv === 'orderDetail')) {
						var param = 'type=I&bascShpplocYn=Y';
						param += '&emSaleStrNm=' + map["EM_SALESTR_NM"]
						param += '&trSaleStrNm=' + map["TR_SALESTR_NM"]
						param += '&newEmSaleStrNm=' + map["NEW_EM_SALESTR_NM"]
						param += '&newTrSaleStrNm=' + map["NEW_TR_SALESTR_NM"];
						popupWin('/comm/popup/saleStrChngNotc.ssg?' + encodeURI(param), '', 500, 380, 'no', 'no');
					} else {
						alert(map.resultMsg);
					}
					// 팝업 및 바닥 리프레쉬
					self.refresh();
				}
				, error: function(request, status, error) {
					alert('일시적인 장애로 서비스가 일시 중단되었습니다. 잠시 후 다시 시도해주세요.');
				}
			});
		} else {
			this.refresh();
		}

		// update
		if (this.result["histTypeCd"] == "U") {
			// 배송점포 변경 여부 확인
			if (this.result["CHNG_SALESTR_NM_YN"] === 'Y' && !(this.pageDiv === 'orderpage' || this.pageDiv === 'orderDetail')) {
				var param = 'type=U&bascShpplocYn=' + this.result["BASC_SHPPLOC_YN"];
				param += '&emSaleStrNm=' + this.result["EM_SALESTR_NM"]
				param += '&trSaleStrNm=' + this.result["TR_SALESTR_NM"]
				param += '&newEmSaleStrNm=' + this.result["NEW_EM_SALESTR_NM"]
				param += '&newTrSaleStrNm=' + this.result["NEW_TR_SALESTR_NM"];
				popupWin('/comm/popup/saleStrChngNotc.ssg?' + encodeURI(param), '', 500, 380, 'no', 'no');
			} else {
				alert(this.result["resultMsg"]);
			}
			
	    	if (this.csbot === 'Y') {
				
	    	}
			this.refresh();
		}
	}
	, actionPerdc : function() {
		if (this.result["histTypeCd"] == "I") {
			alert('신규 배송지가 추가되었습니다.' + '정기배송지 설정은 정기배송지 설정 팝업에서 다시한번 확인하시고 설정해 주세요.');
		} else if (this.result["histTypeCd"] == "U") {
			alert('배송지 수정이 완료되었습니다.' + '정기배송지 설정은 정기배송지 설정 팝업에서 다시한번 확인하시고 설정해 주세요.');
		}
		document.location.href = '/comm/popup/shppPerdcList.ssg';
	}
	, cancel : function() {
		if (this.callbackUrl === "myssg") {
			if (confirm('배송지 목록으로 이동하면 작성하던 배송지 목록이 사라집니다. \n이동하시겠습니까?')) {
				window.close();
			}
			return;
		}
		if (this.shpplocRegPstCd === "12") {
			window.close();
			return;
		}
		if (this.campaignYn !== "Y") {
			this.list();
			return;
		}
		window.close();

	}
	, list : function() {
		if(confirm('배송지 목록으로 이동하면 작성하던 배송지 목록이 사라집니다. \n이동하시겠습니까?')) {
			if (this.perdc == "Y") {
				document.location.href = '/comm/popup/shppPerdcList.ssg';
			} else {
				var param = '?callbackUrl=' + this.callbackUrl + '&pageDiv=' + pageDiv;
				document.location.href = '/comm/popup/shpplocList.ssg' + param;
			}
		}
	}
	, refresh : function() {
		var retUrl = '';

		if (this.callbackUrl === 'myssg') {
			opener.document.location.reload();
			window.close();
			return;
		}

		if (this.campaignYn === 'Y') {
			if (this.callbackUrl.indexOf('pay') > -1 || this.origin.indexOf('pay') > -1) {
				retUrl = '/callback/shpplocPop.ssg';
			} else {
				retUrl = this.origin + '/comm/popup/shpplocCallBack.ssg';
			}
			document.location.href = retUrl;
			return;
		}

		retUrl = 'https://member.ssg.com/comm/popup/shpplocList.ssg?pageDiv=' + this.pageDiv + '&callbackUrl=' + this.callbackUrl + '&csbot=' + this.csbot;
		if (this.callbackUrl.indexOf('pay') > -1 && (this.pageDiv === 'orderpage' || this.pageDiv === 'orderDetail')) {
			document.location.href = retUrl;
		} else if (this.callbackUrl.indexOf('pay') > -1 ) {
			document.location.href = this.origin + '/callback/shpplocPop.ssg?retUrl=' + escape(retUrl);
		} else if (this.shpplocRegPstCd === '12'){
			document.location.href = this.origin + '/callback/shpplocPop.ssg';
		} else {
			document.location.href = this.origin + '/comm/popup/shpplocCallBack.ssg?retUrl=' + escape(retUrl);
		}
	}
	, validate : function() {

		
		$("#shpplocAntnmNm, #rcptpeNm").each(function() {
			var val = fnReturnNotSpecialChar($(this).val());
			$(this).val(val.substring(0, 20));
		});
		
		if ($('input[name="shpplocAntnmNm"]').val() !== undefined && $('input[name="shpplocAntnmNm"]').val().isBlank()) {
			alert('주소별칭을 입력해주세요.');
			$('input[name="shpplocAntnmNm"]').focus();
			return false;
		}
		
		if($('input[name="rcptpeNm"]').val().isBlank()) {
			alert('받는 분을 입력해 주세요.');
			$('input[name="rcptpeNm"]').focus();
			return false;
		}
		
		for (var i=1; i <= 3; i++) {
			if($('#hpno' + i).val().isBlank()) {
				alert('휴대폰 번호를 선택해주세요.');
				$('#hpno' + i).focus();
				return false;
			}
		}
		
		if($('#zipcd').val().isBlank()) {
			$(this).siblings('.btn').focus();
			alert('우편번호찾기를 선택해주세요.');
			return false;
		}
		
		if($('input[name="lotnoDtlAddr"]').val().isBlank()){
			alert('배송주소를 입력해주세요.');
			return false;
		}

		return true;
	}
	, init : function() {
		$('input[name="shpplocAntnmNm"]').val("");
		$('input[name="rcptpeNm"]').val("");
		$("[id^='hpno']").val("");
		$("[id^='telno']").val("");
		$("#zipcd").val("");
		$("#oldZipcd").val("");
		$("[id^='roadNm']").val("");
		$("[id^='lotno']").val("");
		$("#mbrIptAddrTypeCd").val("");
		$("#addrExamRstCd").val("");
		$("#mbrIptAddr").val("");
		$("#otherAddrHome").html("");

		$("#lotnoAddr").html("");
		$("#RoadNmAddr").html("");
		$('#submitForm div.addr_info').hide();
	}
};

var perdc = "N";
var pageDiv = (typeof $.getUrlVar('pageDiv') === 'undefined') ? '' : $.getUrlVar('pageDiv');

function setOtherAddr() {
	$("#otherAddrHome").text('지번주소 : ' + $("#lotnoBascAddr").val() + ' ' + $("#lotnoDtlAddr").val());
}


function searchZipcdCallBack(addrObj) {
	var addrVal = ["zipcd", "oldZipcd", "lotnoBascAddr", "lotnoDtlAddr", "lotnoAddr", "roadNmBascAddr", "roadNmDtlAddr", "roadNmAddr", "mbrIptAddrTypeCd", "mbrIptAddr", "addrExamRstCd"];
	for (var i in addrVal) {
		try {
			if (addrVal[i] === "lotnoAddr")
				$("#" + addrVal[i]).text(decodeURI(addrObj["lotnoBascAddr"]) + ' ' + decodeURI(addrObj["lotnoDtlAddr"]));
			else if (addrVal[i] === "roadNmAddr")
				$("#" + addrVal[i]).text(decodeURI(addrObj["roadNmBascAddr"]) + ' ' + decodeURI(addrObj["roadNmDtlAddr"]));
			else
				$("#" + addrVal[i]).val(decodeURI(addrObj[addrVal[i]]));
		} catch (e) {}
	}
	setOtherAddr();

	$('#submitForm div.addr_info').show();
	if (addrObj.roadNmBascAddr === '' && addrObj.roadNmDtlAddr === '') {
		$('.addr_info .no_addr_layer').show();
	} else {
		$('.addr_info .no_addr_layer').hide();
	}
}


function setData() {
	$('input[name="rcptpeHpno"], input[name="rcptpeTelno"]').val("");
	var phone = [];
	$("[id^='hpno']").each(function() {
		if ($(this).val() !="") phone.push($(this).val()); }
	);
	if (phone.length == 3) $('input[name="rcptpeHpno"]').val(phone.join("-"));
	phone = [];
	$("[id^='telno']").each(function() {
		if ($(this).val() !="") phone.push($(this).val()); }
	);
	if (phone.length == 3) $('input[name="rcptpeTelno"]').val(phone.join("-"));
}

function openAddrZip() {
	popupWin('/addr/popup/zipcd.ssg', '우편번호찾기', 500, 745, 'yes', 'no');
}


$('#rcptpeNm').on('keypress keyup keydown', function(e) {
	if($(this).val().length > 10) {
		$(this).val($(this).val().substring(0, 10));
		e.preventDefault();
	};
});
</script>
</div>
</body>
</html>