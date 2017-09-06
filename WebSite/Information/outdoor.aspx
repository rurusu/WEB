<%@ Page Title="健身資訊 - " Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="outdoor.aspx.cs" Inherits="Information_outdoor" %>

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

            <img src="../image/outdoor_title.jpg" style="max-width: 100%; border: 1px solid transparent; border-radius: 5px;">

            <div class="panel-group" id="ArticleList">

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-outdoor.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-1">
                            【書摘】《先別急著跑》導正你的跑步迷思
                        </a>
                    </div>

                    <div id="info-1" class="info-arti panel-collapse collapse">
                        <div class="panel-body">
                            <p>「天生就會跑」、「隨時隨地都能跑」讓跑步一時之間成為風靡全台的運動，然而，在老少咸宜的跑步過程中，許多人仍然不知道，並非所有場地都適合跑步；此外，許多上了年紀的阿公阿嬤被醫生告知得了「退化性關節炎」就對「運動」這回事相當抗拒...退化了就不能再運動了嗎？《先別急著跑：奧運教練教你正確跑步》帶來許多跑步迷思，快來導正你的觀念吧！</p>
                            <strong>1. 迷思：想減肥，就跑步？</strong>
                            <p>選擇用跑步來減肥，確實是很好的方法，用慢跑的方式，將跑步速度降低至中低強度持續進行，將身體能量供應機轉延長至有氧系統，提高體內代謝機轉，消耗囤積的脂肪，不但對減肥，甚至對提升心肺功能、促進健康均可達到相當好的效果。</p>
                            <p>然而，通常想減肥的人，其體重往往超過標準，過重的人如果穿上運動鞋就立刻跑個幾公里，可能減肥尚未成功，就造成膝蓋、關節肌腱的傷害。受傷之後，因無法繼續運動，活動力降低，體重反而增加，得不償失。</p>
                            <p>另一方面，並不是體重輕的人就可以一直跑步，需要增強肌肉纖維與關節的承受力，再慢慢延長跑步的時間與距離。</p>
                            <p>每個人的身體機能不同，想要達到的體能目標也不一樣，因此體能訓練沒有一定的標準。</p>
                            <strong>2. 迷思：跑步容易造成膝關節受傷？</strong>
                            <p>許多人誤以為跑步容易造成膝蓋受傷，其實這是因為錯誤的跑步方式、強度，以及未能同時增強下肢肌群力量所造成，加上沒有漸進式增強心肺功能、建立全身肌群（尤其是下肢肌群）支撐力量，而在短時間內貿然大量投入身體未能負荷的時間與強度，更加容易造成傷害。</p>
                            <p>想要跑步的初入門者，首要考量自身的體能。如果以前沒有運動習慣，或是過於肥胖的人，關節肌腱或全身肌群可能已有退化的情形，不足以應付跑步所需的肌群強度，建議在運動前要做適當的伸展操及肌力訓練，再以快走的方式開始，待慢慢適應後，再進階到時間短、分段式的慢跑。</p>
                            <p>此外，運動後的休息（恢復、修補）更要特別注意，初學者可採跑一天休息一天的步調進行，再搭配每週2~3次的肌力訓練，先強化全身大肌群力量，再分別針對踝、膝關節與下肢肌群進行訓練。如此一來，不僅膝關節不容易受傷，更能夠強化肌群的強度，避免肌肉萎縮老化。</p>
                            <strong>3. 迷思：晚上最好不要跑步，會影響睡眠？</strong>
                            <p>晚上跑步完後不容易入睡，是因為跑步後血液循環加速與交感神經增強，大概會有90~120分鐘的興奮期，之後會逐漸回復正常。因此只要跑步與睡眠時間有兩個小時以上的間隔，一般而言就不會有難以入睡的問題，反而因為身體有些能量消耗產生疲累而更好入眠。</p>
                            <p>如果是早上起來跑步，建議最好能在起床後20~30分鐘再開始跑。因為剛起床時，血液循環較慢、肌肉沾黏度較高，突然跑步對心臟負荷太大，所以跑步前一定要先做伸展操，可以活化肌肉與促進血液循環，另建議出發前喝一點水或含糖飲料，以補充熱量。</p>
                            <p>其實運動沒有分哪個時段比較好，一切端看個人的調整，以不造成生活作息混亂為主要考量。</p>
                            <br />
                            <p style="font-size:14px; color: #888">更多你不知道的跑步知識，請參考時報出版《先別急著跑：奧運教練教你正確跑步》</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-outdoor.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-2">
                            快走，適合多數人的運動
                        </a>
                    </div>
                    <div id="info-2" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p>快走不僅是有氧的耗能運動，而且快走時雙膝承受的壓力只有體重的2-3倍，對關節壓力較小，而且對雙下肢肌力的要求也較低，比起慢跑來說相對安全，相當適合一般民眾作為入門運動。</p>
                            <p>若以每小時約6公里的速度快走，這個時候，每分鐘每公斤消耗的熱量是0.075大卡，以體重60公斤的人來說，每分鐘可消耗4.5大卡，雖然比慢跑少，但和登山健行、騎休閒腳踏車差不多。</p>
                            <strong>快走的4大好處</strong>
                            <p>1. 使肌力進步；</p>
                            <p>2. 能鍛練肌耐力；</p>
                            <p>3. 能鍛練肌耐力；</p>
                            <p>4. 能改變身體組成，增加肌肉組織而減少脂肪組織比例。</p>
                            <strong>快走消耗的熱量</strong>
                            <p>只要走路速度比平常舒適散步的速度快，走路時感覺心跳加速、會微喘、流汗，就是快走。但是要達到有效率的快走，每小時速率是6到7公里。</p>
                            <p>快走的正確姿勢應是：頭頸放鬆、下巴微抬、眼睛直視前方，肩部擴胸、雙手在身體兩側規律地擺動、縮小腹、夾臀以保持直立，跨大步走。</p>
                            <p>在耗能方面，若體重50公斤的人，每走半小時約消耗112大卡、60公斤消耗135大卡。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-outdoor.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-3">
                            那些年，我們信過的跑步謠言
                        </a>
                    </div>
                    <div id="info-3" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p>不知從何時起，關於跑步的傳說就流傳於江湖，特別是「跑步傷膝蓋」一說，真是讓跑步背了好一陣子的黑鍋。</p>
                            <p>其實除此之外，有些看似根深蒂固的道理，也並非我們想像中的那樣！</p>
                            <strong>1. 跑得越久越好？</strong>
                            <p>對於很多急於瘦身的妹紙而言，總以為跑的時間越長、流的汗越多，就能消耗更多的卡路里。單純地以為這樣就能達到更好的瘦身效果，讓脂肪燃燒小宇宙？其實這樣做，並不是最好的選擇。</p>
                            <p>一般而言，慢跑20分鐘以上才會消耗脂肪,而超過1小時又會消耗蛋白質。這會讓你丟失肌肉纖維，而肌肉的流失則會直接降低基礎代謝率，從而影響脂肪的代謝，反而不利於減肥。</p>
                            <p>另外，為了之後更好地堅持，建議單次訓練不要過久，以免身體疲勞和運動損傷。有氧慢跑建議每次30-45分鐘 (不包括熱身、拉伸等)。</p>
                            <strong>2. 跑步會讓小腿變粗？</strong>
                            <p>撇去需要爆發力的百米飛人大戰，大家有見過長跑運動員是腿粗的嗎？</p>
                            <p>其實跑步後感覺小腿酸脹並不是肌肉在瘋長，而是運動後腿部充血導致的肌肉膨脹而已，休息過後就會恢復原樣了。真正導致小腿變粗的原因是錯誤的跑步姿勢，跑步時如果用前腳掌先著地或整個腳同時著地，會強烈刺激小腿肌肉，造成小腿變粗。正確的跑姿不僅讓你看起來帥氣迷人，同時對改善腿型也有幫助。</p>
                            <strong>3. 跑步中不能停，停了就沒效果？</strong>
                            <p>江湖傳言，跑步是項一氣呵成的運動，中途是不能停的，一旦跑跑走走那就很難再跑起來，對減脂不利……</p>
                            <p>事實上，只要不是跑兩步就進入走路模式，減脂效果是不會受到影響的。有研究表明，當你跑不動時快走一會兒繼續跑，這種間歇性跑步法不僅不會讓你白跑，反而能幫助你跑得更久，燃脂更久！</p>
                            <strong>4. 跑步後不能進食？</strong>
                            <p>每次跑完後沒多久，就深深地感覺身體仿佛被掏空……而此時到底是吃還是不吃，這是個問題。</p>
                            <p>有種說法是跑步後身體正處於急需營養的狀態，攝入的熱量更容易被吸收，因此不利於減肥。這是拿身體健康在開玩笑啊！大家都知道節食減肥並不是明智之舉，跑步過程中身體不只燃燒了脂肪，更消耗掉了大量的營養物質，此時合理進食，能幫助身體更快恢復到最佳狀態。當然也不能太放肆，還是以富含蛋白質、膳食纖維的食物為主，既能果腹，同時也沒有太大負罪感。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-outdoor.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-4">
                            有型又高效的跑步支招
                        </a>
                    </div>
                    <div id="info-4" class="panel-collapse collapse">
                        <div class="panel-body">
                            <strong>1. 跑前做10分鐘左右的肌力運動</strong>
                            <p>跑步前給予肌肉刺激的話，可以提高脂肪的燃燒效率。肌力運動一方面可以消耗掉一部分糖原，一方面會使身體分泌出生長激素，幫助脂肪更有效率地燃燒。做10分鐘左右的深蹲或腹肌運動會很有效果。</p>
                            <strong>2. 把跑步與無氧力量運動結合起來</strong>
                            <p>雖然慢跑有益於保持健康和瘦身，但專家並不建議天天跑，最好一周跑4-5天，不跑步的日子，可以適量地進行無氧力量訓練。無氧運動相較於跑步更側重增肌和提高耐力，能幫助身體肌肉消耗熱量。</p>
                            <strong>3. 給跑步添加點樂趣</strong>
                            <p>長期漫無目的地跑步的確會有瓶頸期，而突破則可以通過一些更有趣的方式來實現。像是邊遛狗邊跑、約上跑友開發新的路線，或是一路收聽自己喜歡的電台或音樂，用APP記錄你跑過的足跡，這些都是不錯的選擇喔。</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <img src="../image/info/info-outdoor.png" class="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#ArticleList" href="#info-5">
                            達人教你正確跑步
                        </a>
                    </div>
                    <div id="info-5" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p>跑步是大多數人最喜歡的運動，爸爸媽媽、男女老少只要到傍晚時刻就會到附近學校操場跑個幾圈，跑步可以增加肺活量、增強心臟機能，但是要跑步記得要穿一雙好鞋子唷，不然很容易傷到腳，我們一起來看。</p>
                            <strong>1. 速度掌握得宜</strong>
                            <p>不同的速度對心臟的刺激是不同的，慢速跑對心臟的刺激比較溫和。通常來說，用自己的每分鐘晨脈數乘以1.4～1.8所得到的次數作為靶心率來控制初期跑步強度是比較剛好的。</p>
                            <strong>2. 步伐不必過大</strong>
                            <p>步伐小的目的是降低肌肉在每一步中的用力，盡可能地延長跑步的時間。步幅大了，就容易產生疲勞，從而會降低跑步的興趣，使人最終放棄跑步。</p>
                            <strong>3. 距離盡量拉長</strong>
                            <p>跑程應在3公里以上，不過要量力而行。跑的不用快，跑得長一點可消耗人體內蓄積的多餘熱量，這種消耗是降低血脂、血糖、血壓的最好的輔助方法。</p>
                            <strong>4. 不能過度勉強</strong>
                            <p>這是跑步中最重要的原則。每一個人的體質、周圍環境等均有所不同，因此在跑步中一定要結合自身實際情況進行，如合理安排跑速、跑程等。當然最好是在專業人員的指導下進行。</p>
                            <strong>5. 暖身收操必備</strong>
                            <p>跑步開始前的暖身與結束後收操是一定不可少的，跑步前可以做些簡單的四肢活動，先讓肌肉習慣運動狀態，避免額外的受傷，而跑步後的收操也是避免隔天的肌肉酸痛。</p>
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

