﻿unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, ExtCtrls, DB, ADODB, Grids, DBGrids,
  ComCtrls;

type
  Tmainwindow = class(TForm)
    ADOConnection1: TADOConnection;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    shoudong1: TMenuItem;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    pagesearch: TTabSheet;
    pageinsert: TTabSheet;
    pageupdate: TTabSheet;
    pagedelete: TTabSheet;
    pagemanual: TTabSheet;
    PageControlinsert: TPageControl;
    insertxb: TTabSheet;
    insertxb_panel: TPanel;
    insertxb_label_xdh: TLabel;
    insertxb_label_xmc: TLabel;
    insertxb_edit1: TEdit;
    insertdw: TTabSheet;
    insertxb_edit2: TEdit;
    insertxb_btn1: TButton;
    insertxb_ListBox1: TListBox;
    insertdw_btn1: TButton;
    insertdw_dwid: TEdit;
    insertdw_mc: TEdit;
    insertdw_label1: TLabel;
    insertdw_label2: TLabel;
    ListBox1: TListBox;
    insertdw_lx: TEdit;
    insertdw_tel: TEdit;
    insertdw_addr: TEdit;
    insertdw_pcp: TEdit;
    insertdw_pcptel: TEdit;
    insertdw_label3: TLabel;
    insertdw_label4: TLabel;
    insertdw_label5: TLabel;
    insertdw_label6: TLabel;
    insertdw_label7: TLabel;
    insertxs: TTabSheet;
    insertly: TTabSheet;
    insertcard: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    pagerecord: TTabSheet;
    insertxs_label1: TLabel;
    insertxs_label2: TLabel;
    insertxs_label3: TLabel;
    insertxs_label4: TLabel;
    insertxs_label6: TLabel;
    insertxs_xm: TEdit;
    insertxs_xdh: TEdit;
    insertxs_csrq: TEdit;
    insertxs_tel: TEdit;
    insertxs_btn1: TBitBtn;
    insertly_btn1: TBitBtn;
    insertly_dwid: TEdit;
    insertly_xh: TEdit;
    insertly_label1: TLabel;
    insertly_label2: TLabel;
    insertcard_btn1: TBitBtn;
    insertcard_xh: TEdit;
    insertcard_label1: TLabel;
    insertcard_num: TEdit;
    insertcard_label2: TLabel;
    insertxs_xb: TRadioGroup;
    Panel5: TPanel;
    DDLRichEdit: TRichEdit;
    DDL_btn1: TBitBtn;
    DDL_btn2: TBitBtn;
    DDL_btn3: TBitBtn;
    DDL_btn4: TBitBtn;
    DDL_btn5: TBitBtn;
    DDL_btn6: TBitBtn;
    DDL_btn7: TBitBtn;
    Panel6: TPanel;
    Panel7: TPanel;
    update_tablename: TComboBox;
    update_Label1: TLabel;
    update_columnname: TEdit;
    update_newvalue: TEdit;
    update_condition: TEdit;
    update_Label2: TLabel;
    update_Label3: TLabel;
    update_Label4: TLabel;
    update_btn1: TBitBtn;
    Panel8: TPanel;
    delete_Label1: TLabel;
    delete_tablename: TComboBox;
    delete_condition: TEdit;
    delete_btn1: TBitBtn;
    delete_Label2: TLabel;
    N6: TMenuItem;
    Panel9: TPanel;
    recordsearch_dw: TComboBox;
    recordselect_Label1: TLabel;
    recordinsert_xh: TEdit;
    recordinsert_dw: TComboBox;
    recordinsert_date: TEdit;
    recordinsert_cout: TEdit;
    recordinsert_whatwork: TEdit;
    recordinsert_cin: TEdit;
    recordinsert_Label: TLabel;
    recordLabel_xh: TLabel;
    recordLabel_date: TLabel;
    recordLabel_cin: TLabel;
    recordLabel_cout: TLabel;
    recordLabel_whatwork: TLabel;
    recordLabel_dateformat: TLabel;
    record_btn1: TBitBtn;
    Label1: TLabel;
    cal_money: TTabSheet;
    Panel10: TPanel;
    benkebox: TGroupBox;
    yanbobox: TGroupBox;
    benkemult: TEdit;
    yanboplus: TEdit;
    yanbolabel1: TLabel;
    benkelabel1: TLabel;
    yanbolabel2: TLabel;
    yanboup: TEdit;
    money_btn1: TBitBtn;
    Panel11: TPanel;
    Panel12: TPanel;
    sqlmessageList: TListBox;
    insertxs_xh: TEdit;
    procedure N12Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure shoudong1Click(Sender: TObject);
    procedure insertxb_btn1Click(Sender: TObject);
    procedure PageControlinsertChange(Sender: TObject);
    procedure insertdw_btn1Click(Sender: TObject);
    procedure insertxs_btn1Click(Sender: TObject);
    procedure insertxs_xbClick(Sender: TObject);
    procedure insertly_btn1Click(Sender: TObject);
    procedure insertcard_btn1Click(Sender: TObject);
    procedure DDL_btn1Click(Sender: TObject);
    procedure DDL_btn2Click(Sender: TObject);
    procedure DDL_btn3Click(Sender: TObject);
    procedure DDL_btn4Click(Sender: TObject);
    procedure DDL_btn5Click(Sender: TObject);
    procedure DDL_btn6Click(Sender: TObject);
    procedure DDL_btn7Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure update_btn1Click(Sender: TObject);
    procedure delete_btn1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure recordsearch_dwChange(Sender: TObject);
    procedure record_btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure money_btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainwindow: Tmainwindow;
  xs_xb:string;


