----�鿴��ǰ���ݿ����������
--select * from Sys.sysservers
----or
--SELECT @@servername AS �ɷ�������,serverproperty('servername') AS �·�������

--exec sp_helpserver;

----�޸����ݿ����������
----sp_dropserver 'old_servername'
----sp_addserver 'new_servername','local'
----sp_dropserver 'DESKTOP-9VOBQJE\MSSQLSERVER2'
----sp_addserver 'bit-pc','local'

--EXEC sp_dropserver  @server  = 'DESKTOP-9VOBQJE'
--EXEC sp_addserver  @server  =  'bit-pc',  @local  =  'LOCAL' 


----�������ݿ���������޸����

CREATE DATABASE workstudy
go

--ϵ��
CREATE TABLE xb(
	xdh varchar(10) not null constraint pk_xb PRIMARY KEY (xdh),
	xmc char(15) not null
)

--ѧУ��λ
CREATE TABLE dw(
	dwid varchar(10) not null constraint pk_dw PRIMARY KEY,
	mc varchar(30) not null,
	lx char(10) not null,
	tel char(15) not null,
	addr varchar(20) not null,
	pcp char(10),		--������
	pcptel char(15)
)

--ѧ������
CREATE TABLE xs(
	xh char(10) not null constraint pk_xs PRIMARY KEY,
	xm char(10) not null,
	xdh varchar(10) not null constraint fk_xs_xdh FOREIGN KEY (xdh) REFERENCES xb(xdh),
	csrq date,
	xb char(2),
	tel char(15),
)

--¼��
CREATE TABLE ly(
	dwid varchar(10) not null constraint fk_ly_dwid FOREIGN KEY (dwid) REFERENCES dw(dwid),
	xh char(10) not null constraint fk_ly_xh FOREIGN KEY (xh) REFERENCES xs(xh),
						constraint pk_ly PRIMARY KEY (dwid,xh)

)
--exec sp_helpconstraint 'ly'; 

--���п���
CREATE TABLE creditcard(
	xh char(10) not null constraint fk_card_xh FOREIGN KEY (xh) REFERENCES xs(xh),
	cardnum varchar(20) not null --,
	constraint pk_card PRIMARY KEY-- (cardnum,xh)		--��������
	---ʹ������������totalmoney��������cardnum����ʾ�Ҳ����������ߺ�ѡ����ԭ��δ֪
	
)
--exec sp_helpconstraint 'creditcard'; 
--drop table totalmoney;
--drop table creditcard;

--ֵ��¼��
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
--�ܽ��
--CREATE TABLE totalmoney(
--	xh char(10) not null constraint fk_tm_xh FOREIGN KEY (xh) REFERENCES xs(xh),
--	tm numeric(8,2) not null,
--	cnum varchar(20) not null constraint fk_tm_cnum FOREIGN KEY(cnum) REFERENCES creditcard(cardnum)
--)
--select * from totalmoney;


--select datepart(hh,GETDATE()) as Сʱ,
--		datepart(mi,GETDATE()) as ����,
--		datepart(ss,GETDATE()) as ��
--select datediff(hh,'10:20:35','8:20:30');

--���ݲ���
insert into xb values ('001','��ѧ');
insert into xb values ('002','�������');
insert into xb values ('003','�����');
insert into xb values ('004','��е�복��');
insert into xb values ('005','��ѧ�뻯��');

insert into dw values ('00111','ѧ����������',		'У��','81384704','����¥101','���Ӻ�','18811001100');
insert into dw values ('00112','ѧ��������',		'У��','81384719','����԰B201','����','18811001234');
insert into dw values ('00113','У��ί�칫��',		'У��','81384720','����԰B215','��īͫ','18811054613');
insert into dw values ('20121','�����Ժ�칫��',	'Ժ��','81384704','ѧ��404','�Ҹ��','18811008952');
insert into dw values ('20112','�����ѧԺ�칫',	'Ժ��','81384704','����A215','·����','18811001121');
--select * from dw;
update dw set mc='�����ѧԺ�칫��' where dwid='20112';

insert into xs values ('1120170001','��һɽ','001','1999-01-01','��','18810011001');
insert into xs values ('1120170002','�Ŷ�','005','1999-01-04','Ů','18810011002');
insert into xs values ('1120170003','����','002','1999-02-01','��','18810011003');
insert into xs values ('1120170004','����','004','1999-03-04','��','18810011004');
insert into xs values ('1120170005','����','002','1999-05-05','��','18810011005');
insert into xs values ('1120170006','������','001','1999-06-04','Ů','18810011006');

insert into xs values ('1120170007','��һ��','003','1999-08-07','��','18810012001');
insert into xs values ('1120170008','����Ѿ','001','1999-05-04','Ů','18810012002');
insert into xs values ('1120170009','����','005','1999-01-23','��','18810012003');
insert into xs values ('1120170010','����','002','1999-06-23','��','18810012004');
insert into xs values ('1120170011','����','004','1999-08-07','Ů','18810012005');
insert into xs values ('1120170012','����','003','1999-03-21','Ů','18810012006');

