unit register;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Memo1: TMemo;
    resultlabel: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    //procedure Edit2KeyPress(Sender:TObject; var Key:Char);
    //procedure FormClose(Sender:TObject; var Action:TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses sign_up,main;   //使用窗体sign_up

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  if(self.Edit1.Text='123')and(self.Edit2.Text='123')
      and(self.Edit1.Text<>null) then
  begin
    resultlabel.Caption:='登录成功！';
    //showmessage('登陆成功！');
    main.mainwindow.Show;
    //form1.Close; //加了程序会直接退出
  end
  else begin
        //showmessage('错误的用户名或密码！');
        resultlabel.Caption:='错误的用户名或密码！';
        self.Edit1.Text:='';
        self.Edit2.Text:='';
        self.Edit1.SetFocus;
      end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  form2.Show;
  //form1.Close;
end;


{procedure TForm1.Edit2KeyPress(Sender:TObject; var Key:Char);
begin
  if key= #13 then
  begin
    if(self.Edit1.Text='admin')and(self.Edit2.Text='123456') then
    begin
      showmessage('登陆成功！');
      form1.Close;
      form3.Show;
    end
    else begin
          showmessage('错误的用户名或密码！');
          self.Edit1.Text:='';
          self.Edit2.Text:='';
          self.Edit1.SetFocus;
        end;
  end;
end;}

end.
