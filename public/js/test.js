// jsファイルが正常に読み込まれることを確認するために用意したメソッド
function test() {
	alert("test alert");
}

// index.htmlで定義してあったものをjsファイルに移動したもの
function about() {
    info = document.getElementById('about-content');
    if (window.XMLHttpRequest)
      { xhr = new XMLHttpRequest(); }
    else
      { xhr = new ActiveXObject("Microsoft.XMLHTTP"); }
    xhr.open("GET","rails/info/properties",false);
    xhr.send("");
    info.innerHTML = xhr.responseText;
    info.style.display = 'block'
}