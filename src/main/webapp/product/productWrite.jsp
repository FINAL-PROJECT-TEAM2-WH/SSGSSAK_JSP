<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
 <script src="https://cdn.ckeditor.com/ckeditor5/41.3.1/super-build/ckeditor.js"></script>
<style>
        .ck.ck-editor{

        max-width: 1000px;
        }
        .ck-editor__editable {
            min-height: 400px;
        }
    </style>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 20px;
    padding: 20px;
    background-color: #f9f9f9;
}

div {
    margin-bottom: 10px;
}

label {
    display: inline-block;
    width: 150px;
    font-weight: bold;
}

input[type="text"],
input[type="date"],
textarea {
    width: 300px;
    padding: 8px;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
/
button:hover {
    background-color: #45a049;
}

</style>

<head>
    <meta charset="UTF-8">
    <title>제품 등록</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>제품 등록</h1>
    <form id="productForm">
        <div>
            <label for="categoryID">카테고리 ID:</label>
            <input type="text" id="categoryID" name="categoryID" required>
        </div>
        <div>
            <label for="specialPriceID">특별 가격 ID:</label>
            <input type="text" id="specialPriceID" name="specialPriceID">
        </div>
        <div>
            <label for="shippingOptionID">배송 옵션 ID:</label>
            <input type="text" id="shippingOptionID" name="shippingOptionID" required>
        </div>
        <div>
            <label for="sellerStoreID">판매점 ID:</label>
            <input type="text" id="sellerStoreID" name="sellerStoreID" required>
        </div>
        <div>
            <label for="brandID">브랜드 ID:</label>
            <input type="text" id="brandID" name="brandID" required>
        </div>
        <div>
            <label for="pdName">제품 이름:</label>
            <input type="text" id="pdName" name="pdName">
        </div>
        <div>
            <label for="pdContent">제품 설명:</label>
            <textarea id="pdContent" name="pdContent"></textarea>
            
        </div>
        <div>
            <label for="updateDay">업데이트 날짜:</label>
            <input type="date" id="updateDay" name="updateDay">
        </div>
        <button type="submit">제품 등록</button>
    </form>

       <h1>CKEditor</h1>
    <form action="" method="POST">
      <textarea name="text" id="editor"></textarea>
    <p><input type="submit" value="전송"></p>
    
  
    </form>
    <div id="editor"></div>
      <script>

            CKEDITOR.ClassicEditor.create(document.getElementById("editor"), {
            
                toolbar: {
                    items: [
                        
                        'heading', '|',
                        'bold', 'italic', 'strikethrough', 'underline', 'code', 'subscript', 'superscript', 'removeFormat', '|',
                        'bulletedList', 'numberedList', 'todoList', '|',
                        'outdent', 'indent', '|',
                        'undo', 'redo',
                        '-',
                        'fontSize', 'fontFamily', 'fontColor', 'fontBackgroundColor', 'highlight', '|',
                        'alignment', '|',
                        'link', 'uploadImage', 'blockQuote', 'insertTable', 'mediaEmbed', 'codeBlock', 'htmlEmbed', '|',
                        'specialCharacters', 'horizontalLine', 'pageBreak', '|',
                        'textPartLanguage', '|',
                        'sourceEditing'
                    ],
                    simpleUpload: {
                        // 업로드 URL을 서버의 이미지 처리 URL로 설정합니다.
                        uploadUrl: '/path/to/image/upload/',

                        // HTTP 요청에 추가할 헤더들을 설정할 수 있습니다.
                        headers: {
                            'X-CSRF-TOKEN': 'CSRF-Token',
                            'Authorization': 'Bearer <JSON Web Token>'
                        }
                    },
                    shouldNotGroupWhenFull: true
                },
                // Changing the language of the interface requires loading the language file using the <script> tag.
                // language: 'es',
                list: {
                    properties: {
                        styles: true,
                        startIndex: true,
                        reversed: true
                    }
                },
                // https://ckeditor.com/docs/ckeditor5/latest/features/headings.html#configuration
                heading: {
                    options: [
                        { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                        { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
                        { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' },
                        { model: 'heading3', view: 'h3', title: 'Heading 3', class: 'ck-heading_heading3' },
                        { model: 'heading4', view: 'h4', title: 'Heading 4', class: 'ck-heading_heading4' },
                        { model: 'heading5', view: 'h5', title: 'Heading 5', class: 'ck-heading_heading5' },
                        { model: 'heading6', view: 'h6', title: 'Heading 6', class: 'ck-heading_heading6' }
                    ]
                },
                // https://ckeditor.com/docs/ckeditor5/latest/features/editor-placeholder.html#using-the-editor-configuration
                placeholder: 'Welcome to CKEditor 5!',
                // https://ckeditor.com/docs/ckeditor5/latest/features/font.html#configuring-the-font-family-feature
                fontFamily: {
                    options: [
                        'default',
                        'Arial, Helvetica, sans-serif',
                        'Courier New, Courier, monospace',
                        'Georgia, serif',
                        'Lucida Sans Unicode, Lucida Grande, sans-serif',
                        'Tahoma, Geneva, sans-serif',
                        'Times New Roman, Times, serif',
                        'Trebuchet MS, Helvetica, sans-serif',
                        'Verdana, Geneva, sans-serif'
                    ],
                    supportAllValues: true
                },
                // https://ckeditor.com/docs/ckeditor5/latest/features/font.html#configuring-the-font-size-feature
                fontSize: {
                    options: [ 10, 12, 14, 'default', 18, 20, 22 ],
                    supportAllValues: true
                },
                    htmlSupport: {
                    allow: [
                        {
                            name: /.*/,
                            attributes: true,
                            classes: true,
                            styles: true
                        }
                    ]
                },
                    htmlEmbed: {
                    showPreviews: true
                },
                link: {
                    decorators: {
                        addTargetToExternalLinks: true,
                        defaultProtocol: 'https://',
                        toggleDownloadable: {
                            mode: 'manual',
                            label: 'Downloadable',
                            attributes: {
                                download: 'file'
                            }
                        }
                    }
                },
                mention: {
                    feeds: [
                        {
                            marker: '@',
                            feed: [
                                '@apple', '@bears', '@brownie', '@cake', '@cake', '@candy', '@canes', '@chocolate', '@cookie', '@cotton', '@cream',
                                '@cupcake', '@danish', '@donut', '@dragée', '@fruitcake', '@gingerbread', '@gummi', '@ice', '@jelly-o',
                                '@liquorice', '@macaroon', '@marzipan', '@oat', '@pie', '@plum', '@pudding', '@sesame', '@snaps', '@soufflé',
                                '@sugar', '@sweet', '@topping', '@wafer'
                            ],
                            minimumCharacters: 1
                        }
                    ]
                },
                 removePlugins: [

                    'AIAssistant',
                    'CKBox',
                    'CKFinder',
                    'EasyImage',

                    'MultiLevelList',
                    'RealTimeCollaborativeComments',
                    'RealTimeCollaborativeTrackChanges',
                    'RealTimeCollaborativeRevisionHistory',
                    'PresenceList',
                    'Comments',
                    'TrackChanges',
                    'TrackChangesData',
                    'RevisionHistory',
                    'Pagination',
                    'WProofreader',
                    // Careful, with the Mathtype plugin CKEditor will not load when loading this sample
                    // from a local file system (file://) - load this site via HTTP server if you enable MathType.
                    'MathType',
                    // The following features are part of the Productivity Pack and require additional license.
                    'SlashCommand',
                    'Template',
                    'DocumentOutline',
                    'FormatPainter',
                    'TableOfContents',
                    'PasteFromOfficeEnhanced',
                    'CaseChange','exportPDF','exportWord', '|',
                    'findAndReplace', 'selectAll', '|'
                ]
                
            });
        </script>
    <script src="app.js"></script>
    <script type="text/javascript">
    document.getElementById('productForm').addEventListener('submit', function(event) {
        event.preventDefault();

        var formData = {
            categoryID: document.getElementById('categoryID').value,
            specialPriceID: document.getElementById('specialPriceID').value,
            shippingOptionID: document.getElementById('shippingOptionID').value,
            sellerStoreID: document.getElementById('sellerStoreID').value,
            brandID: document.getElementById('brandID').value,
            pdName: document.getElementById('pdName').value,
            pdContent: document.getElementById('pdContent').value,
            updateDay: document.getElementById('updateDay').value
        };

        fetch('/api/products', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(formData)
            
        })
        .then(response => response.json())
        .then(data => alert('제품이 성공적으로 등록되었습니다!'))
        .catch(error => alert('제품 등록에 실패했습니다.'));
    });

    </script>
</body>
</html>
