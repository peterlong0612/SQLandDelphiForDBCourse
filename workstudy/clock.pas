unit clock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  Tdigitalclock = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Timer1: TTimer;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    labelseason: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  digitalclock: Tdigitalclock;
  year,mon,day: word;
implementation

{$R *.dfm}
uses main;
procedure Tdigitalclock.BitBtn1Click(Sender: TObject);
begin
  main.mainwindow.Show;
  self.Close;
end;

procedure Tdigitalclock.Timer1Timer(Sender: TObject);
begin

  DecodeDate(Date,year,mon,day);
  label3.Caption:= Concat(inttostr(year) , '��' , inttostr(mon) , '��' , inttostr(day) , '��');
  //label4.Caption:= inttostr(dayofweek(date));
  label4.Caption:= FormatDateTime('dddd',now);
  label5.Caption:= timetostr(gettime);
  begin
    Case mon of
    1,2,3: labelseason.Caption:= '��' ;
    4,5,6: labelseason.Caption:= '��';
    7,8,9: labelseason.Caption:= '��';
    10,11,12: labelseason.Caption:= '��';
    End;

  end;

  {if (label5.Height+label5.Top<=0) then   //����Ļ
    label5.Top := digitalclock.Height     //
  else
    label5.Top := label5.Top-1;           //��������}
end;

end.
