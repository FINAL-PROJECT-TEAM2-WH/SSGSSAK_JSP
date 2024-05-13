<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

			    <!-- 만든 코드 -->
			    <select  id="first_select" onchange="load_child();"></select>
			    <select  id="sec_select" onchange="update_summary();"></select>
			      <div id="option_summary"></div>
			        
			        
			    <script type="text/javascript">
			        let first_select = [
			            {v:"",t:""},
			            <c:forEach var="option" items="${productoption}">
			                <c:if test="${empty option.optionRef}">
			                    {v:"${option.id}",t:"${option.optionName}"},
			                </c:if>
			            </c:forEach>
			        ];
			
			
			        let sec_select_data = {};
			        <c:forEach var="option" items="${productoption}">
			            <c:if test="${!empty option.optionRef}">
			                if (!sec_select_data["${option.optionRef}"]) {
			                    sec_select_data["${option.optionRef}"] = [];
			                }
			                sec_select_data["${option.optionRef}"].push({v:"${option.id}", t:"${option.optionName}"});
			            </c:if>
			        </c:forEach>;
			
			        function load_first() {
			            let h = [];
			            first_select.forEach(item => {
			                h.push('<option value="' + item.v + '">' + item.t + '</option>');
			            });
			            document.getElementById("first_select").innerHTML = h.join("");
			        }
			
			
			        function load_child() {
			            let first_select_value = document.getElementById("first_select").value;
			            let h = [];
			            if (first_select_value ) {
			                sec_select_data[first_select_value].forEach(item => {
			                    h.push('<option value="' + item.v + '">' + item.t + '</option>');
			                });
			            }
			            document.getElementById("sec_select").innerHTML = h.join("");
			            update_summary();
			        }
			
			        function update_summary() {
			            let first_select_value = document.getElementById("first_select").value;
			            let sec_select_value = document.getElementById("sec_select").value;
			            let summary_div = document.getElementById("option_summary");
			            let selectedOption = null;
			            
			            if (sec_select_data[first_select_value]) {
			                selectedOption = sec_select_data[first_select_value].find(function(item) {
			                    return item.v == sec_select_value;
			                });
			            }
			            
			            if (selectedOption) {
			                let firstOptionText = first_select.find(item => item.v == first_select_value).t;
			                let secondOptionText = selectedOption.t;
			                let price = selectedOption.price;
			                
			                summary_div.innerHTML = `
			                    <div>
			                        <span>${firstOptionText} / ${secondOptionText}</span>
			                        <button onclick="remove_option()">X</button>
			                        <div>
			                            <button onclick="change_quantity(-1)">-</button>
			                            <input type="text" id="quantity" value="1" readonly>
			                            <button onclick="change_quantity(1)">+</button>
			                        </div>
			                        <span>${price}원</span>
			                    </div>
			                `;
			            } else {
			                summary_div.innerHTML = '';
			            }
			        }

			        // 옵션 제거 함수
			        function remove_option() {
			            document.getElementById("option_summary").innerHTML = '';
			        }

<<<<<<< HEAD
    <label for="subOptions">정장사이즈</label>
    <select id="subOptions">
        <option value="" disabled selected>선택하세요</option>
    </select>
<!-- 						진짜 옵션
									<div class="cdtl_opt_bx">
									<div id="cdtl_opt_bx_uitem" class="cdtl_empty">
									c:if 로 count>1일때  ajax로 여러개 생성하는 버튼 만들어주기.
										<div class="cdtl_opt_item selecedItem" id="item_00000_1020"
											name="item_00000_1020" data-optn-type="oneitem_result"
											data-uitem-id="00000" data-salestr-no="1020"
											data-salestr-nm="시코르강남역점">
											<dl>
												<dt>
													<p>
														<strong class="notranslate"></strong> 시몽 테르미크 150ml [No.1
														헤어에센스-손상모발용]
													</p>
												</dt>
												<dd class="cdtl_art_l">
													<div class="cdtl_amount">
														<a href="javascript:void(0);" class="cdtl_b_minus"
															onclick="ItmOp.changeOrdQty(this, -1, 1, 10);"><span
															class="blind">빼기</span></a> <span class="cdtl_inpbx"><input
															type="text" id="cdtl_item_amount1" title="수량입력" value="1"
															onchange="ItmOp.changeOrdQty(this, 0, 1, 10);"></span> <a
															href="javascript:void(0);" class="cdtl_b_plus"
															onclick="ItmOp.changeOrdQty(this, 1, 1, 10);"><span
															class="blind">더하기</span></a>
													</div>
												</dd>
												<dd class="cdtl_art_r">
													<span class="price notranslate"><em
														class="ssg_price" data-prc="55800">55,800</em><span
														class="ssg_tx">원</span></span>
												</dd>
											</dl>
										</div>
									</div>
									<div id="cdtl_opt_bx_cmpt" class="cdtl_empty"></div>
								</div> -->
=======
			        // 수량 변경 함수
			        function change_quantity(amount) {
			            let quantityInput = document.getElementById("quantity");
			            let newQuantity = parseInt(quantityInput.value) + amount;
			            if (newQuantity > 0) {
			                quantityInput.value = newQuantity;
			            }
			        }

			       
			        window.onload = function() {
			            load_first();
			        }
			    </script>
			    

>>>>>>> 5c0e79e94d8b196c4d149be86520e1d0868343e5

</body>
</html>