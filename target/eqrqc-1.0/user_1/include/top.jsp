<%-- 
    Document   : top
    Created on : 23 oct. 2018, 10:42:21
    Author     : Hachem
--%>

<div class="w3-bar w3-black">
    <div class="w3-bar-item">
        <span class="w3-large w3-text-light-gray ">e-QRQC</span>
    </div>
    <div class="w3-bar-item">
        <i class="fa fa-calendar"></i>
        12/09/2018
    </div>
    <div class="w3-bar-item">
        <i class="ti-time"></i>
        <span id="time"></span> 
    </div>
    <div class="w3-bar-item">
        <i class="fa fa-phone-square"></i>
        55 302 695
    </div>
    <div class="w3-bar-item">
        <i class="fa fa-envelope"></i>
        guesmi.hachem@gmail.com 
    </div>

</div>

<script>
    function startTime() {
        var today = new Date();
        var h = today.getHours();
        var m = today.getMinutes();
        var s = today.getSeconds();
        m = checkTime(m);
        s = checkTime(s);
        document.getElementById('time').innerHTML =
                h + ":" + m + ":" + s;
        var t = setTimeout(startTime, 500);
    }
    function checkTime(i) {
        if (i < 10) {
            i = "0" + i
        }
        ;  // add zero in front of numbers < 10
        return i;
    }
</script>