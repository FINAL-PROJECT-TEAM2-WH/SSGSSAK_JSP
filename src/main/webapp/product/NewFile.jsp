<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

												<div class="cdtl_item" id="_ordOpt_area" data-optn-type="uitem"	data-react-tarea-cd="00006_000000537">
													<dl class="cdtl_dl cdtl_opt_group">
														<!-- <dt>정장디자인</dt> 옵션 -->
														<dd data-react-unit-type="text"
															data-react-unit-text="[{&quot;type&quot;:&quot;tarea_addt_val&quot;,&quot;value&quot;:&quot;드롭다운셀렉트박스&quot;}]">
															<select id="ordOpt1" data-opt-depth="1"
																data-target="#_ordOpt_area" data-template="#_dropdown"
																class="_dropdown" title="정장디자인"
																onchange="ItmOp.changeUitemIptn(this);"
																style="display: none;"><option value="">선택하세요.</option>
																
																<option data-tarea="드롭다운" value="2027">2027</option>
																<option data-tarea="드롭다운" value="2028">2028</option>
																<option data-tarea="드롭다운" value="2030">2030</option>
																
																</select>
															<div class="cdtl_opt clickable"
																data-react-tarea-dtl-cd="t00060">
																<a href="#" class="cdtl_opt_select _drop_select"><span
																	class="txt">2028</span> <span class="sp_cdtl sel_arrow">&nbsp;</span></a>
																<div class="cdtl_scroll">
																	<ul class="cdtl_select_lst _drop_list">
																		<li class="" data-index="1"
																			data-react-unit-type="text"
																			data-react-unit-text="[{&quot;type&quot;:&quot;tarea_addt_val&quot;,&quot;value&quot;:&quot;드롭다운_선택&quot;}]">
																			<a href="#" class="clickable"
																			data-react-tarea-dtl-cd="t00060"
																			onclick="ssg_react_v2.direct_call(this);">
																			<span class="txt">2027</span></a>
																		</li>
																		<li class="selected" data-index="2"
																			data-react-unit-type="text"
																			data-react-unit-text="[{&quot;type&quot;:&quot;tarea_addt_val&quot;,&quot;value&quot;:&quot;드롭다운_선택&quot;}]">
																			<a href="#" class="clickable"
																			data-react-tarea-dtl-cd="t00060"
																			onclick="ssg_react_v2.direct_call(this);"><span
																				class="txt">2028</span></a>
																		</li>
																		<li class="" data-index="3"
																			data-react-unit-type="text"
																			data-react-unit-text="[{&quot;type&quot;:&quot;tarea_addt_val&quot;,&quot;value&quot;:&quot;드롭다운_선택&quot;}]">
																			<a href="#" class="clickable"
																			data-react-tarea-dtl-cd="t00060"
																			onclick="ssg_react_v2.direct_call(this);"><span
																				class="txt">2030</span></a>
																		</li>
																	</ul>
																</div>
															</div>
														</dd>
													</dl>

			    <label for="mainOptions">정장디자인</label>
    <select id="mainOptions">
        <option value="" disabled selected>선택하세요</option>
    </select>

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

</body>
</html>