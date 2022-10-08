/*const btn_show_message = document.getElementById("Btn");
        btn_show_message.onclick = function () {

            setTimeout(function () {
                alert("How Are you?");
            }, 2000);
        };*/

var btn = document.getElementById("Btn");
var btntext = document.getElementById("btn__text");


btn.onclick = function () {
    btntext.innerHTML = "Thanks";

    btn.classList.add("active");
    setTimeout(function () {
        location.reload();
    }, 5000);


   /* event.preventDefault();*/


}