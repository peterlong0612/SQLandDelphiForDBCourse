unit sign_up;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
uses register;
procedure TForm2.BitBtn1Click(Sender: TObject);
begin
  if (self.Edit3.Text = self.Edit4.Text )and(self.Edit3.Text<>'')
        and (length(self.Edit1.Text) <= 8) and (length(self.Edit1.Text) >= 4) then
  begin
    showmessage('注册成功！');
    form2.Close;
  end
  else if (self.Edit3.Text = ''  ) then
  begin
    showmessage('输入密码为空！');
  end
  else
  begin
    showmessage('两次输入密码不一致！');
  end;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
  form2.Close;
end;

{procedure TForm2.FormClose(Sender:TObject; var Action:TCloseAction);
begin
  form1.Show;
end;  }

end.
