<%@ Page Title="健身資訊 - " Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="legs.aspx.cs" Inherits="Information_legs" %>

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

            <img src="../image/legs_title.jpg" style="max-width: 100%; border: 1px solid transparent; border-radius: 5px;">

            <div class="panel-group" id="ArticleList">

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-legs.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-1">簡易深蹲
                        </a>
                    </div>

                    <div id="info-1" class="info-arti panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/legs-01.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>股四頭肌(Quadriceps)</p>
                            <h5><strong>組數</strong></h5>
                            <p>3組，每組6~8下。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 雙腳距離與肩同寬，腳尖略向外張開15度左右。</p>
                            <p>2. 是一個「坐」下來的動作，上半身盡量挺直，將你的臀部往後坐， 然後慢慢的往下，讓大腿與地面平行，然後慢慢回到準備動作。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 上半身保持挺直。</p>
                            <p>2. 大腿要跟地板平行。</p>
                            <p>3. 膝蓋不可超越腳尖。</p>
                            <p>4. 重心放在腳跟而不是腳尖。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <!-- 大標 -->
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-legs.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-2">傳統硬拉
                        </a>
                    </div>
                    <!-- 內容 -->
                    <div id="info-2" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/legs-02.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>全身類</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組8~12下，休息30~40秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 拉起槓鈴，挺胸收腹，腳掌與肩同闊，注意肩胛骨一定要向後收實。</p>
                            <p>2. 先讓髖關節屈曲，槓鈴貼着身軀下降，膝關節稍為微曲。</p>
                            <p>3. 膝關節保持微曲，上身軀幹保持畢直，肩胛骨保持收實。</p>
                            <p>4. 槓鈴到達膝關節後，才屈曲膝關節。</p>
                            <p>5. 槓鈴到達地面後，呼氣，利用膕繩肌及臀大肌將槓鈴帶回原來位置。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 請注意下腰的感覺，如果無法保持畢直，訓練重量而經過重，請減輕重量。</p>
                            <p>2. 這是訓練膕繩肌及臀大肌為主的動作，所以請將將注意力放在這兩組肌肉，切勿用下腰拉起重量。</p>
                            <p>3. 膕繩肌及臀大肌力量大，所以可使用較大的重量。</p>
                            <p>4. 一定要讓槓鈴過了膝關節才可屈曲膝關節。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-legs.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-3">下蹲
                        </a>
                    </div>
                    <div id="info-3" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/legs-03.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>股四頭肌(Quadriceps)</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組8~12下，休息40~45秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 雙腳分開站立至肩寬。</p>
                            <p>2. 左腳向前踏步。</p>
                            <p>3. 雙腿同時屈膝至直角，上身挺直，保持這個姿勢靜止1-2秒。</p>
                            <p>4. 左腳發力把身體帶回起始動作。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 要選擇在較硬的地面上進行動作，切忌在瑜珈墊上進行。</p>
                            <p>2. 步幅要大，這樣屈膝時膝蓋才不會超越腳尖。</p>
                            <p>3. 前膝不要向內翻。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-legs.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-4">
                            側面下蹲
                        </a>
                    </div>
                    <div id="info-4" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/legs-05.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>股四頭肌 (Quadriceps)</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組8~12下，休息30秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 身體立正，雙腳合齊，雙手放在腰部避免動作其間用手來平衝。</p>
                            <p>2. 右腳向右大踏步，作下蹲動作，左腳在整個過程保持伸直。</p>
                            <p>3. 右腳用力及伸直，身體回到準備動作，然後以左腳重覆。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 挺胸收腹，膝蓋不要越過腳尖。</p>
                            <p>2. 新手熟習後可配合啞鈴去做，增加訓練強度。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-legs.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-5">
                            曲膝橋式
                        </a>
                    </div>
                    <div id="info-5" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/legs-04-1.jpg" class="info-img" />
                            <img src="../image/info/legs-04-2.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>臀肌(Glute)</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組8~12下，休息30秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 背部躺平在瑜珈墊上，雙腿屈曲，雙手放在身體兩旁，手掌向下。</p>
                            <p>2. 提起腰部，直至膝蓋、腰和膊頭成一直線，收緊腹肌。</p>
                            <p>3. 靜止2-3秒，然後慢慢將腰部放下。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 腰部不要提得太高，否則背部會因為伸展過度而受傷，如果下背感到疼痛便要停止動作。</p>
                            <p>2. 嘗試將身體重量平衡在膊頭與腳掌之間，這樣可幫助你將重心放在臀部。</p>
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

