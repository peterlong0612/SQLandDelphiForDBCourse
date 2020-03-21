----查看当前数据库服务器名称
--select * from Sys.sysservers
----or
--SELECT @@servername AS 旧服务器名,serverproperty('servername') AS 新服务器名

--exec sp_helpserver;

----修改数据库服务器名称
----sp_dropserver 'old_servername'
----sp_addserver 'new_servername','local'
----sp_dropserver 'DESKTOP-9VOBQJE\MSSQLSERVER2'
----sp_addserver 'bit-pc','local'

--EXEC sp_dropserver  @server  = 'DESKTOP-9VOBQJE'
--EXEC sp_addserver  @server  =  'bit-pc',  @local  =  'LOCAL' 


----重启数据库服务器，修改完成

CREATE DATABASE workstudy
go

--系表
CREATE TABLE xb(
	xdh varchar(10) not null constraint pk_xb PRIMARY KEY (xdh),
	xmc char(15) not null
)

--学校单位
CREATE TABLE dw(
	dwid varchar(10) not null constraint pk_dw PRIMARY KEY,
	mc varchar(30) not null,
	lx char(10) not null,
	tel char(15) not null,
	addr varchar(20) not null,
	pcp char(10),		--负责人
	pcptel char(15)
)

--学生助理
CREATE TABLE xs(
	xh char(10) not null constraint pk_xs PRIMARY KEY,
	xm char(10) not null,
	xdh varchar(10) not null constraint fk_xs_xdh FOREIGN KEY (xdh) REFERENCES xb(xdh),
	csrq date,
	xb char(2),
	tel char(15),
)

--录用
CREATE TABLE ly(
	dwid varchar(10) not null constraint fk_ly_dwid FOREIGN KEY (dwid) REFERENCES dw(dwid),
	xh char(10) not null constraint fk_ly_xh FOREIGN KEY (xh) REFERENCES xs(xh),
						constraint pk_ly PRIMARY KEY (dwid,xh)

)
--exec sp_helpconstraint 'ly'; 

--银行卡号
CREATE TABLE creditcard(
	xh char(10) not null constraint fk_card_xh FOREIGN KEY (xh) REFERENCES xs(xh),
	cardnum varchar(20) not null --,
	constraint pk_card PRIMARY KEY-- (cardnum,xh)		--联合主键
	---使用联合主键，totalmoney建表引用cardnum会提示找不到主键或者候选键，原因未知
	
)
--exec sp_helpconstraint 'creditcard'; 
--drop table totalmoney;
--drop table creditcard;

--值班录入
CREATE TABLE record(
	dwid varchar(10) not null constraint fk_r_dwid FOREIGN KEY (dwid) REFERENCES dw(dwid),
	xh char(10) not null constraint fk_r_xh FOREIGN KEY (xh) REFERENCES xs(xh),
	rq date not null,
	checkin numeric(8,2) not null,
	checkout numeric(8,2) not null,
	whatwork varchar(30),
	constraint pk_r PRIMARY KEY (rq,xh,checkin)
)
--exec sp_helpconstraint  'record';
--drop table recordA;

--select sum((checkout-checkin)*13)
--from record
--where xh < '2000000000'


--alter table recordA add dwid varchar(10) constraint fk_rA_dwid FOREIGN KEY (dwid) REFERENCES dw(dwid);
--select *from record;

--select rq, xs.xm, xs.xh, xs.tel, checkin, checkout, whatwork 
--from recordA, xs
--where recordA.xh=xs.xh
--order by rq;

--exec sp_helpconstraint  'recordB';
--alter table recordB add dwid varchar(10) constraint fk_rB_dwid FOREIGN KEY (dwid) REFERENCES dw(dwid);
--总金额
--CREATE TABLE totalmoney(
--	xh char(10) not null constraint fk_tm_xh FOREIGN KEY (xh) REFERENCES xs(xh),
--	tm numeric(8,2) not null,
--	cnum varchar(20) not null constraint fk_tm_cnum FOREIGN KEY(cnum) REFERENCES creditcard(cardnum)
--)
--select * from totalmoney;


--select datepart(hh,GETDATE()) as 小时,
--		datepart(mi,GETDATE()) as 分钟,
--		datepart(ss,GETDATE()) as 秒
--select datediff(hh,'10:20:35','8:20:30');

--数据插入
insert into xb values ('001','法学');
insert into xb values ('002','人文社科');
insert into xb values ('003','计算机');
insert into xb values ('004','机械与车辆');
insert into xb values ('005','化学与化工');

