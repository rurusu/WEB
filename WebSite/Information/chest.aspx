<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="chest.aspx.cs" Inherits="Information_chest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
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
        <div class="col-sm-4">
            <div class="panel-group" id="RightLink">
                <div class="panel panel-default" style="border: none; text-align: center;">
                    <div class="panel-heading" style="background-color: transparent;">
                        <div style="background-color: #00cccc; color: #fff; height: 40px; line-height: 30px; display: inline-block; line-height: 30px; margin-bottom: 30px; width: 50%">
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

            <img src="../image/chest_title.jpg" style="max-width: 100%; border: 1px solid transparent; border-radius: 5px;">

            <div class="panel-group" id="ArticleList">

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-chest.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-1">槓鈴仰臥推舉
                        </a>
                    </div>
                    <div id="info-1" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/chest-01-1.jpg" class="info-img" />
                            <img src="../image/info/chest-01-2.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>胸大肌(Pectoralis major)</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組8~12下，休息30~45秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 躺在水平臥推板上，兩腳平貼於地。伸直手臂，正握住橫槓，兩手間距比肩稍寬；兩臂伸直支撐住槓鈴於胸部上方。</p>
                            <p>2. 將槓推起離開固定架，手肘慢慢彎屈，槓鈴垂直落下，直至橫槓貼近胸部至大約接近乳頭上方的位置，不需完全接觸到胸部；然後向上推起至開始位置，重複動作。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 不要把背和臀部拱起或憋氣，容易產生危險。</p>
                            <p>2. 手臂上推至頂端時，不要把手肘打直鎖死，手肘應盡量貼近胸口，不要與肩膊成一直線。</p>
                            <p>3. 兩手間距切勿太窄，否則會練到別的地方。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <!-- 大標 -->
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-chest.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-2">滑輪推胸
                        </a>
                    </div>
                    <!-- 內容 -->
                    <div id="info-2" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/chest-02-1.jpg" class="info-img" />
                            <img src="../image/info/chest-02-2.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>三頭肌(Tricep)</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組8~12下，休息30~40秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 安排坐椅在拉力器的前方，背向拉力器。</p>
                            <p>2. 兩手心向下分別握住拉力器的一端握把，水平至胸前。</p>
                            <p>3. 兩臂用力把拉力器握把夾至胸前呈，直至兩拉力器握把相觸。</p>
                            <p>4. 合攏時盡力擠壓胸肌，略做停頓，緩緩放鬆還原。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 身體保持稍前傾，不可利用前後擺動的力量。</p>
                            <p>2. 要充分伸展胸肌，動作需緩慢而有節奏地進行。</p>
                            <p>3. 完成動作時兩臂均衡用力，防止猛拉或突然性還原動作。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-chest.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-3">擴展交替啞鈴臥推
                        </a>
                    </div>
                    <div id="info-3" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/chest-03.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>胸大肌(Pectoralis major)</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組8~12下，休息40~45秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 仰臥在水平臥推板上，單手手持啞鈴，掌心相對，推起至手臂伸直，支撐在胸部上方。</p>
                            <p>2. 手持啞鈴慢慢落下，手肘保持稍微彎屈，持啞鈴落下至手肘略低於身體水平線。</p>
                            <p>3. 在此過程中手肘始終要保持彎曲，當啞鈴落下時吸氣。</p>
                            <p>4. 另一隻手以相同方式持鈴上舉，回到原位時吐氣。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 不要把背和臀部拱起或憋氣，容易產生危險。</p>
                            <p>2. 手臂上推至頂端時，不要把手肘打直鎖死 。</p>
                            <p>3. 兩手間距切勿太窄，否則會練到別的地方。</p>
                            <p>4. 新手建議自身體重的 10-15% 重量的啞鈴。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-chest.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-4">蝴蝶機夾胸
                        </a>
                    </div>
                    <div id="info-4" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/chest-04.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>胸大肌(Pectoralis major)</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~5組，每組8~15下，需要逐漸減重。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 坐於凳上，手握把手，肘彎抵住檔板，手把應該與胸部成一直線。</p>
                            <p>2. 動作幅度可通過上面兩側的半月形板的孔位調節。</p>
                            <p>3. 將上背貼在靠板上。</p>
                            <p>4. 打開時吸氣、挺胸，雙肩竭力後展，注意力完全集中於胸縫。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 合攏時雙肘檔板應相觸，並略停頓1～2秒鐘。這時感覺會更費力，不像啞鈴相觸時更省力。</p>
                            <p>2. 盡力收緊胸肌，或相距少許距離即分開來練習。</p>
                            <p>3. 為了更好地刺激胸縫，可以變換一下握把方式，如雙臂如側平舉狀伸直，拳眼向前，以腕部或小臂 (以手臂長短而定) 抵住檔板做夾胸動作。</p>
                            <p>4. 由於雙臂可以交錯，動作幅度也可以很大。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-chest.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-5">寬距掌上壓
                        </a>
                    </div>
                    <div id="info-5" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/chest-05.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>胸大肌(Pectoralis major)外側</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組8~12下，休息30~45秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 兩手掌向外側打開，兩手掌相距要比肩寬，至於寬的幅度可以根據自身情況來定。</p>
                            <p>2. 雙臂分開，比肩略寬。</p>
                            <p>3. 腳尖支地，用腰腹力量控制軀干成一條直線。</p>
                            <p>4. 然後雙肘向兩側分開，緩慢下降身體到上身貼近地面。</p>
                            <p>5. 略作停頓，再控制還原，當肘部接近伸直時，立刻進行下一次動作。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 眼睛望地、頭不向上仰或向下垂。</p>
                            <p>2. 腰要挺直，側面看頭至腳成一直線。</p>
                            <p>3. 落時吸氣，上時呼氣。</p>
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

