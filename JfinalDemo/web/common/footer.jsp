<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <span class="bigfont">小木学堂<br>课程案例</span>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <img data-mask="#qqqrcodeMask" class="qrcode" src="ghttp://xiaomuxuetang.judier.com/upload/4f16b61b-949b-4bfa-b7e1-1e35915e0cc4.pn"/>
                <p>点击放大扫描总群</p>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <img data-mask="#wxqrcodeMask" class="qrcode"  src="http://xiaomuxuetang.judier.com/upload/5327d126-be4b-4e6f-a32e-5a4c4ce0c21b.getqrcode%20(2)"/>
                <p>点击放大扫描关注微信</p>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="alipayqr"><img data-mask="#jfinalqrcodeMask" class="qrcode"  src="http://xiaomuxuetang.judier.com/upload/b734279c-adb2-479d-889b-9dae56fc5225.png"/></div>
                <p>点击放大扫描JFinal分群</p>
            </div>
        </div>
    </div>
    <div class="copyright"><span >© 2015 Powered by  <a href="http://xiaomuxuetang.judier.com">小木学堂</a></span></div>
</footer>
<div class="mask" id="qqqrcodeMask" onclick="closeMask()" style="display: none;">
    <div class="qr">
        <img src="http://xiaomuxuetang.judier.com/upload/4f16b61b-949b-4bfa-b7e1-1e35915e0cc4.png">
    </div>
</div>
<div class="mask" id="wxqrcodeMask" onclick="closeMask()" style="display: none;">
    <div class="qr">
        <img src="http://xiaomuxuetang.judier.com/upload/5327d126-be4b-4e6f-a32e-5a4c4ce0c21b.getqrcode%20(2)">
    </div>
</div>
<div class="mask" id="jfinalqrcodeMask" onclick="closeMask()" style="display: none;">
    <div class="qr">
        <img src="http://xiaomuxuetang.judier.com/upload/b734279c-adb2-479d-889b-9dae56fc5225.png">
    </div>
</div>
<script type="text/javascript">
    function closeMask(){
        $(".mask").fadeOut();
    }
    $(function(){
        $("footer img").click(function(){
            $($(this).attr("data-mask")).fadeIn();
        });
    })
</script>
</body>
</html>