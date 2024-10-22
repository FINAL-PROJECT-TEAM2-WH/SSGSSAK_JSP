

if (! window.console) {
    window.console = {
        log: function() {},
        dir: function() {},
        warn: function() {},
        error: function() {},
        debug: function() {}
    };
}
/* StartWith 방어 코딩 -> 2015.05.28 */
if(typeof String.prototype.startsWith != 'function'){
    String.prototype.startsWith = function (str){
        return this.indexOf(str) === 0;
    };
}

// 모바일 ajax error code 0 대응
var ajaxCompleteSkip = ["searchKeyWord.ssg", "WNRun.do"];
$.ajaxSetup({
    beforeSend: function(jqXHR, settings) {
        if (typeof settings.error === 'function') {
            var errorfunc = settings.error;
            settings.error = function(jqXHR2, textStatus, errorThrown) {
                if (jqXHR2.status !== 0) errorfunc(jqXHR2, textStatus, errorThrown);
            };
        }
    },
    complete : function(jqXHR, textStatus) {

    }
});

/**
 * app 팝업
 */
function appPopup(url) {
    var customUrl = mobile.customUrl.popup;

    customUrl = customUrl.replace('{URL}','');
    customUrl += encodeURI(url + "&title=SNS공유하기");

    location.href= customUrl;
}

/**
 * app 브라우저 띄우기
 */
function appBroswer(url, type, isNew) {
    var customUrl = mobile.customUrl.popup_out;
    customUrl = customUrl.replace('{URL}',url);

    if(type == 'pc') {
        $.cookie('usePCmode', 'Y', {path: '/', domain: '.ssg.com'});
        // 앱인 경우(특히 아이패드) 앱외부 브라우저로 창이 열리는데 이떄 cookie값이 연동되지 않기 때문에 parameter를 넘겨서 cookie를 재생성함
        if ( url.indexOf("?") == -1 ) {
            url += '?usePCmode=Y';
        } else {
            url += '&usePCmode=Y';
        }
        customUrl = mobile.customUrl.popup_out.replace('{URL}',url);
    } else if (type == 'mo') {
        // 모바일버전보기는 본창에서 처리되므로 cookie 재생성 issue 없음
        $.cookie('usePCmode', 'N', {path: '/', domain: '.ssg.com'});
    }

    if(isApp == 'N') {
        if(isNew == 'Y'){
            window.open(url);
        }else{
            location.href = url;
        }
        return;
    }

    if(type == 'pc' && isPad) {
        // pc 보기 ( 패드만 대응 )
        location.href= customUrl;
    } else if(type =='stack' && isPad){
        url = url.replace(/(\?|\&){1}_mpop=new/gi,'');

        var separator = "&";
        if(url.indexOf("?") == -1) {
            url = url.replace("&","?");
            separator = "?";
        }

        location.href= url + separator + "_mpop=new";
    } else {
        if(type) {
            if(isNew == 'Y'){
                window.open(url);
            }else{
                location.href = url;
            }
        } else {
            location.href= customUrl;
        }
    }
}

/**
 * 모바일 로그인
 * t = 'auth', ''
 */
function mobileLogin(t, ref, cartSaveData) {
    var url = _mobileLogin(t, ref, cartSaveData);
    if (self !== top) {
        window.top.location.href = url; //iframe에서의 호출처리
    } else {
        location.href = url;
    }
}

function _mobileLogin(t, ref, cartSaveData) {
    if (t == null || t == '') t = '';
    var type = t || "";

    var retURL = location.protocol + "//" + location.hostname;
    if (ref) {
        if (ref.startsWith('http')) {
            retURL = ref;
        } else {
            retURL = retURL + ref;
        }
    } else if (self !== top) {
        retURL = window.parent.location.href;
    } else {
        retURL = location.href;
    }

    if ("cart,payment,direct,gift".indexOf(t) > -1) {
        $.cookie('cartSaveData', JSON.stringify(cartSaveData), {
            expires: 1,
            path: '/',
            domain: '.ssg.com'
        });
    }

    var SSL_DOMAIN = settings.domain.protocol + settings.domain.domain + (settings.isMobile ? '/m' : '');
    return SSL_DOMAIN + "/member/login.ssg?retURL=" + encodeURIComponent(retURL) + "&t=" + type;
}

function mobileLoginTop(t, ref, cartSaveData) {
    var url = _mobileLogin(t, ref, cartSaveData);
    window.top.location.href = url;
}

/**
 * 성인 로그인 윈도우 열기
 * @param callBack : 로그인후 콜백 함수
 */
function checkAdult(ref){
    var SSL_DOMAIN = settings.domain.protocol + settings.domain.domain;

    var retURL = location.protocol + "//" + location.hostname;
    if(ref) {
        if(ref.startsWith('http')) {
            retURL += ("?retURL=" + encodeURIComponent(ref));
        } else {
            retURL += ("?retURL=" + encodeURIComponent(retURL + ref));
        }
    }

    retURL = retURL.replace("#","");

    popupWin(SSL_DOMAIN + "/member/popup/popupCheckAdult.ssg?retURL=" + encodeURIComponent(retURL), "", 600, 670, "yes", "no");
}

/**
 * 모바일 성인 인증
 * @param callBack : 로그인후 콜백 함수
 */
function mobileChkAdult(ref){
    var SSL_DOMAIN = settings.domain.protocol + settings.domain.domain + settings.domain.context;

    var retURL = "";
    if(ref) {
        retURL = ref.startsWith('http') ? ref : (location.protocol + "//" + location.hostname + ref);
    } else if (self !== top) {
        retURL = window.parent.location.href;
    } else {
        retURL = location.href;
    }

    if(UserInfo.isLoginYn == 'Y') {
        retURL = SSL_DOMAIN + "/member/checkAdult.ssg?retURL=" + encodeURIComponent(retURL) + "&_mpop=new";
        if (self !== top) { //iframe에서의 호출처리
            window.top.location.href = retURL;
        } else {
            location.href = retURL;
        }
    } else {
        mobileLogin("auth", retURL);
    }
}


/**
 * 우편번호 찾기 팝업
 */
function openPopupSearchZipcd(retUrl) {
    if(retUrl) {
        retUrl = "?retUrl="+escape(retUrl);
    } else {
        retUrl = "";
    }

    var domain = settings.domain.domain;
    if (retUrl.indexOf('customer.sfcmall.emart.com') != -1) {
        domain = settings.domain.sfc.emartMember;
    } else if (retUrl.indexOf('customer.sfcmall.com') != -1) {
        domain = settings.domain.sfc.member;
    }

    popupWin(settings.domain.protocol + domain + settings.domain.context + '/addr/popup/zipcd.ssg' + retUrl, '우편번호찾기', 500, 700, 'yes', 'no');
}