insert into dw values ('00111','学生事务中心',		'校级','81384704','行政楼101','楚子航','18811001100');
insert into dw values ('00112','学生工作部',		'校级','81384719','至善园B201','凯撒','18811001234');
insert into dw values ('00113','校团委办公室',		'校级','81384720','至善园B215','陈墨瞳','18811054613');
insert into dw values ('20121','睿信书院办公室',	'院级','81384704','学服404','芬格尔','18811008952');
insert into dw values ('20112','计算机学院办公',	'院级','81384704','至善A215','路明非','18811001121');
--select * from dw;
update dw set mc='计算机学院办公室' where dwid='20112';

insert into xs values ('1120170001','张一山','001','1999-01-01','男','18810011001');
insert into xs values ('1120170002','张二','005','1999-01-04','女','18810011002');
insert into xs values ('1120170003','张三','002','1999-02-01','男','18810011003');
insert into xs values ('1120170004','张四','004','1999-03-04','男','18810011004');
insert into xs values ('1120170005','张武','002','1999-05-05','男','18810011005');
insert into xs values ('1120170006','张六六','001','1999-06-04','女','18810011006');

insert into xs values ('1120170007','王一宝','003','1999-08-07','男','18810012001');
insert into xs values ('1120170008','王二丫','001','1999-05-04','女','18810012002');
insert into xs values ('1120170009','王三','005','1999-01-23','男','18810012003');
insert into xs values ('1120170010','王四','002','1999-06-23','男','18810012004');
insert into xs values ('1120170011','王五','004','1999-08-07','女','18810012005');
insert into xs values ('1120170012','王六','003','1999-03-21','女','18810012006');

insert into xs values ('1120170013','李一梧','003','1998-11-28','女','18810013001');
insert into xs values ('1120170014','李二','005','1999-06-08','男','18810013002');
insert into xs values ('1120170015','李三','001','1999-07-19','男','18810013003');
insert into xs values ('1120170016','李斯','004','1998-12-06','女','18810013004');
insert into xs values ('1120170017','李武','002','1999-04-16','男','18810013005');
insert into xs values ('1120170018','李小六','002','1999-01-29','女','18810013006');

insert into xs values ('1120170019','周依','002','1999-09-26','女','18810014001');
insert into xs values ('1120170020','周二','001','1999-03-05','女','18810014002');
insert into xs values ('1120170021','周三','005','1999-08-02','男','18810014003');
insert into xs values ('1120170022','周思','004','1999-06-06','女','18810014004');
insert into xs values ('1120170023','周武','005','1999-05-03','男','18810014005');
insert into xs values ('1120170024','周柳','003','1999-03-25','女','18810014006');

insert into xs values ('1120170025','龙裔','005','1999-09-27','女','18810015001');
insert into xs values ('1120170026','龙儿','001','1999-04-26','女','18810015002');
insert into xs values ('1120170027','龙叁','003','1999-08-23','男','18810015003');
insert into xs values ('1120170028','龙四','001','1998-12-21','男','18810015004');
insert into xs values ('1120170029','龙舞','005','1999-03-18','女','18810015005');
insert into xs values ('1120170030','龙琉璃','004','1999-05-04','女','18810015006');


--select * from xs;

insert into ly values ('00111','1120170001');
insert into ly values ('00111','1120170006');
insert into ly values ('00111','1120170011');
insert into ly values ('00111','1120170016');
insert into ly values ('00111','1120170021');
insert into ly values ('00111','1120170026');
insert into ly values ('00112','1120170002');
insert into ly values ('00112','1120170007');
insert into ly values ('00112','1120170012');
insert into ly values ('00112','1120170017');
insert into ly values ('00113','1120170022');
insert into ly values ('00113','1120170027');
insert into ly values ('20121','1120170003');
insert into ly values ('20121','1120170008');
insert into ly values ('20121','1120170013');
insert into ly values ('20121','1120170018');
insert into ly values ('20112','1120170004');
insert into ly values ('20112','1120170014');
insert into ly values ('20112','1120170024');
insert into ly values ('20112','1120170029');
--select *from ly;

insert into creditcard values ('1120170001','621670000000100001');
insert into creditcard values ('1120170002','621670000000100002');
insert into creditcard values ('1120170003','621670000000100003');
insert into creditcard values ('1120170004','621670000000100004');
insert into creditcard values ('1120170005','621670000000100005');
insert into creditcard values ('1120170006','621670000000100006');

insert into creditcard values ('1120170007','621670000000100007');
insert into creditcard values ('1120170008','621670000000100008');
insert into creditcard values ('1120170009','621670000000100009');
insert into creditcard values ('1120170010','621670000000100010');
insert into creditcard values ('1120170011','621670000000100011');
insert into creditcard values ('1120170012','621670000000100012');