implementation

{$R *.dfm}

uses clock, register, selectform;




procedure Tmainwindow.DDL_btn1Click(Sender: TObject);
begin
  DDLRichEdit.CopyToClipboard;
end;

procedure Tmainwindow.DDL_btn2Click(Sender: TObject);
begin
  DDLRichEdit.CutToClipboard;
end;

procedure Tmainwindow.DDL_btn3Click(Sender: TObject);
begin
  DDLRichEdit.PasteFromClipboard;
end;

procedure Tmainwindow.DDL_btn4Click(Sender: TObject);
begin
  DDLRichEdit.SelText:='';
end;

procedure Tmainwindow.DDL_btn5Click(Sender: TObject);             //撤销
begin
  DDLRichEdit.Undo;
end;

procedure Tmainwindow.DDL_btn6Click(Sender: TObject);
begin
  DDLRichEdit.HideSelection:=false;       //选中文本反底显示
  DDLRichEdit.SelectAll;
end;

procedure Tmainwindow.DDL_btn7Click(Sender: TObject);          //DDL/SQL手动
var str:string;

begin
  if DDLRichEdit.Text<>'' then
  begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    str := DDLRichEdit.Text;
    ADOQuery1.SQL.Add(str);
    ADOQuery1.ExecSQL;
    pagecontrol1.ActivePage:=pagesearch;          //转到查询页
    ADOQuery1.Active := True;
    sqlmessagelist.clear;
    sqlmessagelist.items.add('仿DDL解析/SQL执行成功！');
  end
end;

procedure Tmainwindow.update_btn1Click(Sender: TObject);        //更新
var
str:string;
                                    // '+''''+'
begin
  if ((update_tablename.Text <>'') and (update_columnname.Text <>'') and
      (update_newvalue.Text <>'') and (update_condition.Text<>'')  ) then
      begin
        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        str:= 'update '+ update_tablename.Text +' set '+update_columnname.Text +
            '='+''''+update_newvalue.Text +''''+
             ' where '+update_condition.Text +' ; ';
        showmessage(str);
        ADOQuery1.SQL.Add(str);
        ADOQuery1.ExecSQL;
        showmessage('更新成功');
      end
      else
      begin
        showmessage('输入错误，请检查是否有空值');
      end;

end;

procedure Tmainwindow.delete_btn1Click(Sender: TObject);            //删除
var
str:string;
                                    // '+''''+'
begin
  if ((delete_tablename.Text <>'') and (delete_condition.Text<>'')  ) then
      begin
        
        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        str:= ' delete '+ delete_tablename.Text +' where '+ delete_condition.Text +';';
        ADOQuery1.SQL.Add(str);
        ADOQuery1.ExecSQL;
        showmessage('删除成功');
      end
      else
      begin
        showmessage('输入错误，请检查是否有空值');
      end;

end;


procedure Tmainwindow.FormCreate(Sender: TObject);
begin
  pagecontrol1.ActivePage:=pagesearch;           //主页面为查询页
  sqlmessagelist.Clear;
  sqlmessagelist.Items.Add('消息：');
