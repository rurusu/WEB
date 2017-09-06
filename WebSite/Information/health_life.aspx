<%@ Page Title="健身資訊 - " Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="health_life.aspx.cs" Inherits="Information_health_life" %>

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

            <img src="../image/health_life_title.jpg" style="max-width: 100%; border: 1px solid transparent; border-radius: 5px;">

            <div class="panel-group" id="ArticleList">

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-food.png" class="icon-style" style="margin: 0px 4px;" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-1">
                            10大增肌減脂食物資料庫
                        </a>
                    </div>

                    <div id="info-1" class="info-arti panel-collapse collapse">
                        <div class="panel-body">
                            <p>常常有人在問，增肌減脂要吃什麼？怎樣才知道自己吃了多少卡路里、蛋白質、脂肪、碳化物？這篇文章將一次為你解答！</p>
                            <p>常言道，「7成靠飲食，3成靠運動」，要練成一身肌肉，必要先管好自己的嘴巴！來，參考以下食物的資料吧！</p>
                            <strong>蛋白質為主的食物</strong>
                            <p>1. 瘦牛肉</p>
                            <p>每150克包含38.7克蛋白質及21.3克脂肪，約276Kcal。</p>
                            <p>2. 雞胸肉</p>
                            <p>每150克包含42克蛋白質及10.1克脂肪，約276Kcal。</p>
                            <p>3. 雞蛋</p>
                            <p>每一顆蛋包含6克蛋白質、5克脂肪及0.4克碳化物，約74Kcal。</p>
                            <p>4. 鮭魚</p>
                            <p>每150克包含28克蛋白質及15克脂肪，約247Kcal。</p>
                            <strong>碳水化合物為主的食物</strong>
                            <p>5. 希臘乳酪</p>
                            <p>每227克(一杯)包含8克蛋白質、14克脂肪及34克碳化物，約294Kcal。</p>
                            <p>6. 糙米</p>
                            <p>每一碗包含6克蛋白質、2克脂肪及46克碳化物，約220Kcal。</p>
                            <p>7. 燕麥</p>
                            <p>每一碗包含6克蛋白質、2.4克脂肪及25.3克碳化物，約145Kcal。</p>
                            <p>8. 地瓜</p>
                            <p>每100克包含1.6克蛋白質及20克碳化物，約86Kcal。</p>
                            <p>9. 牛奶</p>
                            <p>每一杯包含7.8克蛋白質、7.9克脂肪及11克碳化物，約143Kcal。</p>
                            <p>10. 乾酪</p>
                            <p>每100克包含12.5克蛋白質、4.5克脂肪及2.7克碳化物，約103Kcal。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-food.png" class="icon-style" style="margin: 0px 4px;" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-2">
                            什麼時候該進食蛋白質？原來比你想像中還重要！
                        </a>
                    </div>
                    <div id="info-2" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p>如果你一天要攝取150克蛋白質，應該怎樣分配？</p>
                            <p>答案是，</p>
                            <strong>分6餐，進食時間及份量平均！</strong>
                            <p>我們定時而較頻密地進食能讓血液中的蛋白質濃度較高，這不單止能促進肌肉生長，亦可減少肌肉分解的速度。大家有所不知的是，肌肉生長(Anabolism)及肌肉分解(Catabolism)是各自進行、沒多大關連的，因此除了要增肌，大家亦要小心燒肌。</p>
                            <p>快速吸收的蛋白質如乳清蛋白，有助於肌肉生長，而吸收速度較慢的如酪蛋白及肉類蛋白質，則可以減低肌肉消耗的程度。所以大家不妨參考以下的建議：</p>
                            <p>1. 早餐：乳清蛋白、肉類/蛋</p>
                            <p>2. 小吃：奶類/乳酪</p>
                            <p>3. 午餐：肉類/蛋/豆類製品</p>
                            <p>4. 運動後30分鐘內：乳清蛋白</p>
                            <p>5. 晚餐：肉類/蛋/豆類製品</p>
                            <p>6. 睡前1小時：酪蛋白</p>
                            <p>研究亦指出，睡覺前使用酪蛋白能增加肌肉量，因為我們在深層睡眠時，生長賀爾蒙在血液中的濃度是最高，而酪蛋白分解慢的特性能讓身體在生長賀爾蒙高的數小時內，使肌肉增長。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-food.png" class="icon-style" style="margin: 0px 4px;" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-3">
                            如何選擇最適合的乳清蛋白？
                        </a>
                    </div>
                    <div id="info-3" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p>現在市面上不少乳清蛋白，還添加了其他的物質，或是附加其他增重、高蛋白等特殊功效，如果不清楚自己吃乳清蛋白的目的，很容易迷失在茫茫商品海裡。為了讓選擇的過程更簡單，我們將一般健身愛好者的需求，大概分成以下兩類：</p>
                            <strong>1. 一般乳清蛋白</strong>
                            <p>給想增加肌肉的一般訓練者或從事各項運動者。</p>
                            <strong>2. 高熱量蛋白</strong>
                            <p>又稱增重乳清蛋白，由高碳水化合物、糖和脂肪構成，可以幫助那些新陳代謝快速，吃很多卻沒辦法增加體重的人，藉由攝取更多卡路里，有效達到增加體重的效果。</p>
                            <p>除了以上提及的乳清蛋白功能，以及需要的量之外，在購買的時候還有一些值得注意的細節，畢竟一大罐乳清蛋白通常都不太便宜，多一點謹慎，可以讓錢花在刀口上。</p>
                            <strong>1. 注意成份列表</strong>
                            <p>如同上面介紹，乳清蛋白其實還能再細分成三種不同形式，購買前先看清楚營養標示，以及另外添加的如支鏈胺基酸BCAAs、肌酸、牛磺酸、酵素等等添加物質來加強增肌效果。</p>
                            <strong>2. 做好計算</strong>
                            <p>看清楚營養標示上所列示的每份(每匙)所含的蛋白質、熱量、碳水化合物、脂肪、糖、鈉含量，精準掌控攝取的量。而高品質的乳清蛋白產品，每一份量(每一量匙)的蛋白質含量大約介於60-80%。舉例來說，如果商品標示上指出，蛋白粉在每湯匙（28克）中含有25克蛋白質，那麼我們就可以算出，其蛋白質含量為90%，是個品質不錯的商品。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-food.png" class="icon-style" style="margin: 0px 4px;" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-4">
                            加強記憶力！五個不可缺少的食物
                        </a>
                    </div>
                    <div id="info-4" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p>白天常容易神遊，會使注意力難以集中？在你急著想找藥物治療之前，或許因該先找找問題的出處了。你信不信，促使你在漫長的工作日中走神的罪魁禍首正是你所吃的食物。這是一個充滿競爭的世界，要獲得真正的成功，你必須使自己拿出最佳狀態，哪怕是生活中的一點小事也要做到最好。</p>
                            <p>以下列出的五種食物不僅可以維持你從早到晚的工作效率，而且幫助你提高專注能力。這些食物可以輕而易舉地將它們加入到你一天的飲食中，養成這樣的飲食習慣，你這一生會受益無窮。</p>
                            <strong>1. 燕麥碎片</strong>
                            <p>吃早餐可以幫助你的短記憶延展一整天，並且幫助於減少一天的進食量。至於為什麼選擇燕麥片？燕麥含有豐富的膳食纖維與β-葡聚醣；燕麥的可溶性纖維能在腸道內與水混合形成膠質，長時間維持飽足感還可以控制想吃甜食的欲望，減少一天內其餘時間的進食。你可以加一點冷凍果醬來提升甜味，但切記不要加糖喔。</p>
                            <strong>2. 藍莓</strong>
                            <p>藍莓中的抗氧化劑，可以刺激保護大腦的酵素，它有助於提高記憶力。一些研究人員甚至認為它對長期記憶功能有幫助，並有可能有助於預防老年癡呆症與帕金森症。英國研究員史賓賽（Dr. Jeremy Spencer）指出藍莓所含的「類黃酮」（flavonoids）才是真正的關鍵，類黃酮不僅可以疏通血管，提高血流量，同時可以降低血壓。他說，食用藍莓短期內可以增進認知功能的表現，長期則可以讓頭腦更健康，經常食用有助提升記憶力。</p>
                            <strong>3. 鮭魚</strong>
                            <p>鮭魚是世界名貴魚類之一，也是一種營養價值極高的食用魚，享有“水中珍品”的美譽，從野生鮭魚中提煉的鮭魚油，主要成分為DHA和EPA，主要功能為降低膽固醇，預防血管疾病，保護視力。EPA與DHA均為不飽和脂肪酸，不飽和脂肪酸，是人體自身不能合成但又不可缺少的重要營養素，因此稱為人體必需脂肪酸；鮭魚中的Omega-3不飽和脂肪酸可以提升大腦集中能力。鮭魚據稱也能緩解抑鬱症並降低心臟疾病的發生風險。</p>
                            <strong>4. 酪梨</strong>
                            <p>酪梨中的健康脂肪有助於保持大腦功能、增強專注能力。它也被證實可以幫助營養的吸收，並且富含抗氧化劑，有助於抗衰老，以及預防癌症以及心臟疾病的發生。</p>
                            <strong>5. 綠茶</strong>
                            <p>綠茶具有天然的咖啡因可以幫助加深我們的專注力。而熱茶比零食更能提供長時間的飽足感。根據美國近期的一項研究表明，如果你感覺你有點健忘，綠茶中提高大腦的屬性能幫助你的思維更加敏捷。研究人員確定每天至少喝兩杯綠茶的老人，與那些一周只喝三次綠茶的老人，前者的認知功能的障礙跡象比後者少了近一半。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-food.png" class="icon-style" style="margin: 0px 4px;" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-5">
                            Leg Day後，十級痠痛怎麼辦？
                        </a>
                    </div>
                    <div id="info-5" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p>有些朋友（包括小編）是很享受這種痠痛的感覺，因為這代表我的肌肉付出過努力。但是，有時候這種痠痛會影響下一次訓練的效能，更可能阻礙到日常生活，例如小編每逢腳部訓練後的一天，上落樓梯總是異常辛苦。究竟有什麼方法可以減輕這運動後的痠痛？小編有以下建議：</p>
                            <strong>1. 拉筋/按摩滾輪</strong>
                            <p>增加血液循環，加快肌肉復元。</p>
                            <strong>2. 動態恢復</strong>
                            <p>透過低衝擊的帶氣運動，例如慢跑及瑜伽，可加強血液循環，並消耗積存在肌肉中的乳酸。</p>
                            <strong>3. 靜態恢復</strong>
                            <p>身體透過靜止的休息，例如睡覺，讓肌肉保持靜止狀態，以得到充份休息及生長。</p>
                            <strong>4. 按摩</strong>
                            <p>按摩可以抒緩肌肉，減低痛楚。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-food.png" class="icon-style" style="margin: 0px 4px;" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-6">
                            睡眠不足將嚴重影響健身效果
                        </a>
                    </div>
                    <div id="info-6" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p>健身3大要素：科學訓練、充足營養、充足睡眠，3者缺一不可。健身行業里一直流傳著「3分靠訓練，7分靠恢復」，可見恢復在某種程度上意義大於訓練。</p>
                            <p>對於健身的人來說，睡眠不夠好的話一切都免談。因為，無論你是想增長肌肉還是減肥脫脂，也不管你在運動時多麼的刻苦，飲食上多麼的講究，但是只要你不能夠保證睡眠時間，在該睡的時候不能酣然入睡的話，將會讓你辛苦的健身效果大打折扣。</p>
                            <strong>1. 睡夠8小時</strong>
                            <p>只要少睡一小時，身體就會多支出100-200千卡的熱量來維持機能，睡眠不夠還會影響情緒，使人變得煩躁、缺乏耐心。</p>
                            <strong>2. 健身與睡眠最好間隔4小時</strong>
                            <p>健身者運動的興奮神經很敏感，應該調整計劃，在健身結束後4個小時左右再準備入睡。</p>
                            <strong>3. 肌肉的增長是發生在健身之外的時間</strong>
                            <p>一般人體激素分泌從晚上11-12點進入最高值，這時候也是人體自我生長和修復的最佳時間，若沒有好好休息給肌肉恢復的時間，而熬夜的很晚，將會對身體造成二度傷害。</p>
                            <strong>4. 睡眠不足影響肌纖維被修復的速度</strong>
                            <p>訓練的時候肌纖維在受損，修復肌纖維的工作就在休息時進行。在我們休息時，免疫系統會在這個時候修復在白天受損的身體。如果你的睡眠時間不夠，身體修復的就不夠，同時肌肉恢復也不夠。</p>
                            <strong>5. 睡眠不足會促進身體分泌更多的皮質醇</strong>
                            <p>皮質醇會導致延緩肌肉塑造。同時還能破壞身體組織。如此一來，皮質醇的高釋放量會延長你恢復到最佳狀態的時間。</p>
                        </div>
                    </div>
                </div>

                <!--
                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-food.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-7"></a>
                    </div>
                    <div id="info-7" class="panel-collapse collapse">
                        <div class="panel-body">
                            <h5><strong></strong></h5>
                            <p></p>
                            <h5><strong></strong></h5>
                            <p></p>
                            <h5><strong></strong></h5>
                            <p></p>
                            <p></p>
                            <h5><strong></strong></h5>
                            <p></p>
                            <p></p>
                            <p></p>
                            <p></p>
                        </div>
                    </div>
                </div>
                -->

            </div>
        </div>

    </div>

    <div>&nbsp;</div>
    <div class="div-fly" id="goTop">
        <a href="#">
            <img src="../image/up-arrow.png" style="width: 30px; height: 30px;" /></a>
    </div>
</asp:Content>

