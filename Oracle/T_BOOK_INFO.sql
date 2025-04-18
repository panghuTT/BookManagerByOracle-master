/*
 Navicat Oracle Dump SQL

 Source Server         : wangrui
 Source Server Type    : Oracle
 Source Server Version : 120200 (Oracle Database 12c Enterprise Edition Release 12.2.0.1.0 - 64bit Production)
 Source Host           : 39.106.9.202:1521
 Source Schema         : ADMIN1

 Target Server Type    : Oracle
 Target Server Version : 120200 (Oracle Database 12c Enterprise Edition Release 12.2.0.1.0 - 64bit Production)
 File Encoding         : 65001

 Date: 18/04/2025 17:47:04
*/


-- ----------------------------
-- Table structure for T_BOOK_INFO
-- ----------------------------
DROP TABLE "ADMIN1"."T_BOOK_INFO";
CREATE TABLE "ADMIN1"."T_BOOK_INFO" (
  "BOOKID" NUMBER VISIBLE NOT NULL,
  "BOOKNAME" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "BOOKAUTHOR" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "BOOKPRICE" NUMBER VISIBLE NOT NULL,
  "BOOKTYPEID" NUMBER VISIBLE NOT NULL,
  "BOOKDESC" VARCHAR2(1000 BYTE) VISIBLE NOT NULL,
  "ISBORROWED" NUMBER VISIBLE NOT NULL,
  "BOOKIMG" VARCHAR2(255 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of T_BOOK_INFO
-- ----------------------------
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('5', '深度学习入门', '斋藤康毅', '59', '1', '本书是深度学习真正意义上的入门书，深入浅出地剖析了深度学习的原理和相关技术。书中使用Python3，尽量不依赖外部库或工具，从基本的数学知识出发，带领读者从零创建一个经典的深度学习网络，使读者在此过程中逐步理解深度学习。书中不仅介绍了深度学习和神经网络的概念、特征等基础知识，对误差反向传播法、卷积神经网络等也有深入讲解，此外还介绍了深度学习相关的实用技巧，自动驾驶、图像生成、强化学习等方面的应用，以及为什么加深层可以提高识别精度等“为什么”的问题。', '0', 'http://localhost:8092/BookManager/pictures/1744817873051图片5.png');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('3', 'C++ Primer 中文版', 'Stanley B. Lippman', '128', '1', '这本久负盛名的 C++ 经典教程，时隔八年之久，终迎来史无前例的重大升级。除令全球无数程序员从中受益，甚至为之迷醉的——C++ 大师 Stanley B. Lippman 的丰富实践经验，C++标准委员会原负责人 Josée Lajoie 对C++标准的深入理解，以及C+ + 先驱 Barbara E. Moo 在 C++教学方面的真知灼见外，更是基于全新的 C++11标准进行了全面而彻底的内容更新。非常难能可贵的是，本书所有示例均全部采用 C++11 标准改写，这在经典升级版中极其罕见——充分体现了 C++ 语言的重大进展及其全面实践。书中丰富的教学辅助内容、醒目的知识点提示，以及精心组织的编程示范，让这本书在 C++ 领域的权威地位更加不可动摇。无论是初学者入门，或是中、高级程序员提升，本书均为不容置疑的首选。', '0', 'http://localhost:8092/BookManager/pictures/1744817667230图片3.png');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('4', '深入理解计算机系统', 'Randal E. Bryant', '139', '1', '和第2版相比，本版内容上最大的变化是，从以IA32和x86-64为基础转变为完全以x86-64为基础。主要更新如下：
基于x86-64，大量地重写代码，首次介绍对处理浮点数据的程序的机器级支持。', '0', 'http://localhost:8092/BookManager/pictures/1744817731821图片4.png');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('17', '悉达多', '赫尔曼·黑塞', '32', '3', '《悉达多》并非是佛陀的故事，它讲述了一个人的一生，千万寻常人亦会经历的一生。', '0', 'http://localhost:8092/BookManager/pictures/1744964133682文2.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('18', '不被大风吹倒', '莫言', '50', '3', '本书为莫言散文精选集，除了从莫言以往的作品中选取了莫言的人生经历、写作经验和人生感悟相关的篇目，还加入了莫言全新创作的写给年轻人的内容。通过莫对自己人生经历的讲述，给现在的年轻人一些启发和鼓舞。', '0', 'http://localhost:8092/BookManager/pictures/1744964164718文3.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('19', '卡拉马佐夫兄弟', '陀思妥耶夫斯基', '78', '3', '本书系俄国大作家陀思妥耶夫斯基代表作之一。小说通过一桩真实的弑父案，描写老卡拉马佐夫同三个儿子即两代人之间的尖锐冲突。', '0', 'http://localhost:8092/BookManager/pictures/1744964197294文4.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('20', '太白金星有点烦', '马伯庸', '45', '3', '天庭和西天联合推出了“西天取经”的重大项目，他受命策划九九八十一难，确保唐僧能安全走完流程，平稳取经成佛。老神仙本以为一切尽在掌控中，谁知天大的麻烦才刚刚开始：费用报销、工作汇报、人事安排、各路大仙塞来的条子、各地妖怪暗藏的心思，捋不出的千头万缕，做不完的琐碎繁杂……当大闹天宫的真相重新浮出水面，牵扯出无数因果，李长庚发觉自己成就金仙的道路越加渺茫。', '0', 'http://localhost:8092/BookManager/pictures/1744964242787文5.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('21', '活着', '余华', '28', '3', '《活着(新版)》讲述了农村人福贵悲惨的人生遭遇。福贵本是个阔少爷，可他嗜赌如命，终于赌光了家业，一贫如洗。他的父亲被他活活气死，母亲则在穷困中患了重病，福贵前去求药，却在途中被国民党抓去当壮丁。经过几番波折回到家里，才知道母亲早已去世，妻子家珍含辛茹苦地养大两个儿女。此后更加悲惨的命运一次又一次降临到福贵身上，他的妻子、儿女和孙子相继死去，最后只剩福贵和一头老牛相依为命，但老人依旧活着，仿佛比往日更加洒脱与坚强。', '0', 'http://localhost:8092/BookManager/pictures/1744964290028文6.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('22', '百年孤独', ' 加西亚·马尔克斯', '39.5', '3', '《百年孤独》是魔幻现实主义文学的代表作，描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。作品融入神话传说、民间故事、宗教典故等神秘因素，巧妙地糅合了现实与虚幻，展现出一个瑰丽的想象世界，成为20世纪最重要的经典文学巨著之一。1982年加西亚？马尔克斯获得诺贝尔文学奖，奠定世界级文学大师的地位，很大程度上乃是凭借《百年孤独》的巨大影响。', '0', 'http://localhost:8092/BookManager/pictures/1744964322117文7.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('23', '血与蜜之地', '刘子超', '79', '3', '“刘子超的新作《血与蜜之地》以独特的角度进一步拓展人类生存的视野。他越写越好，作为中文读者之一，我为他骄傲，并期待那寻找异乡的路上。” ——北岛', '0', 'http://localhost:8092/BookManager/pictures/1744964497402文8.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('24', '团圆记', '杨云苏', '58', '3', '这是杨云苏（故园风雨前）的第一部长篇回忆体小说。这也是一本中国式家庭关系的特写，让我们感受到真正维系家庭纽带的并非血缘关系，而是生活中彼此之间的尊重和理解。', '0', 'http://localhost:8092/BookManager/pictures/1744964576484文9.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('25', '写作的细节', '张佳玮', '42', '3', '这是一本文学经典的研习笔记，更是一部窥探大师脉络的创作自由谈，既有文学大家的创作之道，也有作者二十余年来的创作心得。从名词、动词、形容词和成语的用法，到风格、主题、韵律和腔调的形成，听张佳玮将写作的“干货”一一道来，趣谈大师的技艺，经典的高明，创作的妙趣，翻译的苦衷……', '0', 'http://localhost:8092/BookManager/pictures/1744964617737文10.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('26', '三体第一部', '刘慈欣', '23', '4', '四光年外，“三体文明”正苦苦挣扎——三颗无规则运行的太阳主导下的百余次毁灭与重生逼迫他们逃离母星。而恰在此时。他们接收到了地球发来的信息。在运用超技术锁死地球人的基础科学之后。三体人庞大的宇宙舰队开始向地球进发……

人类的末日悄然来临。
', '0', 'http://localhost:8092/BookManager/pictures/1744964879460sf1.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('27', '平面国', '埃德温·A.艾勃特', '39.8', '4', '这本一百年前横空出世的小书，通篇在一本正经地胡说八道，散发着浓浓英式幽默，有趣、迷人，令人捧腹 。
它启发过无数大师，深刻影响了现当代科学。“平面国”已然成为全球范围内的超级文化符号。', '0', 'http://localhost:8092/BookManager/pictures/1744964912143sf2.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('28', '挽救计划', '安迪·威尔', '68', '4', '浩瀚宇宙中，瑞恩？格雷斯是整个人类文明仅存的希望。但在醒来的那一刻，他连自己的名字都不记得。他在未知的恐惧中寻找身份，从记忆的碎片中获取线索。这个肩负拯救地球重任的关键人物，现已命悬一线！人类文明究竟能否存续？在这场“挽救计划”里，一切都充满了挑战……', '0', 'http://localhost:8092/BookManager/pictures/1744964936745sf3.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('29', '金桃', '杨晚晴', '75', '4', '公元八世纪，欧亚大陆各国之间的交流因丝绸之路而变得更密切，催生出了比肩工业革命的技术文明。在这里，有热力驱动的城镇，有机械傀儡士兵，有经纬线编制的算机语言……这个世界自由、丰富，孕育出灵性和生机；同时，暴力和阴谋也在酝酿成形。', '0', 'http://localhost:8092/BookManager/pictures/1744964967918sf4.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('30', '血孩子', '奥克塔维娅·E.巴特勒', '55', '4', '这里有操控一切、受欲望支配的女性，还有为爱付出身体、甘愿沦为他者的男性。

性别颠倒、末日瘟疫、异族入侵、信息素控制……诸多思想实验般的科幻设定，借由翻转变形，倒映出被边缘化人群的真实处境。

当人类失去对身体的掌控，当被视作文明象征的语言系统彻底崩塌，是重拾掌控，还是摒弃自我中心，接纳更高级的智慧生命。通过目睹灾难、恐惧、压迫、不公，不被看到的角落得以被照见，不同的生存道路得以被探寻。
', '0', 'http://localhost:8092/BookManager/pictures/1744964993076sf5.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('32', '三体第二部', '刘慈欣', '32', '4', '三体人在利用魔法般的科技锁死了地球人的科学之后，庞大的宇宙舰队杀气腾腾地直扑太阳系，意欲清除地球文明。

面对前所未有的危局，经历过无数磨难的地球人组建起同样庞大的太空舰队，同时，利用三体人思维透明的致命缺陷，制订了神秘莫测的“面壁计划”，精选出四位“面壁者”。秘密展开对三体人的反击。', '0', 'http://localhost:8092/BookManager/pictures/1744965223507sf7.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('33', '献给阿尔吉侬的花束', '丹尼尔·凯斯', '36', '4', '声称能改造智能的科学实验在白老鼠阿尔吉侬身上获得了突破性的进展，下一步急需进行人体实验。个性和善、学习态度积极的心智障碍者查理·高登成为最佳人选。手术成功后，查理的智商从68跃升为185，然而那些从未有过的情绪和记忆也逐渐浮现。', '0', 'http://localhost:8092/BookManager/pictures/1744965251486sf8.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('31', '仿生人会梦见电子羊吗', '菲利普·迪克', '59.9', '4', '做错误的事、不该做的事、背弃自己身份的事——这是生命的诅咒，是造物的缺憾，是宇宙躲避不开的规律。好在你还能选择怎么做，选择成为一个怎样的人。', '0', 'http://localhost:8092/BookManager/pictures/1744965192505sf6.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('34', '三体第三部', '刘慈欣', '38', '4', '与三体文明的战争使人类第一次看到了宇宙黑暗的真相，地球文明像一个恐惧的孩子，熄灭了寻友的篝火，在暗夜中发抖。自以为历经沧桑，其实刚刚蹒跚学步；自以为悟出了生存竞争的秘密，其实还远没有竞争的资格。

', '0', 'http://localhost:8092/BookManager/pictures/1744965275593sf9.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('1', '软件设计的哲学', 'John Ousterhout', '69.8', '1', '本书深入探讨了软件设计中的核心问题：如何将复杂的软件系统分解为可以相对独立实现的模块（例如类和方法），从而降低其复杂性并提高开发效率。本书首先介绍了软件设计中的基本问题，即复杂性的本质。其次，讨论了有关如何处理软件设计过程的“哲学”问题，如通用设计的重要性、与《代码整洁之道》中设计哲学的对比，以及如何将重要的东西和不重要的东西区分开等内容。最后，总结了在软件设计过程中应遵循的一系列设计原则，以及一系列识别设计问题的警示信号。', '0', 'http://localhost:8092/BookManager/pictures/1744816789981图片1.png');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('2', 'Python编程：从入门到实践', 'Eric Matthes', '109.8', '1', '本书是针对所有层次的 Python 读者而作的 Python 入门书。全书分为两部分：第一部分介绍使用Python 编程所必须了解的基本概念，包括强大的 Python 库和工具，以及列表、字典、if 语句、类、文件和异常、测试代码等内容；第二部分将理论付诸实践，讲解如何开发三个项目，包括简单的 2D 游 戏、利用数据生成交互式的信息图以及创建和定制简单的 Web 应用程序，并帮助读者解决常见编程问题和困惑。第 3 版进行了全面修订：使用了文本编辑器 VS Code，新增了介绍 removeprefix() 方法和removesuffix() 方法的内容，并且在项目中利用了Matplotlib 和 Plotly 的最新特性，等等。
本书适合对 Python 感兴趣的所有读者阅读。', '0', 'http://localhost:8092/BookManager/pictures/1744816834430图片2.png');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('7', '你杀了谁', '东野圭吾', '59', '6', '再次回想那个夜晚，我还是会不寒而栗。派对结束后，5个家庭，5人被杀。其中就有我深爱的丈夫。凶手很快自首，他说他只想要死刑，杀谁、杀多少都无所谓，对案件细节却什么都不肯说。作为遗属，我们对这样的供述当然不满意，于是组织了一场查证会。一张桌子，13个人，我盯着主持人加贺恭一郎的眼睛，他说：希望大家不要说谎。”那就撕破脸，开诚布公地聊一聊吧！第一个问题——你杀了谁？', '0', 'http://localhost:8092/BookManager/pictures/1744962758554图片2.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('9', '世界末日前的谋杀', '荒木茜', '49.9', '6', '“对杀人犯来说，这儿可真是天堂啊。”
67天后，小行星“忒洛斯”即将撞击地球，人类面临世界末日。
23岁的小春和她的驾校教练，意外发现了一具被藏匿在车子后备箱中的尸体。在世界陷入混乱的当下，她们决定揭开这桩凶杀案的真相。

随着调查的深入，一连串案件相继浮出水面：独居男子被害案、停车场抛尸案、教室藏尸案……三桩看似无关的案件，竟似乎是同一人所为！
真凶的身份，更是出乎所有人的意料——', '0', 'http://localhost:8092/BookManager/pictures/1744963196958图片4.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('12', '乔瓦尼的房间', '詹姆斯·鲍德温', '58', '6', '年轻的美国人大卫在巴黎寻找自我，他的未婚妻赫拉独自在西班牙漫游。大卫在纪尧姆开的酒吧里遇到一个名叫乔瓦尼的意大利酒保。乔瓦尼唤醒了大卫心底的欲望，大卫进入乔瓦尼的房间，房间狭窄、失序，远离市区。

从小说的开头我们就知道大卫抛弃了乔瓦尼，知道赫拉回到了美国，还知道乔瓦尼因 杀害酒吧老板被判了死刑。鲍德温在时间轴上自由移动，大卫在男人和女人中间来回摇摆。

詹姆斯·鲍德温以敏锐而深刻的想象力，探索了爱的深渊，创造了一个关于死亡和激情的动人故事，揭示了人类内心无从言说的复杂性。', '0', 'http://localhost:8092/BookManager/pictures/1744963307841图片8.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('13', '明亮的夜晚', '崔恩荣', '52', '6', '和丈夫离婚后，三十一岁的我独自来到海边小城熙岭，却在那里邂逅多年未见的祖母。尴尬和沉默之后，孤独的心一点点靠近，我和祖母成为相互倾吐心声的朋友。在祖母家老屋的旧相册里，我发现一位和我长相非常相似的女子，依偎在少女时代的祖母身旁。一个个鲜活的面孔逐渐从一张张黑白相片中，从一封封感人至深的书信中，从久远的回忆里，穿过女人生如飘萍、命如草芥的时代，走到我面前。

经过曾祖母、祖母和母亲，来到我身边的故事，她们的人生在我的眼前重现。现在的我能够触及她们吗?正如过去无数的我组成了现在的我，现在的我也能见到过去的无数个我吗？', '0', 'http://localhost:8092/BookManager/pictures/1744963430652图片9.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('14', '献灯使', '多和田叶子', '65', '6', '核灾难降临之后，日本处于外来语、网络都消失的锁国状态，被剥夺死亡权利的老人，依然健康，还要工作，而原本代表希望的年轻人却不断患病，命悬一线。拥有不死之身的老人，注定要目送一代代子孙走向死亡……

面对停滞的世界，老人们决心冲破锁国残局，拯救孩子们，他们成立了神秘组织，挑选现代日本的遣唐使——“献灯使”，重新建立和世界的联系。

主人公义郎的后代无名，一名柔软如章鱼，声音如白鹤的聪明少年，正是zui佳人选。而无名能否完成任务，在末日死里逃生，等待新世界到来……', '0', 'http://localhost:8092/BookManager/pictures/1744963470794图片10.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('16', '素食者', '韩江', '48', '3', '亚洲首位国际布克文学奖得主获奖作品
我在写作时，经常会思考这些问题：人类的暴力能达到什么程度；如何界定理智和疯狂；我们能在多大程度上理解别人。我希望《素食者》可以回答我的这些问题。我想通过《素食者》刻画一个誓死不愿加入人类群体的女性。——韩江在国家布克文学奖颁奖礼上的 致辞', '0', 'http://localhost:8092/BookManager/pictures/1744963912022文1.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('6', '恶女的告白', '叶真中显', '55', '6', '七年前文学编辑梨帆收到了一篇叫做《养狗》的投稿，小说充斥着残暴的施虐倾向和对男性的嫌恶。随着剧情的推移梨帆惊奇地在小说主人公身上看到了自己的影子，更可怕的是，这部小说好像还和七年前那篇暴戾的《养狗》有着千丝万缕的联系…
', '0', 'http://localhost:8092/BookManager/pictures/1744962365357图片1.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('8', '暗处的女儿', '埃莱娜·费兰特', '45', '6', '在两个女儿跟随父亲去了多伦多后，中年离异的勒达一个人去海边度假，在沙滩上，她遇到年轻的母亲尼娜和女儿埃莱娜，勒达和这对幸福的母女产生了一种复杂的依恋。勒达故意拿走了埃莱娜遗忘在沙滩上的布娃娃，让尼娜的生活陷入彻底的混乱。

十五年前，一个叫比兰达的英国女人在勒达无望的生活中出现过几个小时，彻底改变了勒达的命运。十五年后，二十二岁的尼娜似乎也选择勒达来帮助自己出走，但勒达最终的坦白令她陷入恐惧。在这片海滩，勒达真正要面对的，是自己和女儿破碎的过往。', '0', 'http://localhost:8092/BookManager/pictures/1744963115752图片3.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('11', '绝叫', '叶真中显', '58', '6', '铃木阳子死了，死在独居的公寓里。正确说来，是铃木阳 子几个月前死了。因为发现她时，不但遗体遭到屋内的十一只猫啃食，连猫也全数饿死了。铃木阳子显然是「孤独死」的最佳范例，但这名女子为何落到这步田地？她的亲人、朋友、同事在哪里？她的人生轨迹又是如何？', '0', 'http://localhost:8092/BookManager/pictures/1744963277240图片6.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('15', '一句顶一万句', '刘震云', '68', '6', '小说分上下两个部分，前半部“出延津记”写的是过去：卖豆腐老杨的二儿子杨百顺百事不顺，他一生改了三次名：为了寻个营生，被天主教神父老詹纳为教徒，改名杨摩西；给县长种地时因为一个尿壶得罪了县长，提心吊胆中有人说媒，便倒插门嫁给馒头铺的吴香香，改名吴摩西；吴香香给吴摩西扣了顶绿帽子，吴摩西带着吴香香和前夫的女儿巧玲假意去寻与人私奔的妻子，路上又把巧玲丢了，失望之中，要离开故乡，从此用喊丧的罗长礼的名字度过余生；后半部“回延津记”写的是现在：巧玲被卖到陕西，成了曹青娥，嫁给牛家，儿子牛爱国也是假意寻找与人私奔的妻子，又想到自己从前的相好，想起母亲的老家，于是走回延津……一出一走，延宕百年。', '0', 'http://localhost:8092/BookManager/pictures/1744963537588图片11.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('35', '克莱因壶', '冈岛二人', '48', '4', '上杉彰彦从未如此兴奋——他写的故事被伊普西隆研发公司买下，即将制作成颠覆时代的全新游戏《克莱因2》（Klein 2），并受邀与少女梨纱一同担任游戏测试员。

上杉彻底陷入了由K2造就的完美虚拟世界，为它的逼真、超前赞叹不已。然而随着测试过程的深入，伊普西隆公司行事神秘得令他生疑，游戏中更不断听到有人警告他：“快逃！”

与此同时，一个自称是梨纱好友的女孩找到上杉，她说梨纱已失踪多日，音信全无。然而在寻人的过程中，两人都开始怀疑对方在撒谎，因为他们的记忆完全对不上……
', '0', 'http://localhost:8092/BookManager/pictures/1744965306107sf10.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('36', '康熙的红票', '孙立天', '78', '2', '这本书以视野开阔、叙事生动、主题新颖和思考深刻而格外引人注目。作者从康熙皇帝发往西方世界的一纸红票为切入点，勾连多语文史料和多领域研究，描绘了一幅高清晰度的历史图景，向读者展示清前期传教士与清 朝统治者之间如何互动，以及清代中国与近代西方的文化科技发展深刻汇流的机会是如何获得并最终如何失去，从一个前人忽略的角度观察清朝乃至古代其他王朝的政治与文化结构。崭新的视角，鲜活的细节，独特的反思，成就了一部高质量的历史读本。

', '0', 'http://localhost:8092/BookManager/pictures/1744965468954history1.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('37', '长安的荔枝', '马伯庸', '45', '2', '大唐天宝十四年，长安城的小吏李善德突然接到一个任务：要在贵妃诞日之前，从岭南运来新鲜荔枝。荔枝“一日色变，两日香变，三日味变”，而岭南距长安五千余里，山水迢迢，这是个不可能完成的任务，可为了家人，李善德决心放手一搏：“就算失败，我也想知道，自己倒在距离终点多远的地方。', '0', 'http://localhost:8092/BookManager/pictures/1744965498570history2.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('40', '东晋门阀政治', '田余庆', '49', '2', '本书以丰富的史料和周密的考证分析，对中国中古历史中的门阀政治问题作了再探索，认为中外学者习称的魏晋南北朝门阀政治，实际上只存在于东晋一朝.', '0', 'http://localhost:8092/BookManager/pictures/1744965580493history5.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('41', '食南之徒', '马伯庸', '56', '2', '最贪吃的大汉使者唐蒙，来到了最会吃的南越之国。这里食材丰富，简直就是饕餮之徒的梦想之地。然而，在美食背后，却涌动着南北对峙、族群隔阂、权位争斗、国策兴废……种种波谲云诡，竟比岭南食材的风味更加复杂。

这个懒散的大汉使者，身陷岭南的政争漩涡。他唯 一能信赖的伙伴，只有食物；唯一的破局之法，只有追求极致美食的心。
谁都没想到，那一缕微妙滋味，竟关乎大汉与南越国运，乃至于整个中华版图……', '0', 'http://localhost:8092/BookManager/pictures/1744965610623history6.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('42', '万历十五年', '黄仁宇', '18', '2', '万历十五年，亦即公元1587年，在西欧历史上为西班牙舰队全部出动征英的前一年；而在中国，这平平淡淡的一年中，发生了若干为历史学家所易于忽视的事件。这些事件，表面看来虽似末端小节，但实质上却是以前发生大事的症结，也是将在以后掀起波澜的机缘。在历史学家黄仁宇的眼中，其间的关系因果，恰为历史的重点，而我们的大历史之旅，也自此开始……', '0', 'http://localhost:8092/BookManager/pictures/1744965631349history7.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('45', '叫魂', '孔飞力', '38', '2', '《叫魂:1768年中国妖术大恐慌》讲述的是一个关于“盛世妖术”的故事。在中国的千年帝制时代，乾隆皇帝可谓是空前绝后的一人。', '0', 'http://localhost:8092/BookManager/pictures/1744965700875history10.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('46', 'Rust程序设计', '吉姆·布兰迪', '179.8', '1', '书中全面介绍了Rust这种新型系统编程语言——具有无与伦比的安全性，兼具C和C++的高性能，并大大简化了并发程序的编写。', '0', 'http://localhost:8092/BookManager/pictures/1744965762471cs1.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('49', '高级算法和数据结构', '马塞洛·拉·罗卡', '149.8', '1', '这是一本关于“高级/进阶”算法和数据结构的图书，主要介绍了用于Web应用程序、系统编程和数据处理领域的各种算法，旨在让读者了解如何用这些算法应对各种棘手的编码挑战，以及如何将其应用于具体问题，以应对新技术浪潮下的“棘手”问题。', '0', 'http://localhost:8092/BookManager/pictures/1744965891459cs4.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('10', '方舟', '夕木春央', '59', '6', '“方舟”是建造在地底深处的古怪建筑，共有三层。七名大学生和带着孩子的夫妻前来探索。不料隔日清晨竟发生地震，出口被巨石堵住，积水从地下漫上来，7日后整座方舟将会被水淹没。逃出方舟的唯一办法，就是留下一人操作机关，让堵住入口的巨石落下，可留下的人将会永远受困地底，溺毙而亡。正在这时，一起杀人事件毫无征兆地发生了。杀人者自然是在这九人之中，至于究竟是谁，除了凶手，无人知晓。

牺牲一人，就能让其他人得救。
谁去死？你去死？我去死？
还是——让凶手去死？
当死亡渐渐逼近，方舟里的人一个接一个减少，地上的道德终于失去约束……', '0', 'http://localhost:8092/BookManager/pictures/1744963247052图片5.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('38', '秦汉史讲义', '秦晖', '138', '2', '本书以秦晖在清华大学讲授“秦汉史”课程为蓝本，增加了近年来不断发现的考古资料，几经整理修改而成。', '0', 'http://localhost:8092/BookManager/pictures/1744965525344history3.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('39', '翦商', '李硕', '99', '2', '本书带有界碑性质，作者攀爬到了该研究领域的顶端，还将是同类研究和写作绕不过去的作品。

同时，它还设立了一个出发点：凡对古典中国思想、信仰、伦理、风俗，以及政治、制度有兴趣的研究者或普通读者，可以先从这本书开始你的探索。
', '0', 'http://localhost:8092/BookManager/pictures/1744965552782history4.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('43', '智人之上', '尤瓦尔·赫拉利', '79', '2', '在过去10万年里，我们智人积攒了巨大的力量。然而，持续不断的发明与征服也将我们推入了一场生存危机。全球生态濒临崩溃，虚假信息泛滥。我们正一头扎进可能毁灭我们自身的、由新型信息网络组成的人工智能时代。', '0', 'http://localhost:8092/BookManager/pictures/1744965655915history8.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('44', '三国前夜', '张向荣', '89.8', '2', '天下到底是汉家之天下，还是天下之天下？
这将成为此后一百年风云变幻的核心，隐藏着汉家是存续还是终结的密码。', '0', 'http://localhost:8092/BookManager/pictures/1744965678888history9.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('47', '人工智能', 'Stuart Russell', '198', '1', '本书全面、深入地探讨了人工智能（AI）领域的理论和实践，以统一的风格将当今流行的人工智能思想和术语融合到引起广泛关注的应用中，真正做到理论和实践相结合。', '0', 'http://localhost:8092/BookManager/pictures/1744965821216cs2.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('48', 'Java编程思想', 'Bruce Eckel', '108', '1', '本书赢得了全球程序员的广泛赞誉，即使是最晦涩的概念，在Bruce Eckel的文字亲和力和小而直接的编程示例面前也会化解于无形。从Java的基础语法到最高级特性（深入的面向对象概念、多线程、自动项目构建、单元测试和调试等），本书都能逐步指导你轻松掌握。', '0', 'http://localhost:8092/BookManager/pictures/1744965862877cs3.jpg');
INSERT INTO "ADMIN1"."T_BOOK_INFO" ("BOOKID", "BOOKNAME", "BOOKAUTHOR", "BOOKPRICE", "BOOKTYPEID", "BOOKDESC", "ISBORROWED", "BOOKIMG") VALUES ('50', '整洁代码的艺术', '克里斯蒂安·迈尔', '79.8', '1', '大多数软件开发人员在复杂的代码上浪费了大量的时间。《整洁代码的艺术》提出的九大原则将教会您如何编写清晰、可维护且功能完备的代码。本书的指导原则很简单：缩减和简化，将精力投入到重要的工作上，省下大量的时间，卸下代码维护的重担。', '0', 'http://localhost:8092/BookManager/pictures/1744965926318cs5.jpg');
COMMIT;
COMMIT;

-- ----------------------------
-- Primary Key structure for table T_BOOK_INFO
-- ----------------------------
ALTER TABLE "ADMIN1"."T_BOOK_INFO" ADD CONSTRAINT "SYS_C0011117" PRIMARY KEY ("BOOKID");

-- ----------------------------
-- Checks structure for table T_BOOK_INFO
-- ----------------------------
ALTER TABLE "ADMIN1"."T_BOOK_INFO" ADD CONSTRAINT "SYS_C0011109" CHECK ("BOOKID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN1"."T_BOOK_INFO" ADD CONSTRAINT "SYS_C0011110" CHECK ("BOOKNAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN1"."T_BOOK_INFO" ADD CONSTRAINT "SYS_C0011111" CHECK ("BOOKAUTHOR" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN1"."T_BOOK_INFO" ADD CONSTRAINT "SYS_C0011112" CHECK ("BOOKPRICE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN1"."T_BOOK_INFO" ADD CONSTRAINT "SYS_C0011113" CHECK ("BOOKTYPEID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN1"."T_BOOK_INFO" ADD CONSTRAINT "SYS_C0011114" CHECK ("BOOKDESC" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN1"."T_BOOK_INFO" ADD CONSTRAINT "SYS_C0011115" CHECK ("ISBORROWED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN1"."T_BOOK_INFO" ADD CONSTRAINT "SYS_C0011116" CHECK ("BOOKIMG" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN1"."T_BOOK_INFO" ADD CONSTRAINT "SYS_C0011563" CHECK ("BOOKID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN1"."T_BOOK_INFO" ADD CONSTRAINT "SYS_C0011564" CHECK ("BOOKNAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN1"."T_BOOK_INFO" ADD CONSTRAINT "SYS_C0011565" CHECK ("BOOKAUTHOR" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN1"."T_BOOK_INFO" ADD CONSTRAINT "SYS_C0011566" CHECK ("BOOKPRICE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN1"."T_BOOK_INFO" ADD CONSTRAINT "SYS_C0011567" CHECK ("BOOKTYPEID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN1"."T_BOOK_INFO" ADD CONSTRAINT "SYS_C0011568" CHECK ("BOOKDESC" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN1"."T_BOOK_INFO" ADD CONSTRAINT "SYS_C0011569" CHECK ("ISBORROWED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN1"."T_BOOK_INFO" ADD CONSTRAINT "SYS_C0011570" CHECK ("BOOKIMG" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