/**
 * 파일 업로드 객체
 * Example  : FileUpload.addFilePopup('fnCallback', 2, 'Y', 'N')
 * Callback Function : fnCallback(fileUploadedInfo) - 파일업로드 팝업에서 처리 후 돌아올 본페이지(바닥창)에 아규먼트 첫번째에 넣어준 콜백함수명으로 함수 선언, argument 로 fileUploadedInfo 객체를 넘겨줌
 */
var FileUpload = {
    callbackFnNm : null,    // 필수
    limitSize : 2,          // default 2 MB
    imgYn : 'N',                // default 'N'
    videoYn : 'N',          // default 'N'

    /**
     * 팝업 파일 업로드
     * @param {String} callbackFnNm 팝업창 파일 업로드 처리 후 부모창에서 실행될 함수명
     * @param {Number} limitSize 파일의 최대 업로드 가능 크기(단위 MB)를 정의, 기본값 2MB
     * @param {String} imgYn 이미지형태의 파일만 업로드시 'Y', 그외 'N'
     * @param {String} videoYn 동영상형태의 파일만 업로드시 'Y', 그외 'N'
     */
    addFilePopup : function (callbackFnNm, limitSize, imgYn, videoYn) {
        if (callbackFnNm == undefined || callbackFnNm == '') {
            return false;
        } else {
            this.callbackFnNm = callbackFnNm;
        }

        if (limitSize > 0) { this.limitSize = limitSize; }
        if (imgYn == 'Y') { this.imgYn = imgYn; this.videoYn = 'N'; }
        if (videoYn == 'Y') { this.videoYn = videoYn; this.imgYn = 'N'; }

        popupWin(location.protocol + '//' + ssg.domain.ssg + '/comm/popup/fileUploadForm.ssg', '파일업로드', 500, 306, 'no', 'yes');
    }
};

/**
 * 해당 숫자 또는 숫자형 문자를 해당 길이에 맞게 왼쪽으로 '0'문자 삽입하여 반환
 * @Example : padLeft('1', 2)
 * @param a : 대상, 숫자 또는 숫자형 문자
 * @param b : 길이, 숫자 또는 숫자형 문자
 * */
function padLeft(a, b) {
    var l = (a + '').length;
    if (l >= b) {
        return a + '';
    } else {
        var arr = [];
        for (var i = 0; i < b - l ;i++) {
            arr.push('0');
        }
        arr.push(a);
        return arr.join('');
    }
}

/**
 * 인증 호출
 * @param callBack : 인증후 콜백 함수
 * @param type : I = iPing , H = phone
 */
function certCall(callBack, type, param, forwardUrl){
    $("#certFrame").remove();
    window.certCallBack = callBack;
    var param = param || "";
    var svcCode = $.getUrlVar('svcCode') ? $.getUrlVar('svcCode').replace("#","") : '';
    var referer = document.referrer;

    var obj = {
        url : {
            "I" : settings.domain.context + "/member/auth/iPin.ssg?svcCode=" + svcCode + "&referer=" + referer
            , "H" : settings.domain.context + "/member/auth/phone.ssg?svcCode=" + svcCode + "&referer=" + referer
            , "B" : settings.domain.context + "/member/auth/corp.ssg?svcCode=" + svcCode + "&referer=" + referer
        }
        , retCode : {
            "I" : "23"
            , "H" : "32"
            , "B" :  ""
        }
    };

    var domain = location.protocol + "//" + location.hostname;
    var retURL = domain + settings.domain.context + "/member/auth/certComplete.ssg?type=" + type;

    if(isApp == 'Y'){
        forwardUrl = forwardUrl.replace(/(\?|\&){1}_mpop=new/gi,'');

        if(forwardUrl.indexOf("?") == -1) {
            forwardUrl = forwardUrl.replace("&","?");
        }

        $.cookie('forward_url', forwardUrl, {expires : 1, path: '/', domain : '.ssg.com'});
        $.cookie('backward_url', location.href, {expires : 1, path: '/', domain : '.ssg.com'});

        var param = obj.retCode[type] + retURL + '&forwardUrl=' + escape(forwardUrl) + '&backwardUrl=' + escape(location.href);
        location.href = obj.url[type] + "&param=" + escape(param.replace("#",""));
    } else if(isMobile){
        var paramValue = obj.retCode[type] + retURL;
        window.open(obj.url[type] + "&param=" + escape(paramValue.replace("#","")) , '', 'width=450, height=500, resizable=0, scrollbars=no, status=0, titlebar=0, toolbar=0, left=300, top=200' );
    } else {
        var iframe = $("<iframe />").attr({"src": obj.url[type] + param , "id" : "certFrame", "title" : "인증프레임"}).css("display", "none");
        $("body").append(iframe);

        iframe.load(function(){
            document.getElementById("certFrame").contentWindow.openWindow(obj.retCode[type] + retURL);
        });
    }
}

/**
 * 페이스북연동가입 완료 후 콜백페이지에서 호출
 * fcbookJoinMbrConversionCallBack.jsp 에서 호출됨
 * Example  : callbackFbMbrConversionSubmit()
 */
function callbackFbMbrConversionSubmit(simpleMbrId) {
    var SSL_DOMAIN = settings.domain.protocol + settings.domain.domain + settings.domain.context;
    var formTagHtmlArr = [];
    formTagHtmlArr.push('<form id="callbackFbMbrConversion" action="' + SSL_DOMAIN + '/member/join/authMbrConversion.ssg" method="post">');
    formTagHtmlArr.push('<input type="hidden" name="simpleMbrId" value="' + simpleMbrId + '">');
    formTagHtmlArr.push('</form>');
    $('body').append(formTagHtmlArr.join(''));
    $('body').find('form#callbackFbMbrConversion').submit();
}

// 장바구니 처리
function go_Payment(){
    var obj = $.data(document.body, "obj");
    formCart(obj, "payment", true);
}

function fnCartQtyChng(tag) {
    var ordQty = $(tag).val();
    $(tag).parent().siblings('.item_info').find("input[name=ordQty]").val(ordQty);
    $(tag).siblings('label').text(ordQty);
}

