SET NAMES UTF8;
DROP DATABASE IF EXISTS mfw;
CREATE DATABASE mfw CHARSET=UTF8;
USE mfw;
CREATE TABLE mfw_carousel1(
    cid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    img varchar(128) default NULL,
    href varchar(128) default NULL
);
INSERT INTO mfw_carousel1 VALUES(1,'http://127.0.0.1:3030/img/lunbo/1.jpeg','null');
INSERT INTO mfw_carousel1 VALUES(2,'http://127.0.0.1:3030/img/lunbo/2.jpeg','null');
INSERT INTO mfw_carousel1 VALUES(3,'http://127.0.0.1:3030/img/lunbo/3.jpeg','null');

CREATE TABLE mfw_index_info(
    nid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    img varchar(128) default NULL,
    title varchar(128) default NULL,
    subtext varchar(128) default NULL,
    bigsub Text
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO mfw_index_info VALUES(1,'http://127.0.0.1:3030/img/index/1.jpeg','跟着电影去打卡， 揭秘爱尔兰的狂野与温情',' 写给爱尔兰的情书 不曾想到，爱上这座岛屿只需要一天： 这是一个素颜天气下依然能惊艳到我们的','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/2.jpeg','带熊孩子坐飞机攻略 | 学学这些“救命”招吧','不少人会抱怨：带熊孩子坐飞机就像带了个小恶魔。其实经验多了就会发现，和孩子一起飞并没有这么可怕，有很多方法可以让大人小孩都安心享受飞行的乐趣~','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/3.jpeg',' 重庆7处必打卡景点','第一次来重庆，这些景点得去！','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/4.jpeg',' 旅行真能使人改变吗？','旅行路上，我学习了20多种新技能！','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/5.jpeg','重庆48h｜网红、艺术、市井全体验，山城这样玩才地道！','如果你只有2天时间，想要这样带你玩转魔幻重庆~','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/6.jpeg','潜水为什么容易上瘾？','潜水激发了我对世界的无限热爱，在深海中，那种安静的只能听到自己呼吸的声音的感觉，真的让人心醉。','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/7.jpeg','三日普吉',' 关于出行 按道理，中秋三天假期，要么在家团圆，要么国内小游。但我终于成就了三天出国一趟的旅程，但还是老地方---- 泰国 。','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/8.jpeg','旅行中，朋友给你拍过哪些丑照？','直男和塑料姐妹花，谁拍的更丑...','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/1.jpeg','跟着电影去打卡， 揭秘爱尔兰的狂野与温情',' 写给爱尔兰的情书 不曾想到，爱上这座岛屿只需要一天： 这是一个素颜天气下依然能惊艳到我们的','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/2.jpeg','带熊孩子坐飞机攻略 | 学学这些“救命”招吧','不少人会抱怨：带熊孩子坐飞机就像带了个小恶魔。其实经验多了就会发现，和孩子一起飞并没有这么可怕，有很多方法可以让大人小孩都安心享受飞行的乐趣~','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/3.jpeg',' 重庆7处必打卡景点','第一次来重庆，这些景点得去！','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/4.jpeg',' 旅行真能使人改变吗？','旅行路上，我学习了20多种新技能！','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/5.jpeg','重庆48h｜网红、艺术、市井全体验，山城这样玩才地道！','如果你只有2天时间，想要这样带你玩转魔幻重庆~','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/6.jpeg','潜水为什么容易上瘾？','潜水激发了我对世界的无限热爱，在深海中，那种安静的只能听到自己呼吸的声音的感觉，真的让人心醉。','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/7.jpeg','三日普吉',' 关于出行 按道理，中秋三天假期，要么在家团圆，要么国内小游。但我终于成就了三天出国一趟的旅程，但还是老地方---- 泰国 。','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/8.jpeg','旅行中，朋友给你拍过哪些丑照？','直男和塑料姐妹花，谁拍的更丑...','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/1.jpeg','跟着电影去打卡， 揭秘爱尔兰的狂野与温情',' 写给爱尔兰的情书 不曾想到，爱上这座岛屿只需要一天： 这是一个素颜天气下依然能惊艳到我们的','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/2.jpeg','带熊孩子坐飞机攻略 | 学学这些“救命”招吧','不少人会抱怨：带熊孩子坐飞机就像带了个小恶魔。其实经验多了就会发现，和孩子一起飞并没有这么可怕，有很多方法可以让大人小孩都安心享受飞行的乐趣~','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/3.jpeg',' 重庆7处必打卡景点','第一次来重庆，这些景点得去！','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/4.jpeg',' 旅行真能使人改变吗？','旅行路上，我学习了20多种新技能！','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/5.jpeg','重庆48h｜网红、艺术、市井全体验，山城这样玩才地道！','如果你只有2天时间，想要这样带你玩转魔幻重庆~','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/6.jpeg','潜水为什么容易上瘾？','潜水激发了我对世界的无限热爱，在深海中，那种安静的只能听到自己呼吸的声音的感觉，真的让人心醉。','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/7.jpeg','三日普吉',' 关于出行 按道理，中秋三天假期，要么在家团圆，要么国内小游。但我终于成就了三天出国一趟的旅程，但还是老地方---- 泰国 。','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');
INSERT INTO mfw_index_info VALUES(null,'http://127.0.0.1:3030/img/index/8.jpeg','旅行中，朋友给你拍过哪些丑照？','直男和塑料姐妹花，谁拍的更丑...','这条经典线路囊括了香港地标建筑、网红拍照打卡地、本地美食推荐、迪士尼乐园以及离岛风情，基本上在四天时间里，能对香港这个包含多元文化的城市有个初步印象。
整体行程以地理片区为路线划分，以公共交通(地铁、叮叮车、巴士、轮渡）为主，让你最全面，最合理的了解香港。虽说香港的公共交通比较发达，但有些地方还是需要以步行的方式边走边看，所以一定要做好暴走的准备。第一天游览以“油尖旺”为代表的九龙区，体验香港本地小街小巷的市井文化；第二天游览以中环为代表的港岛区，感受香港时尚摩登的都市风光；第三天游览南丫岛，远离繁华与喧嚣去小岛度假；第四天去迪士尼乐园唤醒你的童真。
第一天 九龙区
行程概览今天的游览主题是“品味港式市井文化”，主要交通方式以步行为主。上午先去彩虹邨拍一组网红风美照，然后坐地铁到旺角，一路向南步行游览油尖旺地区，金鱼街、油麻地警署和重庆大厦都是必到网红打卡地，之后前往海港城购物，晚上可以在庙街感受夜市和大排档。香港网红拍照地彩虹邨，其实是香港的公共屋邨之一，也就是香港居民的普通住宅。它最吸引人的就是五颜六色的外墙，配合着彩色篮球场，非常适合拍一张青春照。彩虹邨的最佳拍照地，在一个公共停车场三楼，地铁彩虹站C4出口，左拐步行几分钟就能看见。到达方式：地铁观塘线至彩虹站C4出口金鱼街其实是由通菜街与弼街组成的十字型街区，这里有40多家店铺专营各种观赏鱼类。这些店铺会把金鱼一袋袋地挂在网格墙上沿街售卖，场景十分壮观，好似街头水族馆一般。不过值得注意的是，有些店铺不允许游客拍照。
到达方式：地铁观塘线至旺角站B3出口');

CREATE TABLE mfw_carousel2(
    cid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    img varchar(128) default NULL,
    href varchar(128) default NULL
);
INSERT INTO mfw_carousel2 VALUES(1,'http://127.0.0.1:3030/img/goal/lunbo/1.jpeg','null');
INSERT INTO mfw_carousel2 VALUES(2,'http://127.0.0.1:3030/img/goal/lunbo/2.jpeg','null');
INSERT INTO mfw_carousel2 VALUES(3,'http://127.0.0.1:3030/img/goal/lunbo/3.jpeg','null');

CREATE TABLE mfw_goal_family(
    fid INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(10),
    subtitle VARCHAR(30),
    button VARCHAR(10)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO mfw_goal_family VALUES(1,'热门目的地','最受大家喜欢的目的地推荐','更多目的地');
INSERT INTO mfw_goal_family VALUES(2,'当季推荐','每月最适合前往的目的地推荐','更多目的地');
INSERT INTO mfw_goal_family VALUES(3,'主题精选','大量主题出行，个性化你的旅行','更多主题');

CREATE TABLE mfw_goal_lid(
  lid INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
  fid INT,
  place VARCHAR(10)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO mfw_goal_lid VALUES(1,1,'国内');
INSERT INTO mfw_goal_lid VALUES(2,1,'港澳台');
INSERT INTO mfw_goal_lid VALUES(3,1,'日韩');
INSERT INTO mfw_goal_lid VALUES(4,1,'东南亚');
INSERT INTO mfw_goal_lid VALUES(5,1,'南亚 西亚');
INSERT INTO mfw_goal_lid VALUES(6,1,'欧洲 美洲');
INSERT INTO mfw_goal_lid VALUES(7,1,'澳洲 非洲');
INSERT INTO mfw_goal_lid VALUES(null,2,'1月');
INSERT INTO mfw_goal_lid VALUES(null,2,'3月');
INSERT INTO mfw_goal_lid VALUES(null,2,'5月');
INSERT INTO mfw_goal_lid VALUES(null,2,'7月');
INSERT INTO mfw_goal_lid VALUES(null,2,'9月');
INSERT INTO mfw_goal_lid VALUES(null,2,'11月');
INSERT INTO mfw_goal_lid VALUES(null,3,'全年适宜');
INSERT INTO mfw_goal_lid VALUES(null,3,'季节');
INSERT INTO mfw_goal_lid VALUES(null,3,'出行方式');
INSERT INTO mfw_goal_lid VALUES(null,3,'节假日');

CREATE TABLE mfw_goal_img(
    gid INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    lid INT,
    img VARCHAR(100),
    city VARCHAR(10)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO mfw_goal_img VALUES(1,1,'http://127.0.0.1:3030/img/goal/index/destination/guonei/1.jpeg','北京');
INSERT INTO mfw_goal_img VALUES(null,1,'http://127.0.0.1:3030/img/goal/index/destination/guonei/2.jpeg','成都');
INSERT INTO mfw_goal_img VALUES(null,1,'http://127.0.0.1:3030/img/goal/index/destination/guonei/3.jpeg','丽江');
INSERT INTO mfw_goal_img VALUES(null,1,'http://127.0.0.1:3030/img/goal/index/destination/guonei/4.jpeg','三亚');
INSERT INTO mfw_goal_img VALUES(null,1,'http://127.0.0.1:3030/img/goal/index/destination/guonei/5.jpeg','厦门');
INSERT INTO mfw_goal_img VALUES(null,1,'http://127.0.0.1:3030/img/goal/index/destination/guonei/6.jpeg','上海');
INSERT INTO mfw_goal_img VALUES(null,2,'http://127.0.0.1:3030/img/goal/index/destination/aotai/1.jpeg','澳门');
INSERT INTO mfw_goal_img VALUES(null,2,'http://127.0.0.1:3030/img/goal/index/destination/aotai/2.jpeg','高雄');
INSERT INTO mfw_goal_img VALUES(null,2,'http://127.0.0.1:3030/img/goal/index/destination/aotai/3.jpeg','花莲');
INSERT INTO mfw_goal_img VALUES(null,2,'http://127.0.0.1:3030/img/goal/index/destination/aotai/4.png','垦丁');
INSERT INTO mfw_goal_img VALUES(null,2,'http://127.0.0.1:3030/img/goal/index/destination/aotai/5.jpeg','台北');
INSERT INTO mfw_goal_img VALUES(null,2,'http://127.0.0.1:3030/img/goal/index/destination/aotai/6.jpeg','香港');
INSERT INTO mfw_goal_img VALUES(null,3,'http://127.0.0.1:3030/img/goal/index/destination/aotai/1.jpeg','东京');
INSERT INTO mfw_goal_img VALUES(null,3,'http://127.0.0.1:3030/img/goal/index/destination/aotai/2.jpeg','大阪');
INSERT INTO mfw_goal_img VALUES(null,3,'http://127.0.0.1:3030/img/goal/index/destination/aotai/3.jpeg','首尔');
INSERT INTO mfw_goal_img VALUES(null,3,'http://127.0.0.1:3030/img/goal/index/destination/aotai/4.png','京都');
INSERT INTO mfw_goal_img VALUES(null,3,'http://127.0.0.1:3030/img/goal/index/destination/aotai/5.jpeg','济州岛');
INSERT INTO mfw_goal_img VALUES(null,3,'http://127.0.0.1:3030/img/goal/index/destination/aotai/6.jpeg','札幌');
INSERT INTO mfw_goal_img VALUES(null,4,'http://127.0.0.1:3030/img/goal/index/destination/aotai/1.jpeg','曼谷');
INSERT INTO mfw_goal_img VALUES(null,4,'http://127.0.0.1:3030/img/goal/index/destination/aotai/2.jpeg','普吉岛');
INSERT INTO mfw_goal_img VALUES(null,4,'http://127.0.0.1:3030/img/goal/index/destination/aotai/3.jpeg','清迈');
INSERT INTO mfw_goal_img VALUES(null,4,'http://127.0.0.1:3030/img/goal/index/destination/aotai/4.png','巴厘岛');
INSERT INTO mfw_goal_img VALUES(null,4,'http://127.0.0.1:3030/img/goal/index/destination/aotai/5.jpeg','新加坡');
INSERT INTO mfw_goal_img VALUES(null,4,'http://127.0.0.1:3030/img/goal/index/destination/aotai/6.jpeg','吉隆坡');
INSERT INTO mfw_goal_img VALUES(null,5,'http://127.0.0.1:3030/img/goal/index/destination/aotai/1.jpeg','迪拜');
INSERT INTO mfw_goal_img VALUES(null,5,'http://127.0.0.1:3030/img/goal/index/destination/aotai/2.jpeg','加德满都');
INSERT INTO mfw_goal_img VALUES(null,5,'http://127.0.0.1:3030/img/goal/index/destination/aotai/3.jpeg','科伦坡');
INSERT INTO mfw_goal_img VALUES(null,5,'http://127.0.0.1:3030/img/goal/index/destination/aotai/4.png','阿布扎比');
INSERT INTO mfw_goal_img VALUES(null,5,'http://127.0.0.1:3030/img/goal/index/destination/aotai/5.jpeg','博卡拉');
INSERT INTO mfw_goal_img VALUES(null,5,'http://127.0.0.1:3030/img/goal/index/destination/aotai/6.jpeg','新德里');
INSERT INTO mfw_goal_img VALUES(null,6,'http://127.0.0.1:3030/img/goal/index/destination/aotai/1.jpeg','塞班岛');
INSERT INTO mfw_goal_img VALUES(null,6,'http://127.0.0.1:3030/img/goal/index/destination/aotai/2.jpeg','巴黎');
INSERT INTO mfw_goal_img VALUES(null,6,'http://127.0.0.1:3030/img/goal/index/destination/aotai/3.jpeg','伦敦');
INSERT INTO mfw_goal_img VALUES(null,6,'http://127.0.0.1:3030/img/goal/index/destination/aotai/4.png','洛杉矶');
INSERT INTO mfw_goal_img VALUES(null,6,'http://127.0.0.1:3030/img/goal/index/destination/aotai/5.jpeg','罗马');
INSERT INTO mfw_goal_img VALUES(null,6,'http://127.0.0.1:3030/img/goal/index/destination/aotai/6.jpeg','纽约');
INSERT INTO mfw_goal_img VALUES(null,7,'http://127.0.0.1:3030/img/goal/index/destination/aotai/1.jpeg','悉尼');
INSERT INTO mfw_goal_img VALUES(null,7,'http://127.0.0.1:3030/img/goal/index/destination/aotai/2.jpeg','墨尔本');
INSERT INTO mfw_goal_img VALUES(null,7,'http://127.0.0.1:3030/img/goal/index/destination/aotai/3.jpeg','奥克兰');
INSERT INTO mfw_goal_img VALUES(null,7,'http://127.0.0.1:3030/img/goal/index/destination/aotai/4.png','黄金海岸');
INSERT INTO mfw_goal_img VALUES(null,7,'http://127.0.0.1:3030/img/goal/index/destination/aotai/5.jpeg','凯恩斯');
INSERT INTO mfw_goal_img VALUES(null,7,'http://127.0.0.1:3030/img/goal/index/destination/aotai/6.jpeg','皇后镇');
INSERT INTO mfw_goal_img VALUES(null,8,'http://127.0.0.1:3030/img/goal/index/season/10/1.jpeg','香港');
INSERT INTO mfw_goal_img VALUES(null,8,'http://127.0.0.1:3030/img/goal/index/season/10/2.jpeg','三亚');
INSERT INTO mfw_goal_img VALUES(null,8,'http://127.0.0.1:3030/img/goal/index/season/10/3.png','清迈');
INSERT INTO mfw_goal_img VALUES(null,8,'http://127.0.0.1:3030/img/goal/index/season/10/4.jpeg','广州');
INSERT INTO mfw_goal_img VALUES(null,8,'http://127.0.0.1:3030/img/goal/index/season/10/5.jpeg','新加坡');
INSERT INTO mfw_goal_img VALUES(null,8,'http://127.0.0.1:3030/img/goal/index/season/10/6.jpeg','哈尔滨');
INSERT INTO mfw_goal_img VALUES(null,9,'http://127.0.0.1:3030/img/goal/index/season/11/1.jpeg','普吉岛');
INSERT INTO mfw_goal_img VALUES(null,9,'http://127.0.0.1:3030/img/goal/index/season/11/2.png','南京');
INSERT INTO mfw_goal_img VALUES(null,9,'http://127.0.0.1:3030/img/goal/index/season/11/3.jpeg','昆明');
INSERT INTO mfw_goal_img VALUES(null,9,'http://127.0.0.1:3030/img/goal/index/season/11/4.jpeg','芽庄');
INSERT INTO mfw_goal_img VALUES(null,9,'http://127.0.0.1:3030/img/goal/index/season/11/5.jpeg','新西兰');
INSERT INTO mfw_goal_img VALUES(null,9,'http://127.0.0.1:3030/img/goal/index/season/11/6.png','长滩岛');
INSERT INTO mfw_goal_img VALUES(null,10,'http://127.0.0.1:3030/img/goal/index/season/11/1.jpeg','香港');
INSERT INTO mfw_goal_img VALUES(null,10,'http://127.0.0.1:3030/img/goal/index/season/11/2.png','三亚');
INSERT INTO mfw_goal_img VALUES(null,10,'http://127.0.0.1:3030/img/goal/index/season/11/3.jpeg','清迈');
INSERT INTO mfw_goal_img VALUES(null,10,'http://127.0.0.1:3030/img/goal/index/season/11/4.jpeg','广州');
INSERT INTO mfw_goal_img VALUES(null,10,'http://127.0.0.1:3030/img/goal/index/season/11/5.jpeg','新加坡');
INSERT INTO mfw_goal_img VALUES(null,10,'http://127.0.0.1:3030/img/goal/index/season/11/6.png','哈尔滨');
INSERT INTO mfw_goal_img VALUES(null,11,'http://127.0.0.1:3030/img/goal/index/season/10/1.jpeg','香港');
INSERT INTO mfw_goal_img VALUES(null,11,'http://127.0.0.1:3030/img/goal/index/season/10/2.jpeg','三亚');
INSERT INTO mfw_goal_img VALUES(null,11,'http://127.0.0.1:3030/img/goal/index/season/10/3.png','清迈');
INSERT INTO mfw_goal_img VALUES(null,11,'http://127.0.0.1:3030/img/goal/index/season/10/4.jpeg','广州');
INSERT INTO mfw_goal_img VALUES(null,11,'http://127.0.0.1:3030/img/goal/index/season/10/5.jpeg','新加坡');
INSERT INTO mfw_goal_img VALUES(null,11,'http://127.0.0.1:3030/img/goal/index/season/10/6.jpeg','哈尔滨');
INSERT INTO mfw_goal_img VALUES(null,12,'http://127.0.0.1:3030/img/goal/index/season/11/1.jpeg','普吉岛');
INSERT INTO mfw_goal_img VALUES(null,12,'http://127.0.0.1:3030/img/goal/index/season/11/2.png','南京');
INSERT INTO mfw_goal_img VALUES(null,12,'http://127.0.0.1:3030/img/goal/index/season/11/3.jpeg','昆明');
INSERT INTO mfw_goal_img VALUES(null,12,'http://127.0.0.1:3030/img/goal/index/season/11/4.jpeg','芽庄');
INSERT INTO mfw_goal_img VALUES(null,12,'http://127.0.0.1:3030/img/goal/index/season/11/5.jpeg','新西兰');
INSERT INTO mfw_goal_img VALUES(null,12,'http://127.0.0.1:3030/img/goal/index/season/11/6.png','长滩岛');
INSERT INTO mfw_goal_img VALUES(null,13,'http://127.0.0.1:3030/img/goal/index/season/11/1.jpeg','香港');
INSERT INTO mfw_goal_img VALUES(null,13,'http://127.0.0.1:3030/img/goal/index/season/11/2.png','三亚');
INSERT INTO mfw_goal_img VALUES(null,13,'http://127.0.0.1:3030/img/goal/index/season/11/3.jpeg','清迈');
INSERT INTO mfw_goal_img VALUES(null,13,'http://127.0.0.1:3030/img/goal/index/season/11/4.jpeg','广州');
INSERT INTO mfw_goal_img VALUES(null,13,'http://127.0.0.1:3030/img/goal/index/season/11/5.jpeg','新加坡');
INSERT INTO mfw_goal_img VALUES(null,13,'http://127.0.0.1:3030/img/goal/index/season/11/6.png','哈尔滨');
INSERT INTO mfw_goal_img VALUES(null,14,'http://127.0.0.1:3030/img/goal/index/theme/quan/1.jpeg','免签');
INSERT INTO mfw_goal_img VALUES(null,14,'http://127.0.0.1:3030/img/goal/index/theme/quan/2.jpeg','人文历史');
INSERT INTO mfw_goal_img VALUES(null,14,'http://127.0.0.1:3030/img/goal/index/theme/quan/3.jpeg','拍片圣地');
INSERT INTO mfw_goal_img VALUES(null,14,'http://127.0.0.1:3030/img/goal/index/theme/quan/4.jpeg','自然风景');
INSERT INTO mfw_goal_img VALUES(null,14,'http://127.0.0.1:3030/img/goal/index/theme/quan/5.jpeg','小众');
INSERT INTO mfw_goal_img VALUES(null,14,'http://127.0.0.1:3030/img/goal/index/theme/quan/6.jpeg','登山');
INSERT INTO mfw_goal_img VALUES(null,15,'http://127.0.0.1:3030/img/goal/index/theme/ji/1.jpeg','草原');
INSERT INTO mfw_goal_img VALUES(null,15,'http://127.0.0.1:3030/img/goal/index/theme/ji/2.jpeg','星空');
INSERT INTO mfw_goal_img VALUES(null,15,'http://127.0.0.1:3030/img/goal/index/theme/ji/3.jpeg','赏花');
INSERT INTO mfw_goal_img VALUES(null,15,'http://127.0.0.1:3030/img/goal/index/theme/ji/4.jpeg','雪景');
INSERT INTO mfw_goal_img VALUES(null,15,'http://127.0.0.1:3030/img/goal/index/theme/ji/5.jpeg','海岛');
INSERT INTO mfw_goal_img VALUES(null,15,'http://127.0.0.1:3030/img/goal/index/theme/ji/6.jpeg','极限运动');
INSERT INTO mfw_goal_img VALUES(null,16,'http://127.0.0.1:3030/img/goal/index/theme/quan/1.jpeg','徒步');
INSERT INTO mfw_goal_img VALUES(null,16,'http://127.0.0.1:3030/img/goal/index/theme/quan/2.jpeg','自驾');
INSERT INTO mfw_goal_img VALUES(null,16,'http://127.0.0.1:3030/img/goal/index/theme/quan/3.jpeg','游轮');
INSERT INTO mfw_goal_img VALUES(null,16,'http://127.0.0.1:3030/img/goal/index/theme/quan/4.jpeg','骑行');
INSERT INTO mfw_goal_img VALUES(null,16,'http://127.0.0.1:3030/img/goal/index/theme/quan/5.jpeg','蜜月');
INSERT INTO mfw_goal_img VALUES(null,16,'http://127.0.0.1:3030/img/goal/index/theme/quan/6.jpeg','亲子游');
INSERT INTO mfw_goal_img VALUES(null,17,'http://127.0.0.1:3030/img/goal/index/theme/ji/1.jpeg','元旦');
INSERT INTO mfw_goal_img VALUES(null,17,'http://127.0.0.1:3030/img/goal/index/theme/ji/2.jpeg','春节');
INSERT INTO mfw_goal_img VALUES(null,17,'http://127.0.0.1:3030/img/goal/index/theme/ji/3.jpeg','清明');
INSERT INTO mfw_goal_img VALUES(null,17,'http://127.0.0.1:3030/img/goal/index/theme/ji/4.jpeg','五一');
INSERT INTO mfw_goal_img VALUES(null,17,'http://127.0.0.1:3030/img/goal/index/theme/ji/5.jpeg','端午');
INSERT INTO mfw_goal_img VALUES(null,17,'http://127.0.0.1:3030/img/goal/index/theme/ji/6.jpeg','中秋');

CREATE TABLE mfw_carousel3(
    cid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    img varchar(128) default NULL,
    href varchar(128) default NULL
);
INSERT INTO mfw_carousel3 VALUES(1,'http://127.0.0.1:3030/img/maker/1.png','null');
INSERT INTO mfw_carousel3 VALUES(2,'http://127.0.0.1:3030/img/maker/2.jpeg','null');

CREATE TABLE mfw_travel(
    tid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title varchar(128),
    sp1 varchar(10),
    sp2 varchar(10),
    price DECIMAL(10,2),
    img  varchar(128),
    href varchar(128) default NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO mfw_travel VALUES(1,'上海出发马尔代夫奥瑞格岛7天5晚自由行','马尔代夫','自由行',15100,'http://127.0.0.1:3030/img/maker/index/1.jpeg','null');
INSERT INTO mfw_travel VALUES(null,'去热带的岛屿游泳·西安直飞苏梅岛6天5晚自由行','苏梅岛','自由行',4180,'http://127.0.0.1:3030/img/maker/index/2.jpeg','null');
INSERT INTO mfw_travel VALUES(null,'北京往返马尔代夫尼亚玛岛7天5晚自由行','尼亚玛岛','自由行',17799,'http://127.0.0.1:3030/img/maker/index/3.jpeg','null');
INSERT INTO mfw_travel VALUES(null,'春节寒假预售.上海直飞曼谷6-7天往返机票含税','曼谷','特价机票',2180,'http://127.0.0.1:3030/img/maker/index/4.gif','null');
INSERT INTO mfw_travel VALUES(null,'北京直飞普吉岛5/7天往返含税机票 ','普吉岛','特价机票',2899,'http://127.0.0.1:3030/img/maker/index/5.jpeg','null');
INSERT INTO mfw_travel VALUES(null,'北京直飞日本北海道札幌5-8天往返含税机票 ','札幌','特价机票',2999,'http://127.0.0.1:3030/img/maker/index/6.jpeg','null');
INSERT INTO mfw_travel VALUES(null,'【圣诞月立减】珠海长隆海洋王国度假区企鹅酒店2天1晚度假套餐','珠海','酒店套餐',847,'http://127.0.0.1:3030/img/maker/index/7.jpeg','null');
INSERT INTO mfw_travel VALUES(null,'网红玻璃水屋·卡帕莱度假村','卡帕莱岛','酒店套餐',3200,'http://127.0.0.1:3030/img/maker/index/8.jpeg','null');
INSERT INTO mfw_travel VALUES(null,'[北京送签]泰国旅游签证','泰国','普通签证',255,'http://127.0.0.1:3030/img/maker/index/9.gif','null');
INSERT INTO mfw_travel VALUES(null,'最后三天【限量196元】越南旅游签证','越南','普通签证',206,'http://127.0.0.1:3030/img/maker/index/10.gif','null');

CREATE TABLE mfw_user(
    uid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    uphone varchar(11),
    upwd varchar(12)
);
INSERT INTO mfw_user VALUES(1,13545135729,123456);
INSERT INTO mfw_user VALUES(null,15545135729,456123);
INSERT INTO mfw_user VALUES(null,17545135729,132456);
INSERT INTO mfw_user VALUES(null,18545135729,123456);
INSERT INTO mfw_user VALUES(null,18845135729,456123);
INSERT INTO mfw_user VALUES(null,17745135729,456123);

CREATE TABLE mfw_user_collec(
    uid INT NOT NULL,
    nid INT
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO mfw_user_collec VALUES(1,1);
INSERT INTO mfw_user_collec VALUES(1,3);
INSERT INTO mfw_user_collec VALUES(1,5);
INSERT INTO mfw_user_collec VALUES(2,1);  
INSERT INTO mfw_user_collec VALUES(2,5);