end;

procedure Tmainwindow.insertcard_btn1Click(Sender: TObject);         //插入creditcard
var
  str: string;
  // insert into ly values ( '','' );      '+''''+'
begin
  if ((insertcard_xh.Text <> '') and (insertcard_num.Text <> '')) then
  begin
    //s := insertly_dwid.Text + '  ' + insertly_xh.Text;
    //insertxb_ListBox1.Items.Add(s);
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    str := 'insert into creditcard values ( '+
    ''''+ insertcard_xh.Text + '''' +','+
    ''''+ insertcard_num.Text + ''''
        +')';
    ADOQuery1.SQL.Add(str);
    ADOQuery1.ExecSQL;
  end
  else
  begin
    showmessage('请检查是否有空值或者输入正确的外键值！');
    insertly_dwid.Text := '';
    insertly_xh.Text := '';
  end;

end;

procedure Tmainwindow.insertdw_btn1Click(Sender: TObject);         //插入dw
var
  str: string;

begin
  if ((insertdw_dwid.Text <> '') and (insertdw_mc.Text <> '') and
      (insertdw_lx.Text <> '') and (insertdw_tel.Text <> '') and
      (insertdw_addr.Text <> '')) then
  begin
    //s := insertxb_edit1.Text + '  ' + insertxb_edit2.Text;
    //insertxb_ListBox1.AddItem(s);
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    str := 'insert into dw values ( '+
    ''''+ insertdw_dwid.Text + '''' +','+
    ''''+ insertdw_mc.Text + '''' +','+
    ''''+ insertdw_lx.Text + '''' +','+
    ''''+ insertdw_tel.Text + '''' +','+
    ''''+ insertdw_addr.Text + '''' +','+
    ''''+ insertdw_pcp.Text + '''' +','+
    ''''+ insertdw_pcptel.Text + ''''
        +')';
    ADOQuery1.SQL.Add(str);
    ADOQuery1.ExecSQL;
  end
  else
  begin
    showmessage('不能有空值！');
    insertdw_dwid.Text:='';
    insertdw_mc.Text:='';
    insertdw_lx.Text:='';
    insertdw_tel.Text:='';
    insertdw_addr.Text:='';
    insertdw_pcp.Text:='';
    insertdw_pcptel.Text:='';
  end;

end;

procedure Tmainwindow.insertly_btn1Click(Sender: TObject);       //插入ly
var
  s: string;
  str: string;
  // insert into ly values ( '','' );      '+''''+'
begin
  if ((insertly_dwid.Text <> '') and (insertly_xh.Text <> '')) then
  begin
    s := insertly_dwid.Text + '  ' + insertly_xh.Text;
    //insertxb_ListBox1.Items.Add(s);
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    str := 'insert into ly values ( '+
    ''''+ insertly_dwid.Text + '''' +','+
    ''''+ insertly_xh.Text + ''''
        +')';
    ADOQuery1.SQL.Add(str);
    ADOQuery1.ExecSQL;
  end
  else
  begin
    showmessage('请检查是否有空值或者输入正确的外键值！');
    insertly_dwid.Text := '';
    insertly_xh.Text := '';
  end;

end;

procedure Tmainwindow.insertxb_btn1Click(Sender: TObject);     // 插入xb
var
  s: string;
  str: string;
  // insert into xb values ( '','' );      '+''''+'
begin
  if ((insertxb_edit1.Text <> '') and (insertxb_edit2.Text <> '')) then
  begin
    s := insertxb_edit1.Text + '  ' + insertxb_edit2.Text;
    insertxb_ListBox1.Items.Add(s);
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    str := 'insert into xb values ( '+
    ''''+ insertxb_Edit1.Text + '''' +','+
    ''''+ insertxb_Edit2.Text + ''''
        +')';
    ADOQuery1.SQL.Add(str);
    ADOQuery1.ExecSQL;
  end
  else
  begin
    showmessage('两者都不能为空值！');
    insertxb_edit1.Text := '';
    insertxb_edit2.Text := '';
  end;

end;


