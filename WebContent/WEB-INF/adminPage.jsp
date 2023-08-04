<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

<title>Insert title here</title>
<script>
	document.addEventListener('DOMContentLoaded', function() {
	    var xhr = new XMLHttpRequest();
	    xhr.open('GET', '/WritePageController');
	    xhr.responseType = 'json';
	    xhr.onload = function() {
	        if (xhr.status === 200) {
	            var data = xhr.response;
	            var array = data.newsList;
	            var html = '<tbody class="text-center" id="tableTbody">';
	            for (var i = 0; i < array.length; i++) {
	                el = array[i];
	                html += '<tr>';
	                html += '<th scope="row" class="adminNewsId" data-value="' + el.id + '">' + el.id + '</th>';
	                html += '<td>';
	                html += '<p class="panel-news-title">'+ el.title +'</p>';
	                html += '<p>' +el.detail+ '</p>';
	                html += '</td>';
	                html += '<td>' + el.date + '</td>';
	                html += '<td>' ;

					html += '<form action="/AdminUpdateDelete" method="post">';
					html += '<input type="hidden" name="postId" value="' + el.id + '">';
					html += '<input type="hidden" name="update" value="on">';
					html += '<button type="submit" class="btn btn-link">修正</button>';
					html += '</form>';
					html += '<form action="/AdminUpdateDelete" method="post">';
					html += '<input type="hidden" name="postId" value="' + el.id + '">';
					html += '<input type="hidden" name="delete" value="on">';
					html += '<button type="submit" class="btn btn-link">削除</button>';
					html += '</form>';

	                html += '</td>';
	                html += '<input type="hidden" name="num" id="writeNum" value=' + el.id + '>';
	                html += '</tr>';
	            }
	            	html += '</tbody>';

	            var newsTbody = document.getElementById('tableTbody');
	            newsTbody.innerHTML = html;
	        } else {
	            alert('게시판 데이터를 가져오는 동안 오류가 발생했습니다.');
	        }
	    };
	    xhr.send();

	});
	</script>
</head>

<body>
<div class="container" style="padding-top:80px;">
<!-- modal start -->

<!-- modal end-->

	<div>
		<table class="table table-striped" style="max-width: 70%; margin:auto;">
		  <thead>
		    <tr >
		      <th scope="col">ID</th>
		      <th scope="col">題目/内容</th>
		      <th scope="col">日時</th>
		      <th scope="col"></th>
		    </tr>
		  </thead>
		  <tbody id="tableTbody">
		    <tr>
		      <th scope="row">1</th>
		      <td class="table-primary">Mark</td>
		      <td>Otto</td>
		      <td>@mdo</td>
		    </tr>
		    <tr>
		      <th scope="row">2</th>
		      <td>Jacob</td>
		      <td>Thornton</td>
		      <td>@fat</td>
		    </tr>
		    <tr>
		      <th scope="row">3</th>
		      <td colspan="2">Larry the Bird</td>
		      <td>@twitter</td>
		    </tr>
		  </tbody>
		</table>
	</div>
	<br>
	<div>
		<!-- 제목, 내용 NotNull 만들기 -->
		<form action="/WritePageController" method="POST" style="max-width: 70%; margin:auto;">
		  <div class="form-group">
		    <label for="exampleFormControlInput1">タイトル：</label>
		    <input type="text" class="form-control" id="adminWriteTitle"  name="title">
		  </div>
		  <div class="form-group" >
		    <label for="exampleFormControlTextarea1">内容：</label>
		    <textarea class="form-control" id="adminWriteDetail" rows="5" name="detail"></textarea>
		  </div>
		  <br>
		  <button type="submit" class="btn btn-primary" id="adminWriteBtn" style="float: right;">完了</button>
		</form>
	</div>
	</div>




<!-- writeAjax -->
<script>
function AdminWrite(){
var title = document.getElementById("adminWriteTitle");
var detail = document.getElementById("adminWriteDetail");

// ajax start ----------------------------------------------------------------------------
var xhr = new XMLHttpRequest();
var url = "/WritePageController";
xhr.open('POST', url);
xhr.responseType = 'json';
xhr.onload = function() {
    if (xhr.status === 200) {
        var data = xhr.response;

        //alert(data.String);
    } else {

    }
};

xhr.send(title, detail);
// ajax end ------------------------------------------------------------------------------
}
var adminWriteBtn = document.getElementById('adminWriteBtn');
adminWriteBtn.addEventListener('click', AdminWrite);

</script>

<!-- deleteAjax -->

<script>
function AdminDelete(){

const deleteLinks = document.querySelectorAll('.delete-link');
deleteLinks.forEach(link => {
  link.addEventListener('click', function() {
    var postId = this.dataset.postid;

 // ajax start ----------------------------------------------------------------------------
    var xhr = new XMLHttpRequest();

    var url = "/AdminUpdateDelete";
    xhr.open('POST', url, true);
    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhr.onload = function() {
        if (xhr.status === 200) {
            var data = xhr.response;

            console.log('res ok');
        } else {

        }
    };

    xhr.send("postId=" + postId );
    // ajax end ------------------------------------------------------------------------------

  });
});

}
</script>

</body>
</html>