var frontCommCart = {
    put: function(thisTag, type) {


        var areaParent = $(thisTag).parents("[data-react-tarea-cd]");
        var tareaCd = areaParent.data("react-tarea-cd");
        var cartMpngDts = Date.now();

        var    tag = $(thisTag).next(".disp_cart_data"),
            cartTypeCd = $(tag).data('cartType')+"",
            cartInfloSiteNo = $(tag).data('cartInfloSiteNo')+"",
            cartOrdQty = $(tag).data('cartOrdqty')+"",
            cartData = JSON.parse($(tag).text()),

            cartSaveData = {
                "cartTypeCd" : cartTypeCd, //장바구니유형코드(Cart Type Code) [10:국내, 20:해외, 30:정기배송]
                "infloSiteNo" : cartData.useForcedSsg == 'Y' ? '6005' : cartInfloSiteNo, //유입사이트번호(Inflow Site Number) #375260 수정
                "tareaCd" : tareaCd ,
                "cartMpngDts" : cartMpngDts ,
                "items" : [ //상품 정보
                    { //상품1
                        "siteNo" : cartData.siteNo, //사이트번호(Site Number)
                        "itemId" : cartData.itemId, //상품ID(Item Identification)
                        "uitemId" : cartData.uitemId, //단품ID(Unit Item Identification)
                        "ordQty" : cartOrdQty, //주문수량(Order Quantity)
                        "salestrNo" : cartData.salestrNo, //영업점번호(Sale Store Number) [백화점 상품 일 경우 영업점]
                        "hopeShppDt" : "", //희망배송일자(Hope Shipping Date), [배송일 지정 상품 일 경우 사용]
                        "cartPsblType" : cartData.cartPsblType ,
                        "bsplItemDivCd" : cartData.bsplItemDivCd ,
                        "shppTypeDtlCd" : cartData.shppTypeDtlCd
                    }
                ]
            };

        //#393886 [전시유닛] 비로그인 장바구니 담기 가능하도록 수정 - 웹뷰영역 (앱 체크 로직 삭제)

        if(isMobile && cartTypeCd == "30") {
            if(settings.UserInfo.isLoginYn == "N") {
                mobileLogin();
            } else {
                if(settings.UserInfo.shpplocMod == "SHARE") {
                    if(confirm('정기배송은 함께장보기 해제 후 가능합니다. 해제하시겠습니까?')) {
                        // 공유장바구니
                        setBascShpploc();
                        return false;
                    } else {
                        return false;
                    }
                }
            }
            return false;
        }

        if(cartData.advertBidId != null && cartData.advertBidId != '' && cartData.advertBidId != undefined){
            // 광고상품일 경우 광고ID (advertBidId) 를 JSON에 추가
            var ordItemInfloList = [];
            var ordItemInflo = new Object();
            ordItemInflo.ordItemInfloDivCd = '09';
            ordItemInflo.ordItemInfloTgtId = (cartData.advertExtensTeryDivCd == null ? '' : cartData.advertExtensTeryDivCd) + cartData.advertBidId;
            ordItemInfloList.push(ordItemInflo);
            cartSaveData.items[0].ordItemInfloList = ordItemInfloList;
        }

        if(cartData.goItemDetailYn == "Y" && cartData.cartPsblType == "") {
            if(cartData.dealItemYn == "Y" || (isMobile && cartData.drctPurchYn == "N") || cartData.itemChrctDivCd == "H0") {
                alert(cartData.msgItemDetail);
                location.href = cartData.itemLnkd;
                return false;

            } else if(isMobile && cartData.drctPurchYn == "Y") {
                if(confirm(cartData.msgItemDetail)) {
                    if(settings.UserInfo.shpplocMod == "SHARE") {
                        // 공유장바구니 바로가기는 상품상세로
                        location.href = cartData.itemLnkd;
                    } else {
                        nodcsnOrdder(cartSaveData);
                    }
                }
                return false;
            } else {
                alert($.i18n.prop('i18n.front.cart.옵션선택.msg'));
                location.href = cartData.itemLnkd;
                return false;
            }
        }

        if(settings.UserInfo.isLoginYn == "N" && type != "payment" && cartTypeCd == "30") {
            var cartCallback = function(){
                if (typeof deferredObj != "undefined") {
                    deferredObj = new $.Deferred();
                }

                if ( isMobile == false ) {
                    $("#loginBtn").hide();
                    $("#joinBtn").hide();
                    $("#logoutBtn").show();
                }

                initGnb();
                cart(cartSaveData, null, null, cartData.bothSsgMorningShppYn);
                historySsg.reInitHistory();
            };

            login('', cartCallback);
            return false;
        }


        if (type == 'payment') {
            if(settings.UserInfo.isLoginYn == "N" && !isMobile) {
                var cartCallback = function(){
                    if (typeof deferredObj != "undefined") {
                        deferredObj = new $.Deferred();
                    }
                    nodcsnOrdder(cartSaveData)
                };
                login('', cartCallback);
                return false;
            }

            nodcsnOrdder(cartSaveData);
        } else {
            cart(cartSaveData, null, null, cartData.bothSsgMorningShppYn);
        }
    }
};

