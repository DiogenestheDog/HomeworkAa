document.addEventListener("DOMContentLoaded", function(){
    canvas = document.getElementById('mycanvas');
    canvas.style.width = "700px";
    canvas.style.height = "700px";
    ctx = canvas.getContext("2d");
    ctx.fillStyle = "red";
    ctx.fillRect(50, 50, 100, 100);
    ctx.beginPath();
    ctx.arc(200, 200, 100, 0, 2 * Math.PI);
    
    ctx.strokeStyle = "purple";
    ctx.stroke();
});

//ctx.arc(x, y, radius, startAngle, endAngle[, anticlockwise]);