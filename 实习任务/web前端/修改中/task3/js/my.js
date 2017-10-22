 function download() {
    window.open("http://172.31.238.70:8080/wopi/files/111111.docx/contents");
}
function showinfo(obj){
            var right_tab=document.getElementById('myTabs');
            var home=document.getElementById('home');
            var profile=document.getElementById('profile');
            right_tab.firstElementChild.className="";
            right_tab.lastElementChild.className="active";
            home.className="tab-pane fade";
            profile.className="tab-pane fade in active";
            profile.innerText=obj.innerText;
        }