function formCart(tag, type, bypass){

    var formTag;
    var cartTypeCd;

    if( $(tag).hasClass('btn_dcart') || $(tag).hasClass('schd_deil')) {
        formTag = $(tag).parent().siblings(".cm_item").find(".item_info")
        cartTypeCd = "30";
    } else {
        formTag = $(tag).siblings(".item_info");
        cartTypeCd = formTag.find("input[name=cartTypeCd]").val();
    }

    var itemSellTypeCd = formTag.find("input[name=itemSellTypeCd]").val();
    var sellPrc = formTag.find("input[name=sellPrc]").val();
    var itemChrctDivCd = formTag.find("input[name=itemChrctDivCd]").val();
    var exusItemDtlCd = formTag.find("input[name=exusItemDtlCd]").val();
    var hopeShppDdDivCd = formTag.find("input[name=hopeShppDdDivCd]").val();
    var freeGiftOffer = formTag.find("input[name=freeGiftOffer]").val();
    var frebieInclYn = formTag.find("input[name=frebieInclYn]").val();
    var itemOrdOptYn = formTag.find("input[name=itemOrdOptYn]").val();
    var dealItemYn = formTag.find("input[name=dealItemYn]").val();

    var itemId = formTag.find("input[name=itemId]").val();
    var siteNo = formTag.find("input[name=siteNo]").val();
    var uitemId = formTag.find("input[name=uitemId]").val();
    var salestrNo = formTag.find("input[name=salestrNo]").val();
    var advertBidId = formTag.find("input[name=advertBidId]").val();
    var advertExtensTeryDivCd = formTag.find("input[name=advertExtensTeryDivCd]").val();
    var bsplItemDivCd = formTag.find("input[name=bsplItemDivCd]").val();
    var shppTypeDtlCd = formTag.find("input[name=shppTypeDtlCd]").val();

    var cartSaveData = {
        "cartTypeCd" : cartTypeCd, //장바구니유형코드(Cart Type Code) [10:국내, 20:해외, 30:정기배송]
        "infloSiteNo" : formTag.find("input[name=infloSiteNo]").val(), //유입사이트번호(Inflow Site Number)
        "items" : [ //상품 정보
            { //상품1
                "siteNo" : siteNo, //사이트번호(Site Number)
                "itemId" : itemId, //상품ID(Item Identification)
                "uitemId" : uitemId, //단품ID(Unit Item Identification)
                "ordQty" : formTag.find("input[name=ordQty]").val(), //주문수량(Order Quantity)
                "salestrNo" : salestrNo, //영업점번호(Sale Store Number) [백화점 상품 일 경우 영업점]
                "hopeShppDt" : "", //희망배송일자(Hope Shipping Date), [배송일 지정 상품 일 경우 사용]
                "frebieInclYn" : frebieInclYn ,
                "bsplItemDivCd" : bsplItemDivCd , //가능상품구분코드
                "shppTypeDtlCd" : shppTypeDtlCd  //배송타입상세코드
            }
        ]
    };

    if (!bypass && isMobile && cartTypeCd == "30") {
        if(settings.UserInfo.isLoginYn == "N") {
            mobileLogin();
        } else {
            if(settings.UserInfo.shpplocMod == "SHARE") {
                if(confirm('정기배송은 함께장보기 해제 후 가능합니다. 해제하시겠습니까?')) {
                    // 공유장바구니
                    setBascShpploc();
                    return false;
                } else {
                    return false;
                }
            }
        }
        return false;
    }

    if(advertBidId != '' && advertBidId != null){
        // 광고상품일 경우 광고ID (advertBidId) 를 JSON에 추가
        var ordItemInfloList = [];
        var ordItemInflo = new Object();
        ordItemInflo.ordItemInfloDivCd = '09';
        ordItemInflo.ordItemInfloTgtId = (advertExtensTeryDivCd == null ? '' : advertExtensTeryDivCd) + advertBidId;
        ordItemInfloList.push(ordItemInflo);
        cartSaveData.items[0].ordItemInfloList = ordItemInfloList;
    }

    if(typeof cmptItems != "undefined") {
        cartSaveData.items.cmptItems = cmptItems;
    }

    if(typeof addOrdOptns != "undefined") {
        cartSaveData.items.addOrdOptns = addOrdOptns;
    }

    if(itemOrdOptYn == 'Y' || itemSellTypeCd != '10' || sellPrc == '0' || ( itemChrctDivCd != "" && "40,60,80,C0,H0".indexOf(itemChrctDivCd) > -1 ) || exusItemDtlCd == '30' || hopeShppDdDivCd != '') {
        if(isMobile) {
            var check = false;

            if(itemOrdOptYn == 'Y' || itemSellTypeCd != '10'){
                check = true;
                alert("이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요.");매
            } else if(hopeShppDdDivCd != '' && hopeShppDdDivCd != '40'){
                check = true;
                alert("해당 상품은 희망배송일 지정이 필요한 상품입니다.\n상품상세에서 배송일을 선택해주세요");
            } else {
                if(confirm("해당 상품은 바로 구매만 가능합니다.\n바로구매 페이지로 이동하시겠습니까?")){
                    if(settings.UserInfo.shpplocMod == "SHARE") {
                        //공유장바구니 바로구매 상품상세로
                        check = true;
                    } else {
                        nodcsnOrdder(cartSaveData);
                        return false;
                    }
                }
            }

            if(check){
                var urlPath = '';

                if(dealItemYn == "Y") {
                    urlPath = "/item/dealItemView.ssg?itemId=" + itemId + "&siteNo=" + siteNo + "&salestrNo=" + salestrNo + (advertBidId == "" ? '' : ("&advertBidId=" + advertBidId));
                } else {
                    urlPath = "/item/itemView.ssg?itemId=" + itemId + "&siteNo=" + siteNo + "&salestrNo=" + salestrNo + (advertBidId == "" ? '' : ("&advertBidId=" + advertBidId));
                }

                // 히스토리에서 장바구니담기시 해당 지정몰로 이동해야함 #170186
                var landingDomain = formTag.find("input[name=landingDomain]").val();

                location.href = (typeof landingDomain == 'undefined' ? '' : location.protocol + '//' + landingDomain) + urlPath;
            }
            return false;
        } else {
            if(dealItemYn == "Y" ) {
                alert("이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요.");
                location.href = "/item/dealItemView.ssg?itemId=" + itemId + "&siteNo=" + siteNo + "&salestrNo=" + salestrNo + (advertBidId == "" ? '' : ("&advertBidId=" + advertBidId));
                return false;
            }else if( itemChrctDivCd != "" && "H0".indexOf(itemChrctDivCd) > -1 ) {
                var zone = settings.zone == 'prod' ? '' : settings.zone + '-';
                var domainUrl = '//' + (zone == 'qa2-' ? zone.replace('qa2', 'qa') : zone) + 'triip.ssg.com';
                alert("이 상품은 옵션이 있는 상품 입니다.\n상품상세에서 옵션을 선택해주세요.");
                location.href = domainUrl+"/hotel/product/hotels/detail.ssg?itemId=" + itemId + "&siteNo=" + siteNo + "&salestrNo=" + salestrNo + (advertBidId == "" ? '' : ("&advertBidId=" + advertBidId));
                return false;
            } else {
                alert($.i18n.prop('i18n.front.cart.옵션선택.msg'));
                location.href = "/item/dealItemView.ssg?itemId=" + itemId + "&siteNo=" + siteNo + "&salestrNo=" + salestrNo + (advertBidId == "" ? '' : ("&advertBidId=" + advertBidId));
                return false;
            }
        }
    }

    if(settings.UserInfo.isLoginYn == "N" && type != "payment" && cartTypeCd == "30") {
        var cartCallback = function(){
            if (typeof deferredObj != "undefined") {
                deferredObj = new $.Deferred();
            }

            if ( isMobile == false ) {
                $("#loginBtn").hide();
                $("#joinBtn").hide();
                $("#logoutBtn").show();
            }

            initGnb();
            cart(cartSaveData);
            historySsg.reInitHistory();
        };

        login('', cartCallback);
        return false;
    }


    if (type == 'payment') {

        if(!bypass && settings.UserInfo.isLoginYn == "N" && !isMobile) {
            $.data(document.body, "obj", tag, type);
            var paymentCallback = function(){go_Payment();};
            login('', paymentCallback);
            return false;
        }

        nodcsnOrdder(cartSaveData);
    } else {
        cart(cartSaveData);
    }
}