procedure Tmainwindow.insertxs_btn1Click(Sender: TObject);          //插入xs
var
//s: string;
str: string;
// insert into xb values ( '','' );      '+''''+'
begin
  if ((insertxs_xh.Text <> '') and (insertxs_xm.Text <> '')
      and (insertxs_xdh.Text <> '') ) then
  begin
    //s := insertxb_edit1.Text + '  ' + insertxb_edit2.Text;
    //insertxb_ListBox1.Items.Add(s);
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    str :=  'insert into xh values ( '+
    ''''+ insertxs_xh.Text + '''' +','+
    ''''+ insertxs_xm.Text + '''' +','+
    ''''+ insertxs_xdh.Text + '''' +','+
    ''''+ insertxs_csrq.Text + '''' +','+
    ''''+ xs_xb + '''' +','+
    ''''+ insertxs_tel.Text + ''''
        +')';
    ADOQuery1.SQL.Add(str);
    ADOQuery1.ExecSQL;
  end
  else
  begin
    showmessage('请检查是否有空值或者输入正确的外键值！');
    insertxs_xh.Text :='';
    insertxs_xm.Text :='';
    insertxs_xdh.Text :='';
    insertxs_csrq.Text :='';
    xs_xb:='';
    insertxs_tel.Text :='';
  end;
end;


procedure Tmainwindow.insertxs_xbClick(Sender: TObject);         //通过Radiobtn获得性别
begin
  if (insertxs_xb.ItemIndex = 0) then
      xs_xb:='男'
  else
      xs_xb:='女';

end;

procedure Tmainwindow.money_btn1Click(Sender: TObject);           //计算金额
var
  bkmult:string;
  ybplus:string;
  ybtimeup:string;
  str_create:string;
  str_selectview:string;
  str_selectall:string;
  str_drop:string;
  str_ex_view:string;                   // '+''''+'
begin
  bkmult:=benkemult.Text;           //val字符串转数值型，trim去除不可见字符
  ybplus:=yanboplus.Text;
  ybtimeup:=yanboup.Text;
  if ( (bkmult<>'')and(ybplus<>'')and(ybtimeup<>'') ) then
  begin
     //'+''''+'
    str_create:=
            '--go '+ #13#10 +
            'create view view_money  '+ #13#10+
            'as '+  #13#10+
            'select xh, '+    #13#10+
            '  sum(checkout-checkin)总时长  '+  #13#10+
            'from record  '+  #13#10+
            'group by xh;   '+  #13#10+
            '--go   ';
     str_selectview:=
            'select * from view_money;  ' ;
     str_selectall:=
            'select view_money.xh 学号, xs.xm 姓名, xs.tel 联系方式 , 总时长,  '+  #13#10+
            '  (case when view_money.xh<'+''''+'2000000000'+''''+' then 总时长*'+ bkmult +#13#10+
            '      when view_money.xh>'+''''+'2000000000'+''''+' then '+ ybplus+' + ( 总时长%'+ybtimeup+')*'+ bkmult + #13#10 +
            '      else 0 end ) 金额,    '+ #13#10+
            '      cardnum 银行卡号  '+ #13#10+
            'from view_money, creditcard, xs   '+   #13#10+
            'where creditcard.xh=view_money.xh and xs.xh=view_money.xh   ;  '+ #13#10+
            'drop view view_money; ';          //debug关键之笔，view_money神奇克星
      str_drop:=
            'drop view view_money ;';

      str_ex_view:=
            ' if  '+  #13#10+
            ' exists (select *from sys.views where views.name = '+''''+' view_money '+''''+' ) '+   #13#10+
            ' begin  ' +   #13#10+
            '   drop view view_money '+  #13#10+
            ' end; ' ;

    PageControl1.ActivePage := pagesearch; // 多选项卡活跃页换成  查询
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    //showmessage(str_ex_view);
    ADOQuery1.SQL.Add(str_ex_view);
    ADOQuery1.ExecSQL;
    //ADOQuery1.Active:=true;
    //ADOQuery1.Open;
    sqlmessagelist.Items.Add('检测到view_money已存在，已成功删除');

    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    //showmessage(str_create);
    ADOQuery1.SQL.Add(str_create);
    ADOQuery1.ExecSQL;
    //ADOQuery1.Active:=true;
    //ADOQuery1.Open;
    sqlmessagelist.Items.Add('创建view_money成功');


    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    //showmessage(str_selectall);
    ADOQuery1.SQL.Add(str_selectall);
    //ADOQuery1.ExecSQL;
    //ADOQuery1.Active:=true;
    ADOQuery1.Open;
    sqlmessagelist.Items.Add('查询成功！');

  end;


