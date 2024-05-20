<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>상품 리스트</title>
  <style>
    .product {
      border: 1px solid #ccc;
      padding: 10px;
      margin: 10px;
      width: 200px;
    }
  </style>
</head>
<body>
  <h1>상품 리스트</h1>
  <div id="product-list"></div>

  <script>
    // JSON 데이터를 서버에서 가져오는 함수
    async function fetchProductList() {
      try {
        const response = await fetch('/SSGSSAK/mainProd.do?categoryId=04040303&currentPage=1'); // 엔드포인트로 변경
        if (!response.ok) {
          throw new Error('Network response was not ok ' + response.statusText);
        }
        const productList = await response.json(); // 응답을 JSON으로 파싱
        console.log("Received product list:", productList); // JSON 응답을 콘솔에 출력하여 확인
        renderProducts(productList);
      } catch (error) {
        console.error('상품 데이터를 가져오는 중 오류가 발생했습니다:', error);
      }
    }

    // 상품 리스트를 렌더링하는 함수
    function renderProducts(products) {
      const productList = document.getElementById('product-list');
      productList.innerHTML = ''; // 기존 내용을 지웁니다
      products.forEach(product => {
        // 상품 요소 생성
        const productElement = document.createElement('div');
        productElement.className = 'product';

        // 상품 정보 추가
        const id = document.createElement('p');
        id.textContent = product.id;
        productElement.appendChild(id);

        const name = document.createElement('h2');
        name.textContent = product.pDname; // 여기를 수정합니다.
        productElement.appendChild(name);

        const price = document.createElement('p');
        price.textContent = product.sprice +"원";
        productElement.appendChild(price);

        const discount = document.createElement('p');
        discount.textContent = "할인 : "+ product.discount+"%";
        productElement.appendChild(discount);

        const seller = document.createElement('p');
        seller.textContent = "판매자 : "+ product.sellerName;
        productElement.appendChild(seller);

        const brand = document.createElement('p');
        brand.textContent = "브랜드 : " + product.brandName;
        productElement.appendChild(brand);

        // 상품 요소를 목록에 추가
        productList.appendChild(productElement);
      });
    }

    // 페이지 로드 시 상품 리스트 가져오기
    document.addEventListener('DOMContentLoaded', fetchProductList);
  </script>
</body>
</html>