var ItemCart = {

    cartOrdrFlag : true,

    cart : function(obj){

        var areaParent = $(obj).parents("[data-react-tarea-cd]");
        var tareaCd = areaParent.data("react-tarea-cd");
        var cartMpngDts = Date.now();

        var retData = null;

        if( ItemCart.cartOrdrFlag == true){
            ItemCart.cartOrdrFlag = false;
            var objData = ItemCart.getFrebieCartType(obj);

            try {
                $.ajax({
                    url: '//' + settings.domain.oapi + '/front/cart/save.ssg',
                    data : JSON.stringify(objData),
                    type : "POST",
                    contentType: "text/plain",
                    accept: 'application/json',
                    cache : false,
                    async : false,
                    xhrFields: {
                        withCredentials: true
                    },
                    success: function(data){
                        retData = data;
                    },
                    error: function(jqXHR, textStatus, errorThrown){
                    },
                    complete: function(jqXHR, textStatus){
                        try {
                            setTimeout(function () {
                                ItemCart.cartOrdrFlag = true;
                            }, 1000);
                        } catch(e) {
                            ItemCart.cartOrdrFlag = true;
                        }
                    }
                });
            }catch(err){
                try {
                    setTimeout(function () {
                        ItemCart.cartOrdrFlag = true;
                    }, 1000);
                } catch(e) {
                    ItemCart.cartOrdrFlag = true;
                }
            }
        }

        return retData;
    },

    nodcsnOrdder : function(obj){
        var retData = null;

        if( ItemCart.cartOrdrFlag == true) {
            ItemCart.cartOrdrFlag = false;
            var objData = ItemCart.getFrebieCartType(obj);

            try{
                $.ajax({
                    url: '//' + settings.domain.oapi + '/front/cart/drctPurch.ssg',
                    data : JSON.stringify(objData),
                    type : "POST",
                    contentType: "text/plain",
                    accept: 'application/json',
                    cache : false,
                    async : false,
                    xhrFields: {
                        withCredentials: true
                    },
                    success: function(data){
                        retData = data;
                    },
                    error: function(jqXHR, textStatus, errorThrown){
                    },
                    complete: function(jqXHR, textStatus){
                        if (typeof NetFunnel_Complete == "function") {
                            try {
                                NetFunnel_Complete();
                            } catch (err) {
                            }
                        }
                        try {
                            setTimeout(function () {
                                ItemCart.cartOrdrFlag = true;
                            }, 1000);
                        } catch(e) {
                            ItemCart.cartOrdrFlag = true;
                        }
                    }
                });
            }catch(err){
                try {
                    setTimeout(function () {
                        ItemCart.cartOrdrFlag = true;
                    }, 1000);
                } catch(e) {
                    ItemCart.cartOrdrFlag = true;
                }
            }
        }

        return retData;
    },

    getFrebieCartType : function(obj){
        var objData = obj;

        var areaParent = $(objData).parents("[data-react-tarea-cd]");
        var tareaCd = areaParent.data("react-tarea-cd");

        if (objData != null && objData != ""){
            if( objData.items.length == 1 && ( (objData.items[0].frebieInclYn != 'undefined' && objData.items[0].frebieInclYn == 'Y') || (objData.items[0].cartPsblType != 'undefined' && objData.items[0].cartPsblType == 'frebie') )){
                $.ajax({
                    url : "/comm/cart/cartPsblType.ssg"
                    , data : {"json" : JSON.stringify(objData)}
                    , method : "post"
                    , cache : false
                    , async : false
                }).done(function(data){
                    objData = data;
                }).fail(function(result,status,error){
                    ItemCart.errMsg(objData);
                    alert('잠시 후 다시 시도해주세요.');
                });
            }
        }

        for(var i=0, cnt=objData.items.length; i<cnt; i++) {
            var eachObj = objData.items[i];
            if( eachObj.frebieInclYn != 'undefined' ){
                delete eachObj.frebieInclYn;
            }
            if( eachObj.cartPsblType != 'undefined' ){
                delete eachObj.cartPsblType;
            }
        }

        return objData;
    },

    getCartInfoTrk : function(obj){
        var cartInfo = '';

        var areaParent = $(obj).parents("[data-react-tarea-cd]");
        var tareaCd = areaParent.data("react-tarea-cd");

        $.ajax({
            url : "/comm/cart/cartInfo.ssg"
            , method : "post"
            , cache : false
            , async : false
            , timeout: 1000
        }).done(function(data){
            cartInfo = data;
            obj.cartCnt = data.cartCnt;
            obj.cartNm = data.cartNm;
        }).fail(function(result,status,error){
        });

        return cartInfo;
    },

    setCartTrk : function(obj, type){
        $.ajax({
            url : "/comm/" + type + "/trk.ssg"
            , data : {"resText" : JSON.stringify(obj)}
            , method : "post"
            , cache : false
            , async : true
        }).done(function(data){
        }).fail(function(result,status,error){
        });
    },

    errMsg : function(objData){
        try {
            $.ajax({
                type: "GET",
                data : {
                    "errParam1" : objData + '',
                    "errParam2" : JSON.stringify(objData),
                    "json" : JSON.stringify(objData)
                },
                url: "/comm/cartErrLog.ssg",
                async : true,
                cache : false
            });
        } catch(e){ }
    }
};

function nodcsnOrdder(obj){
    if ( typeof emergencyItemIds != "undefined" && emergencyItemIds != "" ) {
        if ( obj != null && obj != "" && obj.items.length == 1 && emergencyItemIds.indexOf(obj.items[0].itemId) > -1 ) {
            alert("품절된 상품입니다.");
            return false;
        }
    }

    NetFunnel_Action({}, {
        success : function(ev, ret){
            var retCartData = ItemCart.nodcsnOrdder(obj);

            if (retCartData != null) {
                if( retCartData.resCd == '0000' ) {
                    document.location.href = retCartData.resUrl;
                } else {
                    alert(retCartData.resMsg);
                }
            } else {
                alert('잠시후 다시 시도해주세요.');
            }
        }
    });
}

