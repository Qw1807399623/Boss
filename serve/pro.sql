SET NAMES UTF8;
DROP DATABASE IF EXISTS boss;
CREATE DATABASE boss CHARSET=UTF8;
USE boss;
CREATE TABLE boss_pro(
    /*公司ID*/
    pid INT PRIMARY KEY AUTO_INCREMENT,
    /*公司名称*/
    pname VARCHAR(128),
    /*职位*/
    position VARCHAR(128),
    /*地区*/
    city VARCHAR(128),
    /*工作经验*/
    age VARCHAR(128),
    /*学历*/
    education VARCHAR(128),
    /*最低工资*/
    minsal INT,
    /*最高工资*/
    maxsal INT,
    /*规模*/
    many INT,
    /*融资*/
    financing VARCHAR(128),
    /*图片路径*/
    jpg VARCHAR(128)
);

/*********注册表*************/
CREATE TABLE boss_reg(
    id INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(15),
    upwd VARCHAR(32)
);

/***********测试*********/
CREATE TABLE company(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  cname varchar(128),
  clogo varchar(128),
  city varchar(128),
  financing varchar(128),
  many varchar(32),
  tmt varchar(128),
  aboutus varchar(1024),
  cpic varchar(128),
  uccn varchar(128),
  compall varchar(128),
  cboss varchar(64),
  logintiem varchar(64),
  lmonry varchar(64)
);

/********详情********/
CREATE TABLE boss_details(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    /*职位*/
    position VARCHAR(128),
    /*地点*/
    city VARCHAR(128),
    /*工作经验*/ 
    age VARCHAR(128),
    /*学历*/
    education VARCHAR(128),
    /*技能*/
    skill VARCHAR(128),
    /*工资*/
    sal INT,
    /*图片头像*/
    jpg VARCHAR(128),
    /*网站*/
    website VARCHAR(32),
    /*公司名称*/
    pname VARCHAR(32)
);

INSERT INTO boss_reg VALUES(NULL,13178599893,"123456");

INSERT INTO boss_details VALUES
(NULL,'web前端','广州','1-3年','本科','HTML/CSS/web前端/JS','7-14k','','宇信科技','北京宇信科技集团股份有限公司');