insert into creditcard values ('1120170013','621670000000100013');
insert into creditcard values ('1120170014','621670000000100014');
insert into creditcard values ('1120170015','621670000000100015');
insert into creditcard values ('1120170016','621670000000100016');
insert into creditcard values ('1120170017','621670000000100017');
insert into creditcard values ('1120170018','621670000000100018');

insert into creditcard values ('1120170019','621670000000100019');
insert into creditcard values ('1120170020','621670000000100020');
insert into creditcard values ('1120170021','621670000000100021');
insert into creditcard values ('1120170022','621670000000100022');
insert into creditcard values ('1120170023','621670000000100023');
insert into creditcard values ('1120170024','621670000000100024');

insert into creditcard values ('1120170025','621670000000100025');
insert into creditcard values ('1120170026','621670000000100026');
insert into creditcard values ('1120170027','621670000000100027');
insert into creditcard values ('1120170028','621670000000100028');
insert into creditcard values ('1120170029','621670000000100029');
insert into creditcard values ('1120170030','621670000000100030');
--select * from creditcard;

insert into record values('00113','1120170029',GETDATE(),10.5,15,'划水');
insert into record values('00111','1120170029',GETDATE(),15,18,'接电线');
insert into record values('00111','1120170027',GETDATE(),15,18,'送报纸');
insert into record values('00111','1120170029',GETDATE(),18,20,'值班');
insert into record values('00113','1120170027','2019-12-13',8.0,20,'值班');

insert into xs values ('2120170001','研究生A','005','1997-03-18','女','18820015005')
insert into creditcard values ('2120170001','621670000000210001');
insert into ly values ('00111','2120170001');
insert into record values ('00111','2120170001',getdate(),8,20,'活动筹备+值班');
--select * from recordA;

--select GETDATE();

----需要用到的语句
--select xdh'系代号', xmc'系名' from xb order by xdh;

--select dwid'单位编号', mc'单位名称', lx'类型',tel'办公室电话',addr'地址', pcp'负责人', pcptel'负责人联系方式'
--from dw 
--order by dwid;

--select xb.xdh'系代号',xb.xmc'系名', xh'学号', xm'姓名', csrq'出生日期', xb'性别', tel'联系方式'
--from xb,xs
--where xs.xdh=xb.xdh;

--select ly.xh'学号',xs.xm'录用学生',dw.mc'录用单位',dw.pcp'负责人',dw.addr'单位地址',dw.tel'联系电话'
--from dw,xs,ly
--where ly.xh=xs.xh and ly.dwid=dw.dwid;

--select * from record ;

--select distinct rq 日期, xs.xm 姓名, xs.xh 学号, xs.tel 联系方式, dw.mc 单位名称, checkin '签入时间-checkin'
--	, checkout '签出时间-checkout', whatwork '工作内容-whatwork' 
--from record,dw,xs
--where record.dwid='00111' and xs.xh=record.xh and record.dwid=dw.dwid 

insert into xb values ( '','' );
insert into dw values ( '','' );
insert into xs values ( '','' );
insert into ly values ( '','' );
insert into creditcard values ( '','' );

--update xb set xmc='测试更新' where xdh='123'; 
--delete xb where xdh='123';

-------------------
--alter table xs drop column credit;

--select * from record;

----假设时间分界10h

--select 5/10,5%10

--select xh,
--	sum(case when )
--from record
--group by xh;

--select xh,
--	sum(case   
--			when record.xh < '2000000000' then (checkout-checkin)*13 
--			--when record.xh > '2000000000' then 800+( sum(checkout-checkin)%10 )  	
--			else 0 end ) 金额

--from record
--group by xh

-------------------------------------------借助中间试图工具，计算时间和金额

--if 
--exists (select *from sys.views where views.name='view_money' )
--begin
--	drop view view_money
--end;

----select *from sys.views
--go
--create view view_money
--as
--select xh,
--	sum(checkout-checkin)总时长
--from record
--group by xh;
--go
--select * from view_money select view_money.xh 学号,xs.xm 姓名, xs.tel 联系方式 ,总时长,
--	(case when view_money.xh<'2000000000' then 总时长*13 
--		  when view_money.xh>'2000000000' then 800 + ( 总时长%10)*13 
--		  else 0 end )金额,
--		  cardnum 银行卡号
--from view_money, creditcard, xs
--where creditcard.xh=view_money.xh and xs.xh=view_money.xh

--select * from view_money

--select *from creditcard where xh='1120170029'or xh='1120170027' 








/*--------------------------------------*/
--------计算金额
--go
--create function dbo.func_calmoney(  @ybup numeric(8,2), )
--returns table
--as
--	if (  ) 
--	begin
--		return select	
--	end
--	else
--	begin

--	end

--go


--select datepart(hh,'12:22:30');