function cart(obj, memberYn, vItemViewYn, bothSsgMorningShppYn) {
    var isSuccess = false;
    var itemViewYn = vItemViewYn || 'N';

    if ( typeof emergencyItemIds != "undefined" && emergencyItemIds != "" ) {
        if ( obj != null && obj != "" && obj.items.length == 1 && emergencyItemIds.indexOf(obj.items[0].itemId) > -1 ) {
            alert("품절된 상품입니다.");
            return false;
        }
    }

    var retCartData = ItemCart.cart(obj);

    if (retCartData != null) {
        if(retCartData.resCd == '0000'){

            var cartInfo = ItemCart.getCartInfoTrk(retCartData);
            retCartData.cartNm = cartInfo.cartNm;

            isSuccess = true;

            if(!isMobile && location.host.indexOf('thehowdy.ssg.com') == -1) {
                $("#mbrCartCntSpan").text(cartInfo.cartCnt);
                $("#mbrCartCntInfo").show();

                $("#skyCartCntSpan").text(cartInfo.cartCnt);
                $("#skyCartCntInfo").show();
            }

            if( isMobile == true || location.host.indexOf('thehowdy.ssg.com') > -1) {
                // 기존 내용 삭제
                if($('#cartCntSpan').length && $('#cartCntSpan')[0].nextSibling) {
                    $('#cartCntSpan')[0].nextSibling.textContent = "";
                }
                if($('#searchCartCntSpan').length && $('#searchCartCntSpan')[0].nextSibling) {
                    $('#searchCartCntSpan')[0].nextSibling.textContent = "";
                }
                if($('#itemCartCntSpan').length && $('#itemCartCntSpan')[0].nextSibling) {
                    $('#itemCartCntSpan')[0].nextSibling.textContent = "";
                }

                // gnb 장바구니
                if($('#cartCntSpan').length) {
                    $('#cartCntSpan').after(cartInfo.cartCnt);
                }

                // 검색 레이어 장바구니
                if($('#searchCartCntSpan').length) {
                    $('#searchCartCntSpan').after(cartInfo.cartCnt);
                }

                // 상품상세 헤더 장바구니
                if($('#itemCartCntSpan').length) {
                    $('#itemCartCntSpan').after(cartInfo.cartCnt);
                }

                if($("#cartCnt").length){
                    $("#cartCnt").text(cartInfo.cartCnt);
                    $("#cartCnt").parent().show();
                }

                if ( isApp == 'Y') {
                    if (typeof cartInfo.cartCnt != "undefined" ){
                        oSsgWebView.sendAppMessage('cartCount', {'count': cartInfo.cartCnt + ""});
                    }
                    oSsgWebView.sendAppMessage('cartUpdate');
                }
            }

            if (itemViewYn == 'N') {
                var additionalMsg = '';
                if((settings.locale && settings.locale == 'ko-KR') && (bothSsgMorningShppYn && bothSsgMorningShppYn == 'Y')) {
                    additionalMsg = '\n\n가격 및 혜택이 다를 수 있으니, 상품정보를 확인해주세요.';
                }
                alert(retCartData.resMsg);
            }
            //facebook pixel
            if(typeof fbq !== 'undefined') {
                fbq('track', 'AddToCart', {content_type: 'product', content_ids:[obj.items[0].itemId]});
            }

        } else if(retCartData.resCd == 'CS0001'&& isMobile) {
            if(confirm('마스터에 의해 함께장보기가 종료되었습니다. 기본배송지로 변경 후 이용해주세요. (재참여를 원하시면 마스터에게 문의해주세요)')) {
                setBascShpploc();
                return false;
            } else {
                return false;
            }
        } else if(retCartData.resCd == 'CS0002'&& isMobile) {
            $.cookie('PT', '', {expires: 0, path: '/', domain: '.ssg.com'});
            if(ssg.View.layout) {
                if($.isFunction(ssg.View.layout.toastAlert)) {
                    setTimeout(function(){
                        location.reload();
                    }, 3000);
                    ssg.View.layout.toastAlert('마스터에 의해 함께장보기가 종료되었습니다.','기본배송지로 변경 후 이용해주세요. (재참여를 원하시면 마스터에게 문의해주세요.)',{timeout:3000}).show();
                }
            } else {
                location.reload();
            }
        } else {
            alert(retCartData.resMsg);
        }
    } else {
        alert("잠시 후 다시 시도해주세요.");
    }

    return isSuccess;
}

function setBascShpploc() {
    var SSL_DOMAIN = settings.domain.protocol + settings.domain.domain + settings.domain.context;
    $.ajax({
        type: 'GET',
        url: SSL_DOMAIN + '/cookie/setBascShpploc.ssg',
        dataType: 'jsonp',
        jsonp : 'callBack',
        success: function(map) {

            if (isApp == "Y") {
                setTimeout(function() { location.reload(); }, 500);
                if(isAppCartShare == "Y") {
                    document.location.href = mobile.customUrl.prefix + '://status/changeSharedCart?modeYn=N';
                } else {
                    document.location.href = mobile.customUrl.prefix + '://status/reloadData/deliveryLayer';
                }
            } else {
                location.reload();
            }
        },
        error: function(request, status, error) {
            alert('일시적인 장애로 서비스가 일시 중단되었습니다. 잠시 후 다시 시도해 주세요.');
            location.reload();
        }
    });
}

function giftService(obj, isNetfunnel){
    go_giftService(obj, isNetfunnel, false);
}

function go_giftService(obj, isNetfunnel, isPopup, width, height){
    if (UserInfo.isLoginYn === "N") {
        if (isMobile) {
            mobileLogin('order', '', obj);
        } else {
            login('order');
        }
        return false;
    }

    if(isPopup){
        if( width === undefined || width === null || width === 0 ){
            width = screen.width / 2;
        }
        if( height === undefined || height === null || height === 0 ){
            height = screen.height / 2;
        }
    }

    if( !!isNetfunnel && isNetfunnel == 'Y' ){
        NetFunnel_Action({}, {
            success : function(ev, ret){
                call_giftService(obj, isPopup, width, height, isNetfunnel);
            }
        });
    }else{
        call_giftService(obj, isPopup, width, height);
    }
}

var call_giftService = function(obj, isPopup, width, height, isNetfunnel){
    var retCartData = ItemCart.nodcsnOrdder(obj);

    if( !!isNetfunnel && isNetfunnel == 'Y' ){
        if (typeof NetFunnel_Complete == "function") {
            try {
                NetFunnel_Complete();
            } catch (err) {
            }
        }
    }
    if (retCartData != null) {
        if(retCartData.resCd === '0000'){
            if(isPopup){
                popupWin(retCartData.resUrl, "", width, height, "yes", "no");
            }else{
                location.href = retCartData.resUrl;
            }
        } else {
            alert(retCartData.resMsg);
        }
    } else {
        alert("처리 중 오류가 발생했습니다. 잠시 후 다시 시도해주세요.");
    }
}

/**
 * 브라우저 타이틀변경
 * @param titleStr - 타이틀문자열
 */
function setDocumentTitle(titleStr) {
    if (!titleStr || titleStr == '') { return; }
    document.title = titleStr + ', ' + document.title.split(', ')[1];
}

/**
 * 콤마추가
 */
function getCommaAdd(value){
    value = value+'';
    var num = value.replace(/,/g, "");
    var num_str = num.toString();
    var result = '';

    for(var i=0; i<num_str.length; i++) {
        var tmp = num_str.length-(i+1);
        if(i%3==0 && i!=0) result = ',' + result;
        result = num_str.charAt(tmp) + result ;
    }

    return result;
}

/**
 * 로그인 윈도우 열기
 * Example  : login(t, callBack, arg)
 * t = 'order' , ''
 * @param callBack : 로그인후 콜백 함수
 */
var loginPopup = "";

function login(t, callBack, ref, wiselogParamStr) {
    if(loginPopup && !loginPopup.closed) {
        loginPopup.focus();
        return false;
    }

    if(settings.UserInfo.isLoginYn == "Y") {
        location.reload();
        return false;
    }

    var type = t || '';
    if(!!callBack) {
        window.loginCallBack = callBack;
    } else {
        window.loginCallBack && delete window.loginCallBack;
    }
    var ref = !!ref ? '&ref=' + escape(ref) : '';
    var wiseLogParam = !!wiselogParamStr ? '&' + wiselogParamStr : '';
    var SSL_DOMAIN = settings.domain.protocol + settings.domain.domain;
    var originSite = location.protocol + "//" + location.hostname;
    var width = 764;
    var height = 532;

    if (SSL_DOMAIN.indexOf('thehowdy.ssg.com') > -1) {
        width = 500;
        height = 640;
    }

    loginPopup = popupWin(SSL_DOMAIN + "/member/popup/popupLogin.ssg?originSite=" + escape(originSite) + "&t=" + type + ref + wiseLogParam + "&retURL="+ encodeURIComponent(document.location), "", width, height, "yes", "no");
}