INSERT INTO boss_pro VALUES
(NULL,"健客网","web前端","广州","在校生","初中",10,13,50,"A轮","jianke.jpg"),
(NULL,"漫道科技","PHP工程师","北京","3-5年","本科",14,60,100,"B轮","mandao.jpg"),
(NULL,"优点网络科技","高级java工程师","上海","3-5年","大专",5,7,90,"C轮","youdian.jpg"),
(NULL,"锦江酒店","web前端","天津","在校生","本科",15,60,40,"未融资","jinjiang.jpg"),
(NULL,"广州视睿","PHP工程师","重庆","3-5年","高中",13,50,80,"天使轮","shirui.jpg"),
(NULL,"数块科技","web前端","黑龙江","3-5年","本科",15,50,20,"D轮","shukuai.jpg"),
(NULL,"南瑞信通","高级java工程师","吉林","在校生","大专",17,19,40,"已上市","nanrui.jpg"),
(NULL,"图匠数据","web前端","辽宁","在校生","硕士",15,20,150,"不需要融资","tujiang.jpg"),
(NULL,"健客网","web前端","内蒙古","应届生","本科",10,50,50,"A轮","jianke.jpg"),
(NULL,"漫道科技","PHP工程师","河北","在校生","博士",14,20,100,"B轮","mandao.jpg"),
(NULL,"优点网络科技","高级java工程师","北京","一年以内","大专",5,7,90,"C轮","youdian.jpg"),
(NULL,"锦江酒店","web前端","上海","应届生","本科",15,30,40,"未融资","jinjiang.jpg"),
(NULL,"广州视睿","PHP工程师","广州","应届生","博士",13,30,80,"天使轮","shirui.jpg"),
(NULL,"数块科技","web前端","深圳","一年以内","本科",15,20,20,"D轮","shukuai.jpg"),
(NULL,"南瑞信通","高级java工程师","杭州","3-5年","高中",17,20,40,"已上市","nanrui.jpg"),
(NULL,"图匠数据","web前端","天津","应届生","初中",15,30,150,"不需要融资","tujiang.jpg"),
(NULL,"健客网","web前端","西安","3-5年","本科",10,13,50,"A轮","jianke.jpg"),
(NULL,"漫道科技","PHP工程师","苏州","3-5年","本科",14,30,100,"B轮","mandao.jpg"),
(NULL,"优点网络科技","高级java工程师","武汉","一年以内","硕士",5,7,90,"C轮","youdian.jpg"),
(NULL,"漫道科技","PHP工程师","苏州","应届生","本科",14,30,1000,"B轮","mandao.jpg"),
(NULL,"优点网络科技","高级java工程师","武汉","5-10年","硕士",5,7,1000,"C轮","youdian.jpg"),
(NULL,"数块科技","高级java工程师","武汉","一年以内","硕士",5,7,10000,"C轮","youdian.jpg"),
(NULL,"锦江酒店","高级java工程师","武汉","10年以上","硕士",5,7,100000,"C轮","youdian.jpg"),
(NULL,"锦江酒店","web前端","内蒙古","10年以上","博士",5,7,40,"未融资","jinjiang.jpg"),
(NULL,"广州视睿","PHP工程师","苏州","5-10年","本科",3,5,80,"天使轮","shirui.jpg"),
(NULL,"数块科技","web前端","西安","一年以内","中专",3,5,20,"D轮","shukuai.jpg"),
(NULL,"数块科技","web前端","西安","3-5年","中专",2,3,20,"D轮","shukuai.jpg"),
(NULL,"南瑞信通","高级java工程师","苏州","3-5年","大专",5,7,40,"已上市","nanrui.jpg"),
(NULL,"图匠数据","web前端","黑龙江","1-3年","本科",5,7,150,"不需要融资","tujiang.jpg"),
(NULL,"健客网","web前端","深圳","3-5年","本科",10,13,50,"A轮","jianke.jpg"),
(NULL,"漫道科技","PHP工程师","杭州","1-3年","中专",7,10,100,"B轮","mandao.jpg"),
(NULL,"优点网络科技","高级java工程师","天津","3-5年","大专",5,7,90,"C轮","youdian.jpg"),
(NULL,"锦江酒店","web前端","重庆","3-5年","本科",7,10,40,"未融资","jinjiang.jpg"),
(NULL,"广州视睿","PHP工程师","北京","1-3年","中专",3,5,80,"天使轮","shirui.jpg"),
(NULL,"数块科技","web前端","广州","3-5年","本科",7,16,20,"D轮","shukuai.jpg"),
(NULL,"广州视睿","PHP工程师","北京","1-3年","中专",3,5,500,"天使轮","shirui.jpg"),
(NULL,"数块科技","web前端","广州","3-5年","本科",7,16,500,"D轮","shukuai.jpg"),
(NULL,"南瑞信通","高级java工程师","广州","1-3年","大专",7,10,40,"已上市","nanrui.jpg"),
(NULL,"图匠数据","web前端","河北","5-10年","本科",7,10,150,"不需要融资","tujiang.jpg"),
(NULL,"健客网","web前端","广州","在校生","初中",10,13,50,"A轮","jianke.jpg"),
(NULL,"漫道科技","PHP工程师","北京","3-5年","本科",14,60,100,"B轮","mandao.jpg"),
(NULL,"优点网络科技","高级java工程师","上海","3-5年","大专",5,7,90,"C轮","youdian.jpg"),
(NULL,"锦江酒店","web前端","天津","在校生","本科",15,60,40,"未融资","jinjiang.jpg"),
(NULL,"广州视睿","PHP工程师","重庆","3-5年","高中",13,50,80,"天使轮","shirui.jpg"),
(NULL,"数块科技","web前端","黑龙江","3-5年","本科",15,50,20,"D轮","shukuai.jpg"),
(NULL,"南瑞信通","高级java工程师","吉林","在校生","大专",17,19,40,"已上市","nanrui.jpg"),
(NULL,"图匠数据","web前端","辽宁","在校生","硕士",15,20,150,"不需要融资","tujiang.jpg"),
(NULL,"健客网","web前端","内蒙古","应届生","本科",10,50,50,"A轮","jianke.jpg"),
(NULL,"漫道科技","PHP工程师","河北","在校生","博士",14,20,100,"B轮","mandao.jpg"),
(NULL,"优点网络科技","高级java工程师","北京","一年以内","大专",5,7,90,"C轮","youdian.jpg"),
(NULL,"锦江酒店","web前端","上海","应届生","本科",15,30,40,"未融资","jinjiang.jpg"),
(NULL,"广州视睿","PHP工程师","广州","应届生","博士",13,30,80,"天使轮","shirui.jpg"),
(NULL,"数块科技","web前端","深圳","一年以内","本科",15,20,20,"D轮","shukuai.jpg"),
(NULL,"南瑞信通","高级java工程师","杭州","3-5年","高中",17,20,40,"已上市","nanrui.jpg"),
(NULL,"图匠数据","web前端","天津","应届生","初中",15,30,150,"不需要融资","tujiang.jpg"),
(NULL,"健客网","web前端","西安","3-5年","本科",10,13,50,"A轮","jianke.jpg"),
(NULL,"漫道科技","PHP工程师","苏州","3-5年","本科",14,30,100,"B轮","mandao.jpg"),
(NULL,"优点网络科技","高级java工程师","武汉","一年以内","硕士",5,7,90,"C轮","youdian.jpg"),
(NULL,"漫道科技","PHP工程师","苏州","应届生","本科",14,30,1000,"B轮","mandao.jpg"),
(NULL,"优点网络科技","高级java工程师","武汉","5-10年","硕士",5,7,1000,"C轮","youdian.jpg"),
(NULL,"数块科技","高级java工程师","武汉","一年以内","硕士",5,7,10000,"C轮","youdian.jpg"),
(NULL,"锦江酒店","高级java工程师","武汉","10年以上","硕士",5,7,100000,"C轮","youdian.jpg"),
(NULL,"锦江酒店","web前端","内蒙古","10年以上","博士",5,7,40,"未融资","jinjiang.jpg"),
(NULL,"广州视睿","PHP工程师","苏州","5-10年","本科",3,5,80,"天使轮","shirui.jpg"),
(NULL,"数块科技","web前端","西安","一年以内","中专",3,5,20,"D轮","shukuai.jpg"),
(NULL,"数块科技","web前端","西安","3-5年","中专",2,3,20,"D轮","shukuai.jpg"),
(NULL,"南瑞信通","高级java工程师","苏州","3-5年","大专",5,7,40,"已上市","nanrui.jpg"),
(NULL,"图匠数据","web前端","黑龙江","1-3年","本科",5,7,150,"不需要融资","tujiang.jpg"),
(NULL,"健客网","web前端","深圳","3-5年","本科",10,13,50,"A轮","jianke.jpg"),
(NULL,"漫道科技","PHP工程师","杭州","1-3年","中专",7,10,100,"B轮","mandao.jpg"),
(NULL,"优点网络科技","高级java工程师","天津","3-5年","大专",5,7,90,"C轮","youdian.jpg"),
(NULL,"锦江酒店","web前端","重庆","3-5年","本科",7,10,40,"未融资","jinjiang.jpg"),
(NULL,"广州视睿","PHP工程师","北京","1-3年","中专",3,5,80,"天使轮","shirui.jpg"),
(NULL,"数块科技","web前端","广州","3-5年","本科",7,16,20,"D轮","shukuai.jpg"),
(NULL,"广州视睿","PHP工程师","北京","1-3年","中专",3,5,500,"天使轮","shirui.jpg"),
(NULL,"数块科技","web前端","广州","3-5年","本科",7,16,500,"D轮","shukuai.jpg"),
(NULL,"南瑞信通","高级java工程师","广州","1-3年","大专",7,10,40,"已上市","nanrui.jpg"),
(NULL,"图匠数据","web前端","河北","5-10年","本科",7,10,150,"不需要融资","tujiang.jpg");

