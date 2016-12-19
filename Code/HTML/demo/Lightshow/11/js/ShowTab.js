/**
 * Created by USER on 12/8/2016.
 */
document.getElementById("dv1").onclick = function() {myFunction1()};
document.getElementById("dv2").onclick = function() {myFunction2()};
document.getElementById("dv3").onclick = function() {myFunction3()};
document.getElementById("dv4").onclick = function() {myFunction4()};
document.getElementById("dv5").onclick = function() {myFunction5()};


// function myFunction1() {
//     document.getElementById("dv1").style.display = "block";
//     document.getElementById("dv2").style.display = "none";
//     document.getElementById("dv3").style.display = "none";
//     document.getElementById("dv4").style.display = "none";
//     document.getElementById("dv5").style.display = "none";
// }
// function myFunction2() {
//     document.getElementById("dv2").style.display = "block";
//     document.getElementById("dv1").style.display = "none";
//     document.getElementById("dv3").style.display = "none";
//     document.getElementById("dv4").style.display = "none";
//     document.getElementById("dv5").style.display = "none";
// }
// function myFunction3() {
//     document.getElementById("dv3").style.display = "block";
//     document.getElementById("dv2").style.display = "none";
//     document.getElementById("dv1").style.display = "none";
//     document.getElementById("dv4").style.display = "none";
//     document.getElementById("dv5").style.display = "none";
// }
// function myFunction4() {
//     document.getElementById("dv4").style.display = "block";
//     document.getElementById("dv2").style.display = "none";
//     document.getElementById("dv3").style.display = "none";
//     document.getElementById("dv1").style.display = "none";
//     document.getElementById("dv5").style.display = "none";
// }
// function myFunction5() {
//     document.getElementById("dv5").style.display = "block";
//     document.getElementById("dv2").style.display = "none";
//     document.getElementById("dv3").style.display = "none";
//     document.getElementById("dv4").style.display = "none";
//     document.getElementById("dv1").style.display = "none";
// }




function myFunction1() {
    document.getElementById("dv1").className = "img on";
    document.getElementById("dv2").className = "img off";
    document.getElementById("dv3").className = "img off";
    document.getElementById("dv4").className = "img off";
    document.getElementById("dv5").className = "img off";
}
function myFunction2() {
    document.getElementById("dv2").className = "img on";
    document.getElementById("dv1").className = "img off";
    document.getElementById("dv3").className = "img off";
    document.getElementById("dv4").className = "img off";
    document.getElementById("dv5").className = "img off";
}
function myFunction3() {
    document.getElementById("dv3").className = "img on";
    document.getElementById("dv2").className = "img off";
    document.getElementById("dv1").className = "img off";
    document.getElementById("dv4").className = "img off";
    document.getElementById("dv5").className = "img off";
}
function myFunction4() {
    document.getElementById("dv4").className = "img on";
    document.getElementById("dv2").className = "img off";
    document.getElementById("dv3").className = "img off";
    document.getElementById("dv1").className = "img off";
    document.getElementById("dv5").className = "img off";
}
function myFunction5() {
    document.getElementById("dv5").className = "img on";
    document.getElementById("dv2").className = "img off";
    document.getElementById("dv3").className = "img off";
    document.getElementById("dv4").className = "img off";
    document.getElementById("dv1").className = "img off";
}