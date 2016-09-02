$(document).ready(function(){
    loadLayout(document.getElementById('menuItem').value);
});


function loadLayout(menuItem) {
    Android.loadLayout(menuItem);
}