INSERT INTO company VALUES(NULL,"腾讯","txlogo.jpg","广州","不需要融资","10000人以上",'互联网','<p>深圳市腾讯计算机系统有限公司成立于1998年11月，由马化腾、张志东、许晨晔、陈一丹、曾李青五位创始人共同创立。是中国最大的互联网综合服务提供商之一，也是中国服务用户最多的互联网企业之一。</p><p>腾讯多元化的服务包括：社交和通信服务QQ及微信/WeChat、社交网络平台QQ空间、腾讯游戏旗下QQ游戏平台、门户网站腾讯网、腾讯新闻客户端和网络视频服务腾讯视频等。</p><p>2004年腾讯公司在香港联交所主板公开上市（股票代号00700），董事会主席兼首席执行官是马化腾。</p>','tx_company.jpg',"http://www.tencent.com","腾讯科技(深圳)有限公司",'马化腾','2000-02-24','200万美元');
INSERT INTO company VALUES(NULL,"凡岛网络","fdlogo.jpg","广州","不需要融资","1000-9999人",'电子商务','<p>广州凡岛网络科技有限公司是一家年轻活力的互联网运营团队，现已发展壮大为拥有六家子公司的多元化的综合性企业，目前已经逐渐形成一支具备独立研发、维护、网站推广、电子商务等多功能于一体的快速成长型的互联网公司，是华南地区最具发展潜力、 最有影响力的化妆品电子商务公司之一。</p><p>WIS是与瑞士合作开发的药妆品牌，引进瑞士RAHN集团的先进技术与原料，以药品的标准来做化妆品，追求极致的科学性与安全性，来满足对生活品质有高要求的消费人群。 </p><p>品牌名WIS源自于欧洲一个古老的单词Wissenschaft，意指“科学”，作为药妆品牌，WIS致力于让护肤更科学且有效，给肌肤带来更好的护理体验。</p>','fd_company.jpg',"http://www.fandow.com/","广州凡岛网络科技有限公司",'黎文祥','2012-02-01','500万人民币元');
INSERT INTO company VALUES(NULL,"网易游戏","wylogo.jpg","广州","已上市","10000人以上",'游戏','<p>网易公司由丁磊先生于 1997 年6月创立,凭借敏锐的市场洞察力，网易公司从10多人的初创团队发展至今，在全世界已拥有13000多名员工，并于2000年6月成功在美国纳斯达克股票市场公开上市（NASDAQ：NTES）。随着公司规模的不断扩大，网易已经成为中国最领先的互联网技术公司。</p><p>丁磊先生一向信仰并注重互联网技术创新带给人类的福音，将之确立为公司的核心生产力，并亲力主持多项技术创新，例如网易电子邮箱系统、中文搜索引擎、大型网络角色扮演游戏。这些技术创新，不但实现了中国互联网行业多项“零的突破”，而且使得网易公司凝聚的技术实力足以傲视整个互联网行业。 </p><p>经过21年的发展，网易成就中国领先互联网技术公司的地位，其成功不是偶然。如同世界上任何优秀的组织一样，网易的成功离不开优秀人才的不断加盟，离不开大批员工长期默默无闻的奉献、智慧和辛劳，更离不开团队持续的创新耕耘。</p><p>网易拥有一批活跃的年轻团队，每位成员都能在充满活力的氛围中孜孜不倦地为理想共同奋斗。我们的团队不仅年轻，而且优秀。网易不断领跑中国互联网发展离不开优秀的团队。无论是领先的技术团队、敏锐的新闻团队、专业的销售团队还是高效的管理团队，都为网易的辉煌，中国互联网事业的发展倾注自己最大的力量。</p>','wy_company.jpg',"https://hr.163.com/","网易(杭州)网络有限公司",'丁磊','2006-06-02','13760万美元');
INSERT INTO company VALUES(NULL,"多益网络","dylogo.jpg","广州","不需要融资","1000-9999人",'互联网','<p>多益网络成立于2006年，是中国优秀互联网企业，连续六年上榜由国家工信部发布的中国互联网企业百强榜，2017年位列该榜第25位。先后被国家科技部、国家发改委和工信部认定为高新技术企业和重点软件企业，为广州市认定的总部企业。2015年，公司净利润已突破10亿元，旗下业务涵盖网络游戏、电子邮箱、即时通讯等互联网产品。</p><p>多益网络致力于做真正好玩的游戏，向海内外传递美好游戏的价值。2007年9月，多益网络正式推出首款产品《梦想世界》，被誉为“最具想象力的网游”。而快乐免费回合神武系列端手游的推出，引领了中国网游社交化新趋势。神武系列手游多次获得App Store畅销总榜冠军，创造了App Store收入排行榜单中国第1，全球第9的人气记录。 </p><p>多益网络积极创新，继梦想世界、神武系列IP连续大成，《传送门骑士》《永恒魔法》等多款不同类型游戏拓宽产品矩阵，坚持铸造品质游戏。</p><p>公司设立多益大学、多益技术研究院，并拥有自主研发的2D、3D游戏引擎，在人工智能、自然语言识别等领域也已经取得了不俗的成果，引领了行业的创新发展。</p><p>作为游戏奋斗者，多益网络将继续秉持优秀厂商对于社会的承担和使命，坚持从中国文化这座富矿中汲取精华铸造精品，为中国文化产业奉献力量。</p>','dy_company.jpg',"https://www.douyi.com/","广州多益网络股份有限公司",'徐波','2006-07-14','36000万美元');
INSERT INTO company VALUES(NULL,"亿动网络公司","ydlogo.jpg","广州市海珠区赤岗","未融资","100-499人",'互联网','<p>一、公司简介<br>总部：佛山市亿动网络有限公司，云指，成立于2005年，具有13年的互联网服务经验。成功研发了H5响应式建站、小程序、移动电商等系统，先后获得了国家高新技术企业认定、百度最佳企业开发者、IDC评述优秀云计算服务商，并在2016年成功挂牌新四板。<br>截止目前为止，云指累计为50万用户提供了服务，业务遍布全国34个省市区，拥有上万家核心代理商，帮助了上千家企业突破了网络营销的瓶颈，成功地转型电商，实现了全网营销。<br>产品简介：<br>1、云指建站<br>基于国内最先进的H5响应式技术，不用懂编程和设计，会上网会打字就能搭建出一个同时适配于PC、手机、平板等终端访问设备的高端网站。<br>2、云指移动电商<br>为企业提供一个直接售卖产品的线上平台，无缝对接微信，实现同一平台、多个商户售卖产品，并具备完善的订单处理体系、分销体系和丰富的互动营销活动。<br>3、云指小程序<br>云指小程序是国内领先的微信小程序开发工具，制作过程无需代码，直接安装模板，上传图片,即能一键生成微信小程序，目前的版本有企业展示版、服务版、商城版。<br><br><br>二、各个公司分点：<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;总部地址：佛山市禅城区福宁路213号君宁大厦A座写字楼1801  （佛山普君北路地铁） &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;广州技术研发中心地址：广州市海珠区赤岗西路288号杨协成电子商务创意园A座317 （广州客村地铁）<br><br>三、运营状况<br>1、超过700,000个用户通过云指注册；<br>2、管理超过300000个域名，保有量全国第七；<br>3、超过200,000个企业网站与应用采用云指的主机服务；<br>4、超过10,000个企业通过联动开启400电话； &nbsp;<br>5、超过150000用户使用联动邮箱<br>6、公司自成立以来每年以50%的速度增长，2014年营业额超过2000万。<br><br>四、公司的产品<br>云指建站系统 &nbsp;域名、虚拟主机、云主机、电商平台、微信小程序（互联网时代最热销产品）<br><br><br>五、公司荣誉<br>2009年获得HK注册局认证，成为HK域名顶级注册商<br>2010年获得广东网商协会佛山分会副会长单位认证<br>2011年成为佛山电子商务协会理事单位<br>2011年获得CNNIC和ICANN顶级域名注册商认证<br>2013年成为中国网站安全防黑联盟成员<br>2013年成为百年网商会会员<br>2014年中网授权可信网站验证服务中心','yd_company.jpg',"http://www.72e.net","佛山市亿动网络有限公司",'黎小芬','2005-11-28','1000万元人民币');


INSERT INTO company VALUES(NULL,"韶关市立诚咨询服...","lclogo.jpg","广州市天河区小新塘","未融资","100-499人",'互联网','<p>立诚咨询服务有限公司是行业领先的企业人才管理咨询综合服务运营商，公司业务以企业战略咨询为主，涵盖企业内训、主题公开课、移动学习、高端研修、专业会议策划、职业资格认证辅导等现代企业所需的知识管理服务。公司具备完善的培训体系，贴合行业热点打造专题公开课，为企业量身定制直击痛点的内训课程，并可视化呈现培训效果，同时提供高端研修课程全面提升企业竞争力，致力为客户提供一体化、系统集成式解决方案</p>','lc_company.jpg',"https://hr.163.com/","佛山市亿动网络有限公司",'袁家润','2018-08-28','100万元人民币');
