unit UnitArticleBMR1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormArticleBMR1 = class(TForm)
    Shape1: TShape;
    Label3: TLabel;
    Image1: TImage;
    Label1: TLabel;
//    Timer1: TTimer;
    LabelNama: TLabel;
    Label2: TLabel;
    Shape3: TShape;
    Label4: TLabel;
    LabelHome: TLabel;
//    procedure Tampil;
    procedure Label3Click(Sender: TObject);
//    procedure Timer1Timer(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArticleBMR1: TFormArticleBMR1;
  muncul: integer;
  pesan: string;

implementation

uses UnitArticleBMR2, UnitSignOut, UnitBMR, UnitMenu;

{$R *.dfm}

{procedure TFormArticleBMR1.Tampil;
begin
  pesan:=Label1.Caption;
  Label1.Caption:='';
  muncul:=0;
  timer1.Enabled:=true;
end;}

procedure TFormArticleBMR1.Label3Click(Sender: TObject);
begin
  FormArticleBMR1.hide;
  FormArticleBMR2.show;
//  FormArticleBMR2.Tampil;
end;

{procedure TFormArticleBMR1.Timer1Timer(Sender: TObject);
var
  pesan1: string;
begin
  Muncul := Muncul+1;
  Label1.Caption := Label1.Caption+Pesan[Muncul];
  if (muncul=Length(pesan)) then
  begin
    Timer1.Enabled:=false;
  end;
end;}


procedure TFormArticleBMR1.Label2Click(Sender: TObject);
begin
  FormArticleBMR1.Hide;
  FormSignOut.Show;
end;

procedure TFormArticleBMR1.Label4Click(Sender: TObject);
begin
  FormArticleBMR1.Hide;
  FormBMR.Show;
end;

procedure TFormArticleBMR1.LabelHomeClick(Sender: TObject);
begin
  FormArticleBMR1.Hide;
  FormMenu.Show;
end;

end.