// 해쉬를 파싱해서 오브젝트를 반환함.
function parseHash(){
    var obj     = {};
    var hash    = location.hash;

    if(hash.length != 0){
        hash = hash.substring(hash.indexOf("#")+1);
        var arr = hash.split("&");

        for(var i=0 ; i < arr.length ; i++){
            var arr1 = arr[i].split("=");

            if(arr1.length > 1){
                obj[arr1[0]] = arr1[1];
            }else{
                obj[arr1[0]] = "";
            }
        }
    }

    return obj;
}

// 스카이스크래퍼 배송지 변경 팝업
function popupshpplocList(wiselogParamStr) {
    if (UserInfo.isLoginYn != 'Y') {
        login();
        return;
    }
    var url = settings.domain.protocol + settings.domain.domain + "/comm/popup/shpplocList.ssg?";

    if(wiselogParamStr) {
        url += (wiselogParamStr + "&");
    }

    popupWin(url + "callbackUrl=" + encodeURIComponent(location.protocol+"//"+settings.localDomain+"/comm/popup/sslCallback.ssg"), "", 600, 822, "yes", "no");
}

// 옴니서비스 동의 캠페인 팝업호출
function popupOmniAgreeCamp() {
    location.href = settings.domain.protocol + settings.domain.domain + (settings.isMobile ? '/m' : '') + "/myssg/myinfoMng/infoUtlAgree.ssg?menu=infoUtlAgree";
}

// red club
function popupRedClub() {
    location.href = location.protocol + "//" + settings.domain.ssg + '/event/eventDetail.ssg?promId=1100320853';
}

// wiselog 수집용 껍데기 url 호출
function trackingForWiseLog(clickArea){
    $.get("/trackingForWiseLog.ssg?click=" + clickArea);
}

function wiseLog(type, gbn){
    $.get("/crm/" + type + ".ssg?gbn=" + gbn);
}

function fn_arrivalNotiReg(itemId, siteNo, salestrNo) {

    if( UserInfo.isLoginYn != "Y" ) {
        login();
        return;
    }

    var url = location.protocol + '//' + settings.domain.ssg + '/myssg/activityMng/itemNotiReg.ssg?itemId='+itemId+'&siteNo='+siteNo+'&salestrNo='+salestrNo+'&infloSiteNo='+settings.curr_siteno;
    popupWin(url, '입고알림', 644, 692, "yes", "no");

}

function goCmptIdLiveNewsPnshop(relativePathYn){
    $.ajax({
        url: '/comm/ajaxCmptIdLiveNewsPnshop.ssg',
        success: function(result) {
            if(result == ''){
                alert('금일 진행되는 신문광고가 없습니다.');
            }else{
                // SSG 메인에도 노출되는 이슈가 생겨서 절대경로로 변경함. pay, member에서 사용하지 않는 변수 var ssg.domain 사용함.< 다른 부분에서 사용할 경우 에러 >
                if(typeof relativePathYn != "undefined" && relativePathYn == "Y"){ //상품상세에서 진입 시 상대 경로로 유입 -방수인P 요청
                    location.href = "/plan/planShop.ssg?planShopId=" + result;
                }else{
                    location.href = location.protocol + '//'+ ssg.domain.emart + "/plan/planShop.ssg?planShopId=" + result;
                }
            }
        }
    });
}

