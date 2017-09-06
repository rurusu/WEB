<%@ Page Title="健身資訊 - " Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="back.aspx.cs" Inherits="Information_back" %>

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

            <img src="../image/back_title.jpg" style="max-width: 100%; border: 1px solid transparent; border-radius: 5px;">

            <div class="panel-group" id="ArticleList">

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-back.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-1">
                            背部下拉
                        </a>
                    </div>

                    <div id="info-1" class="info-arti panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/back-01.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>背闊肌、上背、中背</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組15下。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 兩手分別握住上方橫槓兩端的把柄，兩手間距比肩寬，姆指向上。</p>
                            <p>2. 下半身坐穩，上半身微微向後傾，形成一個拱型。</p>
                            <p>3. 吸氣，自上方位置將橫桿垂直下拉至胸前心位置。</p>
                            <p>4. 稍停2-3秒鐘，兩臂要平均用力，避免猛拉或無控制地放鬆還原。</p>
                            <p>5. 吐氣，沿原路緩慢還原，重複做，留意上半身不要大幅度搖擺，把柄是上下垂直移動。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 拉下時把手置於頸後，會對頸椎盤帶來不必要的壓力，嚴重時可以導致肩袖損傷，正確姿勢是將把手拉至胸前。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <!-- 大標 -->
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-back.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-2">
                            坐姿划船
                        </a>
                    </div>
                    <!-- 內容 -->
                    <div id="info-2" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/back-02.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>上背/中背</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組15下，休息30~40秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 雙肩放鬆、吸氣，將把手拉向自己胸前並呼氣，直至肘關節到90度左右即可。</p>
                            <p>2. 停頓約1秒後返回開始位置，返回開始位置時不要放鬆肌肉，放回速度不要太快。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 保持你的下背部微拱，否則鍛煉重心是腰部，容易傷到後腰。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-back.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-3">啞鈴上舉
                        </a>
                    </div>
                    <div id="info-3" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/back-03-1.jpg" class="info-img" />
                            <img src="../image/info/back-03-2.jpg" class="info-img" />
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
                        <img src="../image/info/info-back.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-4">
                            槓鈴曲臂上拉
                        </a>
                    </div>
                    <div id="info-4" class="panel-collapse collapse">
                        <div class="panel-body">
                            <img src="../image/info/back-04-1.jpg" class="info-img" />
                            <img src="../image/info/back-04-2.jpg" class="info-img" />
                            <h5><strong>主要訓練肌肉群</strong></h5>
                            <p>背闊肌</p>
                            <h5><strong>組數</strong></h5>
                            <p>3~4組，每組8~12下，休息30~45秒。</p>
                            <h5><strong>動作</strong></h5>
                            <p>1. 先在頭後方的地上放一個槓鈴。面向天，平躺在水平推舉椅上，向後伸手去拿起槓鈴。</p>
                            <p>2. 保持著手彎曲，把槓升起並越過頭部直到胸前。</p>
                            <p>3. 把槓慢慢地向後放下到開始的位置，感受背闊肌伸展到最盡。</p>
                            <h5><strong>注意事項</strong></h5>
                            <p>1. 不要讓槓鈴碰到地面。</p>
                            <p>2. 一開始不要舉太重的槓鈴。</p>
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

