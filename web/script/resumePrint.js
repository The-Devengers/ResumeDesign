/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


/////////////

document.addEventListener('DOMContentLoaded', function () {
//////////////
//////////////
    document.querySelector('#btn-print').addEventListener('click', function () {
// window.print();

        let wspFrame = document.getElementById('frame').contentWindow;
        wspFrame.focus();
        wspFrame.print();
    });
});