var SsgPickup = {
    mobile : {
        getStrNm : function(click_tag, itemId) {

            var magicpickTag = $(click_tag).parents('.benefit_lst').find('.magicpick_tt');
            if(magicpickTag.hasClass('on')) {
                $(click_tag).parents('.benefit_lst').addClass('jp_on');
            } else {
                $.ajax({
                    url : "/comm/ajaxPickupSalestrNm.ssg",
                    data : {
                        itemId : itemId
                    },
                    method : 'get'
                }).done(function(result) {
                    var emArray = [];
                    if(result.length == 0) {
                        emArray[0] = '<em>가능점포가 없습니다.</em>';
                    } else {
                        for(var x = 0; x < result.length; x++) {
                            emArray[x] = '<em>' + result[x] + '</em>';
                        }
                    }

                    magicpickTag.addClass('on');
                    magicpickTag.html(emArray.join(', '));
                    $(click_tag).parents('.benefit_lst').addClass('jp_on');
                });
            }

        },

        removeStrNm : function(click_tag) {
            $(click_tag).parents('.benefit_lst').removeClass('jp_on');
        },

        getStrNmNew : function(click_tag, itemId) {

            var magicpickTag = $(click_tag).parents('.cmunit_benefit_lst').find('.cmunit_magicpick_tt_layer');
            var magicpickParents = $(click_tag).parents('.cmunit_benefit_lst');
            $.ajax({
                url : "/comm/ajaxPickupSalestrNm.ssg",
                data : {
                    itemId : itemId
                },
                method : 'get'
            }).done(function(result) {
                var emArray = [];
                if(result.length == 0) {
                    emArray[0] = '<em>가능점포가 없습니다.</em>';
                } else {
                    for(var x = 0; x < result.length; x++) {
                        emArray[x] = '<em>' + result[x] + '</em>';
                    }
                }

                magicpickParents.addClass('on');
                magicpickTag.html(emArray.join(', '));
            });

        },
        getStoreNm : function(click_tag, itemId,siteNo) {
            var magicpickTag = $(click_tag).parents('.cmunit_benefit_lst').find('.cmunit_magicpick_tt_layer');
            var magicpickParents = $(click_tag).parents('.cmunit_benefit_lst');

            var magicpickTagNew = $(click_tag).parents('.ssgitem_bottom_label').find('.ssgitem_dotlst');
            var magicpickParentsNew = $(click_tag).parents('.ssgitem_bottom_label');

            var magicpickTagDept = $(click_tag).parents('.mnsditem_taglist').find('.mnsditem_tagtip_layer');
            var magicpickParentsDept = $(click_tag).parents('.mnsditem_taglist');

            var magicpickTagGrocery = $(click_tag).parents('.mnemitem_tag').find('.mnemitem_tagtip_dotlst');
            var magicpickParentsGrocery = $(click_tag).parents('.mnemitem_tag');

            if(siteNo == '6001'){
                var pickInfo = '<em>이마트 전국 매장에서 판매중입니다.(일부 점포 제외)</em>';
                magicpickParents.addClass('on');
                magicpickTag.html(pickInfo);
                magicpickParentsNew.addClass('on');
                magicpickTagNew.html(pickInfo);
                magicpickParentsDept.addClass('on');
                magicpickTagDept.html(pickInfo);
                magicpickParentsGrocery.addClass('on');
                magicpickTagGrocery.html(pickInfo);
            }else if(siteNo == '6002'){
                var pickInfo = '<em>트레이더스  전국 매장에서 판매중입니다.(일부 점포 제외)</em>';
                magicpickParents.addClass('on');
                magicpickTag.html(pickInfo);
                magicpickParentsNew.addClass('on');
                magicpickTagNew.html(pickInfo);
                magicpickParentsDept.addClass('on');
                magicpickTagDept.html(pickInfo);
                magicpickParentsGrocery.addClass('on');
                magicpickTagGrocery.html(pickInfo);
            }else{
                $.ajax({
                    url : "/comm/ajaxPickupSalestrNm.ssg",
                    data : {
                        itemId : itemId
                    },
                    method : 'get'
                }).done(function(result) {
                    var emArray = [];
                    if(result.length == 0) {
                        emArray[0] = '<em>가능점포가 없습니다.</em>';
                    } else {
                        for(var x = 0; x < result.length; x++) {
                            emArray[x] = '<em>' + result[x] + '</em>';
                        }
                    }

                    magicpickParents.addClass('on');
                    magicpickTag.html(emArray.join(', '));
                    magicpickParentsNew.addClass('on');
                    magicpickTagNew.html(emArray.join(', '));
                    magicpickParentsDept.addClass('on');
                    magicpickTagDept.html(emArray.join(', '));
                });
            }

        },
        removeStrNmNew : function(click_tag) {
            $(click_tag).parents('.ssgitem_bottom_label').removeClass('on');
            $(click_tag).parents('.mnsditem_taglist').removeClass('on');
            $(click_tag).parents('.mnemitem_tag').removeClass('on');
        }
    },

    pc : {
        getStrNm : function(event, click_tag, itemId) {

            //body click시 layer 닫힘.
            if (event.stopPropagation) {
                event.stopPropagation();
            } else if (window.event) {
                window.event.cancelBubble = true;
            }

            var welTarget = $(click_tag);
            var magicPickLayer = welTarget.parent().find('.magicpick_tip_layer');

            if(welTarget.hasClass('on')) {
                welTarget.trigger('hideMagicpickup');
            } else {

                if(!magicPickLayer.hasClass('on')) {
                    $.ajax({
                        url : "/comm/ajaxPickupSalestrNm.ssg",
                        data : {
                            itemId : itemId
                        },
                        method : 'get'
                    }).done(function(result) {
                        var emArray = [];
                        if(result.length == 0) {
                            emArray[0] = '<em>가능점포가 없습니다.</em>';
                        } else {
                            for(var x = 0; x < result.length; x++) {
                                emArray[x] = '<em>' + result[x] + '</em>';
                            }
                        }

                        magicPickLayer.addClass('on');
                        magicPickLayer.html(emArray.join(', '));
                        welTarget.trigger('showMagicpickup');
                    });
                } else {
                    welTarget.trigger('showMagicpickup');
                }
            }
        },
        getStoreNm : function(click_tag, itemId,siteNo) {
            var magicpickTagDept = $(click_tag).parents('.mnsditem_tag').find('.mnsditem_magicpick_lst');
            var magicpickTagGrocery = $(click_tag).parents('.mnemitem_tag').find('.mnemitem_tagtip_dotlst');

            if(siteNo == '6001'){
                var pickInfo = '<li>이마트 전국 매장에서 판매중입니다.(일부 점포 제외)</li>';
                magicpickTagDept.html(pickInfo);
                magicpickTagGrocery.html(pickInfo);
            }else if(siteNo == '6002'){
                var pickInfo = '<li>트레이더스  전국 매장에서 판매중입니다.(일부 점포 제외)</li>';
                magicpickTagDept.html(pickInfo);
                magicpickTagGrocery.html(pickInfo);
            }else{
                $.ajax({
                    url : "/comm/ajaxPickupSalestrNm.ssg",
                    data : {
                        itemId : itemId
                    },
                    method : 'get'
                }).done(function(result) {
                    var emArray = [];
                    if(result.length == 0) {
                        emArray[0] = '<li>가능점포가 없습니다.</li>';
                    } else {
                        for(var x = 0; x < result.length; x++) {
                            emArray[x] = '<li>' + result[x] + '</li>';
                        }
                    }
                    magicpickTagDept.html(emArray);
                    magicpickTagGrocery.html(pickInfo);
                });
            }

        }
    }
};

/**
 * 상품유닛에서 선물하기 버튼 클릭 시
 * */
var frontCommGift = {
    // type [10:선물하기, 20:선물조르기]
    put: function(thisTag, type) {
        var    tag = $(thisTag).next(".disp_cart_data"),
            giftData = JSON.parse($(tag).text()),
            giftInfloSiteNo = $(tag).data('cartInfloSiteNo')+"",

            giftItem = {
                siteNo: giftData.siteNo,
                itemId: giftData.itemId,
                uitemId: giftData.uitemId,
                salestrNo: giftData.salestrNo,
                cmptItems: [],
                addOrdOptns: [],
                hopeShppDt: '',
                bsplItemDivCd: giftData.bsplItemDivCd,
                shppTypeDtlCd: giftData.shppTypeDtlCd,
                ordQty: 1
            };

        var giftBtnShowType = giftData.giftBtnShowType;
        var giftBtnActType = giftData.giftBtnActType;
        var giftBtnMsg = giftData.giftBtnMsg;

        if(giftBtnActType != "undefined" && giftBtnActType != "" && giftBtnActType == "S") {
            if(confirm(giftData.giftBtnMsg)) {
                setBascShpploc();
                return false;
            } else {
                return false;
            }
        }

        if ( giftBtnShowType != "undefined" && giftBtnShowType != "" && (giftBtnShowType == "L" || giftBtnShowType == "A") ) {
            if ( giftBtnActType == "N" ) {
                // 선물 버튼 노출은 되나 선물 안됨 (코너에 선물 안되는 상품 입력 또는 앱 롱탭에서 발생)
                alert(giftBtnMsg);
                return false;

            } else if ( giftBtnActType == "G" ) {
                // 선물 버튼 노출 되나 상품상세 또는 퀵뷰
                alert(giftBtnMsg);
                location.href = giftData.itemLnkd;
                return false;

            } else if ( giftBtnActType == "Y") {
                var giftItems = [];
                giftItems.push(giftItem);

                if (type == "undefined" || type == "") {
                    type = "10"; // 선물하기
                }

                var reqItem = {
                    ordInfloDivCd: type,
                    cartTypeCd: '10',
                    infloSiteNo : giftInfloSiteNo,
                    items : giftItems
                };

                giftService(reqItem, 'Y');

            } else {
                alert("선물불가 상품입니다.");
                return false;
            }

        } else {
            alert("선물불가 상품입니다.");
            return false;
        }

    }
};