end;

procedure Tmainwindow.N8Click(Sender: TObject); // 插入
begin
  PageControl1.ActivePage := pageinsert; // 多选项卡活跃页换成  插入
end;

procedure Tmainwindow.N9Click(Sender: TObject); // 更新
begin
  PageControl1.ActivePage := pageupdate; // 多选项卡活跃页换成  更新
end;

procedure Tmainwindow.PageControl1Change(Sender: TObject);
begin
  if (DDLRichEdit.Tag=0) then
  begin
    DDLRichEDit.Clear;
    DDLRichEdit.lines.Add('输入合法SQL语句后点击SUBNMIT运行，同时跳转查询显示页');
    DDLRichEdit.lines.Add('首次执行时间会较长，请耐心等待...    (*^_^*) ❤');
  end;

end;

procedure Tmainwindow.PageControlinsertChange(Sender: TObject);
begin
  insertxb_ListBox1.Clear;
end;

procedure Tmainwindow.recordsearch_dwChange(Sender: TObject);   //查询值班记录
var
  str:string;
  dwid:string;
begin
  dwid:=recordsearch_dw.Text;
  if (dwid <>'' ) then
  begin
    if (dwid='学生事务中心')  then  dwid := '00111'
    else
    if  (dwid='学生工作部') then  dwid := '00112'
    else
    if  (dwid='校团委办公室') then  dwid := '00113'
    else
    if  (dwid='睿信书院办公室') then   dwid := '20121'
    else
    if  (dwid='计算机学院办公室') then  dwid := '20112'
    else
    begin
        showmessage('数据库不存在该单位组织，请检查！');
        recordsearch_dw.SetFocus;

    end;
  end;
  PageControl1.ActivePage := pagesearch; // 多选项卡活跃页换成查询结果
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  str := 'select '
          + '  rq ' + '''' + '日期-rq' + ''''
          + ', xs.xm' + '''' + '姓名'+ ''''
          + ', xs.xh' + '''' + '学号-xh'+''''
          + ', xs.tel' + '''' + '联系方式'+''''
          + ', dw.mc' + '''' + '单位名称' + ''''
          + ', checkin' + '''' + '签入时间-checkin' + ''''
          + ', checkout' + '''' + '签出时间-checkout' + ''''
          + ', whatwork' + '''' + '工作内容-whatwork' + ''''
          + ' from record,dw,xs '
          +' where xs.xh=record.xh and record.dwid='+dwid +' and record.dwid=dw.dwid '
          +' order by rq;';
  ADOQuery1.SQL.Add(str);
  ADOQuery1.Active := True;
  sqlmessagelist.Clear;
  sqlmessagelist.Items.Add('执行成功！');
  sqlmessagelist.Items.Add('查询单位：'+ recordsearch_dw.Text);
end;


procedure Tmainwindow.record_btn1Click(Sender: TObject);
var
  dwid:string;
  xh:string;
  rq:string;
  cin:string;
  cout:string;
  what:string;
  str:string;                         // '+''''+'
begin
  dwid:=recordinsert_dw.Text;
  if (dwid <>'' ) then
  begin
    if (dwid='学生事务中心')  then  dwid := '00111'
    else
    if  (dwid='学生工作部') then  dwid := '00112'
    else
    if  (dwid='校团委办公室') then  dwid := '00113'
    else
    if  (dwid='睿信书院办公室') then   dwid := '20121'
    else
    if  (dwid='计算机学院办公室') then  dwid := '20112'
    else
    begin
        showmessage('数据库不存在该单位组织，请检查！');
        recordsearch_dw.SetFocus;

    end;
  end;

  xh := recordinsert_xh.Text;
  rq := recordinsert_date.Text;
    if(rq='')then
    begin
      rq:=datetostr(Date);       //当前日期
    end;
  cin := recordinsert_cin.Text;
  cout := recordinsert_cout.Text;
  what := recordinsert_whatwork.Text;

  if ((dwid<>'')and(xh<>'')and(cin<>'')and(cout<>'')) then
  begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  str :=  'insert into record values('+
            '''' + dwid +'''' + ',' +
            '''' + xh +'''' + ',' +
            '''' + rq  +'''' +','+
                   cin +',' +
                   cout +','+
            '''' + what+'''' + ');' ;
  ADOQuery1.SQL.Add(str);
  ADOQuery1.ExecSQL;
  showmessage('录入成功！');
  end
  else
  begin
    showmessage('请检查是否有空值或者输入正确的外键值！');
  end;
