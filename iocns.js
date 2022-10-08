function brakechain() {
  var a;
    a = document.getElementById("div1");
    a.innerHTML = "&#xf0c1;";
    setTimeout(function () {
        a.innerHTML = "&#xf127;";
    }, 1000);
}
    brakechain();
    setInterval(brakechain, 2000);
