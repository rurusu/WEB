<%@ Page Title="健身資訊 - " Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="shoulder.aspx.cs" Inherits="Information_shoulder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <link rel="stylesheet" type="text/css" href="../Content/forInformation.css" />
    <script type="text/javascript" src="../Scripts/div_goTop.js"></script>

    <br />
    <br />
    <br />

    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>

    <div class="row">
        <div class="col-sm-1">
        </div>
        <div class="col-sm-3">
            <div class="panel-group" id="RightLink">
                <div class="panel panel-default" style="border: none; text-align: center;">
                    <div class="panel-heading" style="background-color: transparent;">
                        <div style="background-color: #00cccc; color: #fff; height: 40px; line-height: 30px; display: inline-block; line-height: 30px; margin-bottom: 30px; width: 60%">
                            <h4>健身資訊</h4>
                        </div>
                        <div style="padding: 2px">
                            <asp:Image runat="server" ImageUrl="~/image/iphone.png" CssClass="icon-style" />
                            <asp:Button ID="btnSensor" runat="server" Text="健身重訓" OnClick="btnSensor_Click" CssClass="btn btn-link" data-toggle="tooltip" data-placement="bottom" title="肌肉重量訓練的相關訊息" />
                        </div>
                        <br />
                        <div style="padding: 2px">
                            <asp:Image runat="server" ImageUrl="~/image/gps.png" CssClass="icon-style" />
                            <asp:Button ID="btnGPS" runat="server" Text="有氧挑戰" OnClick="btnGPS_Click" CssClass="btn btn-link" data-toggle="tooltip" data-placement="bottom" title="跑步、健走、單車等相關訊息" />
                        </div>
                        <br />
                        <div style="padding: 2px">
                            <asp:Image runat="server" ImageUrl="~/image/health-care.png" CssClass="icon-style" />
                            <asp:Button ID="btnLife" runat="server" Text="生活飲食" OnClick="btnLife_Click" CssClass="btn btn-link" data-toggle="tooltip" data-placement="bottom" title="健康的生活及飲食習慣讓你增肌不增肥\^0^/" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-6">

            <img src="../image/shoulder_title.jpg" style="max-width: 100%; border: 1px solid transparent; border-radius: 5px;">

            <div class="panel-group" id="ArticleList">

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-shoulder.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-1">橫桿引體向上
                        </a>
                    </div>

                    <div id="info-1" class="info-arti panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/shoulder-01-1.jpg" class="info-img" />
                            <img src="../image/info/shoulder-01-2.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>斜方肌(Trap)、三角肌後束(Posterior Deltoid)</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組做到沒力為止，休息30秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 可以在公園使用橫桿，或在健身室使用史密夫機器，將橫桿放至腰間高度。</p>
                            <p>2. 將雙手握實橫桿，身體懸垂在橫桿下，雙臂伸直，全身筆挺，腳跟在地上作為支點。</p>
                            <p>3. 手肘向下拉，把胸部拉至貼近橫桿。此時肩胛骨應該向內收緊，後肩同時放力。</p>
                            <p>4. 身體在最高位置停1秒，盡量刺激肌肉。然後慢慢將身體放下來，重複。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 動作其間請保持腹肌收緊，讓軀幹筆直。</p>
                            <p>2. 橫桿越高，難度越少；橫桿越低，難度越大。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <!-- 大標 -->
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-shoulder.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-2">反地心引力推
                        </a>
                    </div>
                    <!-- 內容 -->
                    <div id="info-2" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/shoulder-02-1.jpg" class="info-img" />
                            <img src="../image/info/shoulder-02-2.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>背闊肌(Lat)、斜方肌(Trap)、三角肌(Deltoid)</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組8~12下，休息60~90秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 將槓鈴放在健身椅底，並將健身椅較至上斜30度。</p>
                            <p>2. 騎到健身椅上，正手方向提起槓鈴至貼近胸部。</p>
                            <p>3. 將槓鈴向前推，過程中手臂與地面成水平。</p>
                            <p>4. 稍停頓，然後緩緩槓鈴拉回到起始位置。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>請緊記手臂於整個過程中要保持與地面水平。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-shoulder.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-3">雙臂壺鈴上推
                        </a>
                    </div>
                    <div id="info-3" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/shoulder-03.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>三角肌前束、中束(Anterior Deltoid, Lateral Deltoid)</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組8~12下，休息60~90秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 隻手持着壺鈴，將其提至肩部，掌心向前或向側都可以。</p>
                            <p>2. 雙腳屈曲，身體下沉，上身保持挺直。</p>
                            <p>3. 利用爆發力用腳跟向上蹬，雙腿伸直，帶動身體上升，同時肩部三角肌發力，將壺鈴推至最高點。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 屈曲雙腿時，膝蓋切勿越過腳趾，否則對膝關節帶來傷害。</p>
                            <p>2. 整個動作要連貫才可以最有效地利用爆發力進行推舉，宜多加訓練後才使用較重的壺鈴。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-shoulder.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-4">坐姿槓鈴過頭上推
                        </a>
                    </div>
                    <div id="info-4" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/shoulder-04-1.jpg" class="info-img" />
                            <img src="../image/info/shoulder-04-2.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>三角肌前束、中束(Anterior Deltoid, Lateral Deltoid)</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組8~12下，休息60~90秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 坐在椅上，挺胸收腹，兩手握住杠鈴，握距比肩稍寬。</p>
                            <p>2. 提起槓鈴至肩上，掌心向出。</p>
                            <p>3. 把杠鈴貼臉前向上推起，直至兩臂伸直在頭頂上方，然後，慢慢循原路放下至肩上。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 動作開始後，只能手臂在動，身體的其他部位均要保持固定姿勢。上推時，上體不要後仰、憋氣。</p>
                            <p>2. 在動作過程中，手腕用力並保持固定，手腕的前後擺動會增加受傷的危險性。</p>
                            <p>3. 為了減少其他肌群參與程度，槓鈴推肩時，杠鈴下落到下巴處，這樣對三角肌前束刺激的比較深，如果再往下直至貼近鎖骨處，鎖骨到下巴這個過程三頭肌參與發力的比重會大一些。</p>
                            <p>4. 注意肘關節的位置，不要向後，小臂應垂直地面，當上舉到最高點時注意不要鎖定關節，過頭頂後就可以下落，這樣肩部會一直處於緊張狀態。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-shoulder.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-5">雙槓撐體
                        </a>
                    </div>
                    <div id="info-5" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/shoulder-05.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>三角肌、下胸肌、肱三頭肌</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組8~12下，休息30~45秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 手肘慢慢彎曲，身體下降，在最低位置時，頭部向前引，兩肘稍向外展，這時應該感到胸肌拉長伸展。</p>
                            <p>2. 用胸肌的力量，收縮撐起兩臂，使身體上昇直至兩臂伸直。</p>
                            <p>3. 當上臂超過雙槓的水平位置時，臀部稍向後縮，上身低頭含胸。</p>
                            <p>4. 在兩臂伸直的時候，胸大肌處於收縮緊繃的狀態。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 動作要緩慢進行，不要借身體的擺盪或慣性助力完成動作，新手建議可用輔助器械。</p>
                            <p>2. 撐起時的速度可稍快，並注意是要用你的胸肌施力。</p>
                            <p>3. 為加大訓練強度可在腰間負重練習。</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div>&nbsp;</div>
    <div class="div-fly" id="goTop">
        <a href="#">
            <img src="../image/up-arrow.png" style="width: 30px; height: 30px;" /></a>
    </div>

</asp:Content>

