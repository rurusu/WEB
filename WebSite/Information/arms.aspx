<%@ Page Title="健身資訊 - " Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="arms.aspx.cs" Inherits="Information_arms" %>

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
                        <br />
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

            <img src="../image/arms_title.jpg" style="max-width: 100%; border: 1px solid transparent; border-radius: 5px;">

            <div class="panel-group" id="ArticleList">

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-arms.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-1">窄手掌上壓
                        </a>
                    </div>

                    <div id="info-1" class="info-arti panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/arms-01-1.jpg" class="info-img" />
                            <img src="../image/info/arms-01-2.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>三頭肌(Tricep)、胸大肌(Chest)</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組做到沒力為止，休息1分鐘。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>如果初學者覺得有困難，可以先嘗試雙膝跪下作支點。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <!-- 大標 -->
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-arms.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-2">滑輪機下壓
                        </a>
                    </div>
                    <!-- 內容 -->
                    <div id="info-2" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/arms-02-1.jpg" class="info-img" />
                            <img src="../image/info/arms-02-2.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>三頭肌(Tricep)</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組8~12下，休息30~40秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 面對鋼綫滑輪機兩腳分開站立，挺胸收腹，屈臂兩手緊握繩索或直槓，兩手間距小於肩寬，手肘緊貼體側。</p>
                            <p>2. 吸氣，前臂用力向下壓，使雙臂伸直，稍停2～3秒鐘；然後呼氣，緩慢還原，用三頭肌抵抗回彈力度；重複練習。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 注意速度：動作下壓時間應為1秒，同時需要一定的爆發力；動作還原時間為2-3秒，充分感覺三頭肌在發力。</p>
                            <p>2. 注意上臂的位置：上臂不要隨前臂擺動，否則三頭肌是不會用力的。</p>
                            <p>3. 注意<strong>手腕要鎖定</strong>，不要因為前臂運動而屈伸腕關節，這樣會使得手腕承受很大的壓力，造成腕關節的損傷。</p>
                            <p>4. 請挺起胸膛，如控制不了形成圓肩狀態，即是訓練重過大，較輕一點吧！</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-arms.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-3">啞鈴上舉
                        </a>
                    </div>
                    <div id="info-3" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/arms-03-1.jpg" class="info-img" />
                            <img src="../image/info/arms-03-2.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>三頭肌(Tricep)</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組8~12下，休息40~45秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 準備時，可坐在座椅上，也可坐在長凳前端；亦可以採取站姿，但請注意畢直地直立，動作過程中保持不要晃動。</p>
                            <p>2. 將啞鈴用雙掌托在頭頂，雙臂伸直，但手肘並不鎖緊，上臂正好位於雙耳外側。</p>
                            <p>3. 屈手緩緩向頸後下於低啞鈴，停止在前臂剛剛超過同地面平行的位置。</p>
                            <p>4. 稍稍停頓，然後用三頭肌發力，將啞鈴舉回開始的位置。重複。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 時刻關注手肘關節，當感到太重的時候應停下來休息，並用輕一點的重量，否則易受傷。</p>
                            <p>2. 肘關節的方向不論在動作發力還是還原都要保持向前的位置，否則不但鍛鍊不到肱三頭肌還會很容易造成肘關節的損傷。</p>
                            <p>3. 頭部的位置要穩定，在用力的時候頸部肌群很容易去借力，由於頸部承受壓力有限，如果頸部過分發力會造成頸椎扭傷。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-arms.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-4">啞鈴平臥飛鳥
                        </a>
                    </div>
                    <div id="info-4" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/arms-04.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>三頭肌(Tricep)</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組8~12下，休息30~45秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 仰臥在水平臥推板上，雙手持啞鈴，掌心相對，推起至兩臂伸直，支撐在胸部上方。</p>
                            <p>2. 兩手持啞鈴向兩側擴展落下，手肘保持稍微彎屈，持啞鈴落下至手肘略低於身體水平線。</p>
                            <p>3. 在此過程中手肘始終要保持彎曲，並感到胸部兩側肌肉有充分的拉伸感。當啞鈴落下時吸氣。</p>
                            <p>4. 持鈴依原路徑上舉，回到原位時吐氣。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 啞鈴向兩側落下時，手肘與上臂需保持彎曲，如果將手肘伸直，則胸部肌肉便很難得到伸展和收縮的感覺。</p>
                            <p>2. 新手建議自身體重的 10-15% 重量的啞鈴。</p>
                        </div>
                    </div>
                </div>



            </div>
        </div>
    </div>

    <div class="div-fly" id="goTop">
        <a href="#">
            <img src="../image/up-arrow.png" style="width: 30px; height: 30px;" /></a>
    </div>
</asp:Content>
