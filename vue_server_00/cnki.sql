SET NAMES UTF8;
DROP DATABASE IF EXISTS cnki;
CREATE DATABASE cnki CHARSET=UTF8;
USE cnki;

/*文献资源总表*/
CREATE TABLE laws(
	lid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(100),                  #标题
	office VARCHAR(300),                 #发布机关
	release_date VARCHAR(10),            #发布日期
	implement_date VARCHAR(10),          #实施日期
	title_number VARCHAR(100),           #发文字号
	timelines VARCHAR(4),                #时效性
	keyword VARCHAR(10),                 #关键词
	content VARCHAR(2048)                #正文           
);

/*首页资源推荐表*/
CREATE TABLE source(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	classic VARCHAR(50),                 #分类
	title VARCHAR(128),                  #标题
	out_time VARCHAR(10),                #发布日期
	t_href VARCHAR(128)                  #资源链接
);
INSERT INTO source VALUES(NULL,'最新法规','市场监管总局、国家发展改革委、工业和信息化部、民政部、财政部、国资委、银保监会关于进一步加强违规涉企收费治理工作的通知','2019-08-03','');
INSERT INTO source VALUES(NULL,'最新法规','关于防范非药用类麻醉药品和精神药品及制毒物品违法犯罪的通告','2019-08-01','');
INSERT INTO source VALUES(NULL,'最新法规','科技部关于印发《国家新一代人工智能开放创新平台建设工作指引》的通知','2019-08-01','');
INSERT INTO source VALUES(NULL,'最新法规','最高人民法院关于建设一站式多元解纷机制一站式诉讼服务中心的意见','2019-07-31','');
INSERT INTO source VALUES(NULL,'最新法规','关于开展儿童血液病、恶性肿瘤医疗救治及保障管理工作的通知','2019-07-31','');
INSERT INTO source VALUES(NULL,'案例分析','车险系A4型保险欺诈案件分析和解构','2019-07-25','');
INSERT INTO source VALUES(NULL,'案例分析','车险系A3型保险欺诈案件分析和解构','2019-07-19','');
INSERT INTO source VALUES(NULL,'案例分析','吴中区检察院食药环案件分析报告','2019-06-25','');
INSERT INTO source VALUES(NULL,'案例分析','一起疑似他杀扼颈的中毒死亡案件分析及启示','2019-06-15','');
INSERT INTO source VALUES(NULL,'案例分析','我州召开扫黑除恶专项斗争案件分析会','2019-05-13','');
INSERT INTO source VALUES(NULL,'指导性案例','武汉乙投资公司等骗取调解书虚假诉讼监督案','2018-11-19','');
INSERT INTO source VALUES(NULL,'指导性案例','齐某强奸、猥亵儿童案','2019-07-27','');
INSERT INTO source VALUES(NULL,'指导性案例','曾云侵害英烈名誉案','2019-06-12','');
INSERT INTO source VALUES(NULL,'指导性案例','张庆福、张殿凯诉朱振彪生命权纠纷案','2019-02-28','');
INSERT INTO source VALUES(NULL,'指导性案例','浙江隆达不锈钢有限公司诉A.P.穆勒-马士基有限公司海上货物运输合同纠纷案','2017-12-29','');
INSERT INTO source VALUES(NULL,'核心期刊最新发文','论人工智能的法学分析方法——以著作权为例','2017-07-25','');
INSERT INTO source VALUES(NULL,'核心期刊最新发文','网站屏蔽制度的国际发展及本土化构建','2017-07-25','');
INSERT INTO source VALUES(NULL,'核心期刊最新发文','专利侵权禁令范围之确定与德国经验的借鉴——兼评苹果公司对福州中院禁令的履行','2017-07-25','');
INSERT INTO source VALUES(NULL,'核心期刊最新发文','建立国家层面知识产权案件上诉审理机制 开辟新时代知识产权司法保护工作新境界——最高人民法院知识产权法庭的职责使命与实践创新','2017-07-25','');
INSERT INTO source VALUES(NULL,'核心期刊最新发文','商业秘密与员工基本技能的区分及冲突解决简','2017-07-25','');
INSERT INTO source VALUES(NULL,'法制要闻','向先进典型学习 牢记初心使命忠诚履职担当','2017-07-31','');
INSERT INTO source VALUES(NULL,'法制要闻','严格遵循罪犯特赦原则 展现法安天下德润人心 ——全国各地特赦实施工作依法有序展开','2017-07-31','');
INSERT INTO source VALUES(NULL,'法制要闻','依法特赦，法治与善治的生动实践','2017-07-31','');
INSERT INTO source VALUES(NULL,'法制要闻','青海法律援助制度日臻完善服务更加亲民','2017-07-31','');
INSERT INTO source VALUES(NULL,'法制要闻','“呼格案”再审改判并非因赵志红自认真凶 ——最高法刑五庭负责人就赵志红死刑复核一案答记者问','2017-07-31','');
INSERT INTO source VALUES(NULL,'会议前沿','多读书勤思索 大力开展检察专题调研','2017-07-01','');
INSERT INTO source VALUES(NULL,'会议前沿','贪污贿赂犯罪目的财物孳息适用法律问题研究','2017-07-01','');
INSERT INTO source VALUES(NULL,'会议前沿','突破与掣肘:“生态修复补偿机制”的实务与理论检视——以全国各地的探索实践为研究对象','2017-07-01','');
INSERT INTO source VALUES(NULL,'会议前沿','职务犯罪无罪判决实证研究','2017-07-01','');
INSERT INTO source VALUES(NULL,'会议前沿','大数据视角下的检察机关','2017-07-01','');
INSERT INTO source VALUES(NULL,'学位论文','大数据视角下的检察机关','2017-06-01','');
INSERT INTO source VALUES(NULL,'学位论文','儿童性侵犯被害人权益保护的人权标准','2017-06-01','');
INSERT INTO source VALUES(NULL,'学位论文','哈贝马斯“商谈理论”论域中的法律与道德','2017-05-01','');
INSERT INTO source VALUES(NULL,'学位论文','事实与价值的两分和伦理自然主义','2017-05-01','');
INSERT INTO source VALUES(NULL,'学位论文','作为法律本质特征的法律强制','2017-05-01','');
INSERT INTO source VALUES(NULL,'被引排行(2018年以后)','作为法律本质特征的法律强制','2017-01-05','');
INSERT INTO source VALUES(NULL,'被引排行(2018年以后)','个人信息:法益抑或民事权利——对《民法总则》第111条规定的“个人信息”之解读','2017-01-10','');
INSERT INTO source VALUES(NULL,'被引排行(2018年以后)','人工智能时代的刑事风险与刑法应对','2017-01-15','');
INSERT INTO source VALUES(NULL,'被引排行(2018年以后)','职务犯罪监察调查程序若干问题研究','2017-01-05','');
INSERT INTO source VALUES(NULL,'被引排行(2018年以后)','人工智能时代的“内忧”“外患”与刑事责任','2017-01-10','');
INSERT INTO source VALUES(NULL,'下载排行(2018年以后)','浅析中美贸易的本质及中国的应对策略','2019-04-25','');
INSERT INTO source VALUES(NULL,'下载排行(2018年以后)','监察与司法协调衔接的法规范分析','2019-01-15','');
INSERT INTO source VALUES(NULL,'下载排行(2018年以后)','正当防卫的原理及其运用——对二元论的批判性考察','2019-03-28','');
INSERT INTO source VALUES(NULL,'下载排行(2018年以后)','人工智能对知识产权法律保护的挑战','2019-04-15','');
INSERT INTO source VALUES(NULL,'下载排行(2018年以后)','论大数据时代的个人数据权利','2019-03-25','');
INSERT INTO source VALUES(NULL,'法条免费查询(new)','申请安全评估的云服务商提交的材料','2019-07-02','');
INSERT INTO source VALUES(NULL,'法条免费查询(new)','职称评审委员会的评审专家应具备的条件','2019-07-01','');
INSERT INTO source VALUES(NULL,'法条免费查询(new)','纳税服务投诉范围','2019-06-26','');
INSERT INTO source VALUES(NULL,'法条免费查询(new)','制止滥用行政权力排除、限制竞争行为','2019-06-26','');
INSERT INTO source VALUES(NULL,'法条免费查询(new)','水利发展资金管理办法第18条','2019-06-23','');
INSERT INTO source VALUES(NULL,'法律知识问答','招揽人员组建聊天群属于提供场所吗？','2019-07-19','');
INSERT INTO source VALUES(NULL,'法律知识问答','个人申请破产，债务不用还了吗？','2019-07-19','');
INSERT INTO source VALUES(NULL,'法律知识问答','私自动用女朋友的钱算盗窃吗？','2019-07-18','');
INSERT INTO source VALUES(NULL,'法律知识问答','分居后配偶欠债，该承担吗？','2019-07-14','');
INSERT INTO source VALUES(NULL,'法律知识问答','“老赖”有隐私权和名誉权吗？','2019-07-10','');
INSERT INTO source VALUES(NULL,'此罪与彼罪','湖南省高院：“套路贷”与普通民间借贷有本质区别','2019-07-09','');
INSERT INTO source VALUES(NULL,'此罪与彼罪','不法原因给付下侵占罪与诈骗罪的区别与认定','2019-06-30','');
INSERT INTO source VALUES(NULL,'此罪与彼罪','故意伤害罪与寻衅滋事罪的区别','2019-04-24','');
INSERT INTO source VALUES(NULL,'此罪与彼罪','商标指示性正当使用与商标权用尽的区分','2019-04-01','');
INSERT INTO source VALUES(NULL,'此罪与彼罪','论敲诈勒索罪与寻衅滋事罪的区分','2019-03-25','');
INSERT INTO source VALUES(NULL,'民事案件常见问题','上班时请假回家办私事，返回途中发生交通事故算工伤吗？','','');
INSERT INTO source VALUES(NULL,'民事案件常见问题','上班途中突发疾病死亡是否属于工伤？','','');
INSERT INTO source VALUES(NULL,'民事案件常见问题','离婚后，婚前彩礼是否应予返还？','','');
INSERT INTO source VALUES(NULL,'民事案件常见问题','未出生的胎儿有权继承遗产吗？','','');
INSERT INTO source VALUES(NULL,'民事案件常见问题','物业公司能否以停水断电等方式催缴物业费？','','');
INSERT INTO source VALUES(NULL,'刑事案件常见问题','套路贷与民间借贷如何区分？','','');
INSERT INTO source VALUES(NULL,'刑事案件常见问题','取保候审期间脱逃又投案，能否认定为自首？','','');
INSERT INTO source VALUES(NULL,'刑事案件常见问题','民间借贷和非法吸收公众存款罪如何区分？','','');
INSERT INTO source VALUES(NULL,'刑事案件常见问题','刑事案件能否调解？','','');
INSERT INTO source VALUES(NULL,'刑事案件常见问题','代购毒品的性质？','','');
INSERT INTO source VALUES(NULL,'行政案件常见问题','当事人对治安管理处罚不服应如何处理？','','');
INSERT INTO source VALUES(NULL,'行政案件常见问题','原有宅基地范围内翻建的房屋能否认定为违法建筑？','','');
INSERT INTO source VALUES(NULL,'行政案件常见问题','行政诉讼中行政机关负责人是否必须出庭应诉？','','');
INSERT INTO source VALUES(NULL,'行政案件常见问题','能否在行政诉讼中一并解决相关的民事争议？','','');
INSERT INTO source VALUES(NULL,'行政案件常见问题','哪些情况下可以当场作出行政处罚决定？','','');