insert into xs values ('1120170013','��һ��','003','1998-11-28','Ů','18810013001');
insert into xs values ('1120170014','���','005','1999-06-08','��','18810013002');
insert into xs values ('1120170015','����','001','1999-07-19','��','18810013003');
insert into xs values ('1120170016','��˹','004','1998-12-06','Ů','18810013004');
insert into xs values ('1120170017','����','002','1999-04-16','��','18810013005');
insert into xs values ('1120170018','��С��','002','1999-01-29','Ů','18810013006');

insert into xs values ('1120170019','����','002','1999-09-26','Ů','18810014001');
insert into xs values ('1120170020','�ܶ�','001','1999-03-05','Ů','18810014002');
insert into xs values ('1120170021','����','005','1999-08-02','��','18810014003');
insert into xs values ('1120170022','��˼','004','1999-06-06','Ů','18810014004');
insert into xs values ('1120170023','����','005','1999-05-03','��','18810014005');
insert into xs values ('1120170024','����','003','1999-03-25','Ů','18810014006');

insert into xs values ('1120170025','����','005','1999-09-27','Ů','18810015001');
insert into xs values ('1120170026','����','001','1999-04-26','Ů','18810015002');
insert into xs values ('1120170027','����','003','1999-08-23','��','18810015003');
insert into xs values ('1120170028','����','001','1998-12-21','��','18810015004');
insert into xs values ('1120170029','����','005','1999-03-18','Ů','18810015005');
insert into xs values ('1120170030','������','004','1999-05-04','Ů','18810015006');


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

insert into record values('00113','1120170029',GETDATE(),10.5,15,'��ˮ');
insert into record values('00111','1120170029',GETDATE(),15,18,'�ӵ���');
insert into record values('00111','1120170027',GETDATE(),15,18,'�ͱ�ֽ');
insert into record values('00111','1120170029',GETDATE(),18,20,'ֵ��');
insert into record values('00113','1120170027','2019-12-13',8.0,20,'ֵ��');

insert into xs values ('2120170001','�о���A','005','1997-03-18','Ů','18820015005')
insert into creditcard values ('2120170001','621670000000210001');
insert into ly values ('00111','2120170001');
insert into record values ('00111','2120170001',getdate(),8,20,'��ﱸ+ֵ��');
--select * from recordA;

--select GETDATE();

----��Ҫ�õ������
--select xdh'ϵ����', xmc'ϵ��' from xb order by xdh;

--select dwid'��λ���', mc'��λ����', lx'����',tel'�칫�ҵ绰',addr'��ַ', pcp'������', pcptel'��������ϵ��ʽ'
--from dw 
--order by dwid;

--select xb.xdh'ϵ����',xb.xmc'ϵ��', xh'ѧ��', xm'����', csrq'��������', xb'�Ա�', tel'��ϵ��ʽ'
--from xb,xs
--where xs.xdh=xb.xdh;

--select ly.xh'ѧ��',xs.xm'¼��ѧ��',dw.mc'¼�õ�λ',dw.pcp'������',dw.addr'��λ��ַ',dw.tel'��ϵ�绰'
--from dw,xs,ly
--where ly.xh=xs.xh and ly.dwid=dw.dwid;

--select * from record ;

--select distinct rq ����, xs.xm ����, xs.xh ѧ��, xs.tel ��ϵ��ʽ, dw.mc ��λ����, checkin 'ǩ��ʱ��-checkin'
--	, checkout 'ǩ��ʱ��-checkout', whatwork '��������-whatwork' 
--from record,dw,xs
--where record.dwid='00111' and xs.xh=record.xh and record.dwid=dw.dwid 

insert into xb values ( '','' );
insert into dw values ( '','' );
insert into xs values ( '','' );
insert into ly values ( '','' );
insert into creditcard values ( '','' );

--update xb set xmc='���Ը���' where xdh='123'; 
--delete xb where xdh='123';

-------------------
--alter table xs drop column credit;

--select * from record;

----����ʱ��ֽ�10h

--select 5/10,5%10

--select xh,
--	sum(case when )
--from record
--group by xh;

--select xh,
--	sum(case   
--			when record.xh < '2000000000' then (checkout-checkin)*13 
--			--when record.xh > '2000000000' then 800+( sum(checkout-checkin)%10 )  	
--			else 0 end ) ���

--from record
--group by xh

-------------------------------------------�����м���ͼ���ߣ�����ʱ��ͽ��

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
--	sum(checkout-checkin)��ʱ��
--from record
--group by xh;
--go
--select * from view_money select view_money.xh ѧ��,xs.xm ����, xs.tel ��ϵ��ʽ ,��ʱ��,
--	(case when view_money.xh<'2000000000' then ��ʱ��*13 
--		  when view_money.xh>'2000000000' then 800 + ( ��ʱ��%10)*13 
--		  else 0 end )���,
--		  cardnum ���п���
--from view_money, creditcard, xs
--where creditcard.xh=view_money.xh and xs.xh=view_money.xh

--select * from view_money

--select *from creditcard where xh='1120170029'or xh='1120170027' 








/*--------------------------------------*/
--------������
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