end;

procedure Tmainwindow.shoudong1Click(Sender: TObject); // 手动操作
begin
  PageControl1.ActivePage := pagemanual; // 多选项卡活跃页换成  手动
end;

procedure Tmainwindow.N10Click(Sender: TObject);
begin
  PageControl1.ActivePage := pagedelete; // 多选项卡活跃页换成  删除
end;

procedure Tmainwindow.N12Click(Sender: TObject);
begin
  clock.digitalclock.Show;
end;

procedure Tmainwindow.N2Click(Sender: TObject); // 系表

var
  str: string;
  // '+''''+'
begin
  PageControl1.ActivePage := pagesearch; // 多选项卡活跃页换成查询结果
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  str := 'select xdh' + '''' + '系代号-xdh' + ''''
          + ', xmc' + '''' + '系名-xmc' + '''' +
            ' from xb order by xdh;';
  ADOQuery1.SQL.Add(str);
  ADOQuery1.Active := True;
  sqlmessagelist.Clear;
  sqlmessagelist.Items.Add('执行成功！');
end;

procedure Tmainwindow.N3Click(Sender: TObject); // 单位
var
  str: string;
  // '+''''+'
begin
  // panel1.Visible:=True;
  PageControl1.ActivePage := pagesearch; // 多选项卡活跃页换成查询结果
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  str := 'select dwid' + '''' + '单位编号-dwid' + '''' +
        ', mc' + '''' + '单位名称-mc' + '''' +
        ', lx' + '''' + '类型-lx' + '''' +
        ',tel' + '''' + '办公室电话-tel' + '''' +
        ',addr' + '''' + '地址-addr' + '''' +
        ', pcp' + '''' + '负责人-pcp' + '''' +
        ', pcptel' + '''' + '负责人联系方式-pcptel' + '''' +
        ' from dw order by dwid;';
  ADOQuery1.SQL.Add(str);
  ADOQuery1.Active := True;
  sqlmessagelist.Clear;
  sqlmessagelist.Items.Add('执行成功！');
end;

procedure Tmainwindow.N4Click(Sender: TObject); // 学生表
var
  str: string;
  // '+''''+'
begin
  // panel1.Visible:=True;                    //改为使用多选项卡组件pagecontrol
  PageControl1.ActivePage := pagesearch; // 多选项卡活跃页换成查询结果
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  str := 'select xb.xdh' + '''' + '系代号' + '''' +
          ',xb.xmc' + '''' + '系名' + '''' +
          ', xh' + '''' + '学号-xh' + '''' +
          ', xm' + '''' + '姓名-xm' + '''' +
          ', csrq' + '''' + '出生日期-csrq' + '''' +
          ', xb' + '''' + '性别-xb' + '''' +
          ', tel' + '''' + '联系方式-tel' + '''' +
          ' from xb,xs where xs.xdh=xb.xdh;';
  ADOQuery1.SQL.Add(str);
  ADOQuery1.Active := True;
  sqlmessagelist.Clear;
  sqlmessagelist.Items.Add('执行成功！');
end;

procedure Tmainwindow.N5Click(Sender: TObject); // 岗位录用
var
  str: string;
  // '+''''+'
begin
  PageControl1.ActivePage := pagesearch; // 多选项卡活跃页换成查询结果
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  str := 'select ly.xh' + '''' + '学号-xh' + ''''
          + ',xs.xm' + '''' + '录用学生' + '''' +
          ',dw.mc' + '''' + '录用单位' + '''' +
          ',dw.pcp' + '''' + '负责人' + '''' +
          ',dw.addr' + '''' + '单位地址' + '''' +
          ',dw.tel' + '''' + '联系电话' + '''' +
          ' from dw,xs,ly where ly.xh=xs.xh and ly.dwid=dw.dwid;';
  ADOQuery1.SQL.Add(str);
  ADOQuery1.Active := True;
  sqlmessagelist.Clear;
  sqlmessagelist.Items.Add('执行成功！');
end;


procedure Tmainwindow.N6Click(Sender: TObject);
begin
  pagecontrol1.ActivePage:=pagerecord;
end;

end.