/*用户信息表*/
CREATE TABLE user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(20),
	upwd VARCHAR(16),
	gender INT,
	phone VARCHAR(16),
	email VARCHAR(50),
	user_name VARCHAR(30)
);

/*插入文献资源总表数据*/
INSERT INTO laws VALUES(NULL,'最高人民法院关于建设一站式多元解纷机制一站式诉讼服务中心的意见','最高人民法院','2019-07-31','2019-07-31','法发[2019]19号','现行有效','诉讼服务','坚持以习近平新时代中国特色社会主义思想为指导，深入贯彻落实习近平总书记全面依法治国新理念新思想新战略，坚持党对人民法院工作的绝对领导，坚持司法为民、公正司法，全面建设集约高效、多元解纷、便民利民、智慧精准、开放互动、交融共享的现代化诉讼服务体系，推动纠纷解决和诉讼服务理念更新、机制变革，实现一站式多元解纷、一站式诉讼服务，努力让人民群众在每一个司法案件中感受到公平正义...');

/*插入用户信息数据*/
INSERT INTO user VALUES(NULL,'dandan','123456',0,'13556789874','dandan@music.com','丹丹');
INSERT INTO user VALUES(NULL,'junjun','123456',0,'13656789874','junjun@music.com','君君');
INSERT INTO user VALUES(NULL,'pengpeng','123456',1,'13756789874','pengpeng@music.com','鹏鹏');
INSERT INTO user VALUES(NULL,'tengteng','123456',0,'13856789874','tengteng@music.com','腾腾');
INSERT INTO user VALUES(NULL,'leilei','123456',1,'13956789874','leilei@music.com','雷雷');
INSERT INTO user VALUES(NULL,'yanyan','123456',0,'15856789874','yanyan@music.com','燕燕');
INSERT INTO user VALUES(NULL,'chaochao','123456',1,'15956789874','chaochao@music.com','超超');