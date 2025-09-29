unit UnitArticleBMR3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormArticleBMR3 = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    Label5: TLabel;
//    Timer1: TTimer;
    LabelNama: TLabel;
    Label2: TLabel;
    LabelHome: TLabel;
//    Procedure Tampil;
    procedure Label4Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
//    procedure Timer1Timer(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArticleBMR3: TFormArticleBMR3;
  muncul: integer;
  pesan: string;

implementation

uses UnitBMR, UnitArticleBMR2, UnitSignOut, UnitMenu;

{$R *.dfm}

{procedure TFormArticleBMR3.Tampil;
begin
  pesan:=Label5.Caption;
  Label5.Caption:='';
  muncul:=0;
  timer1.Enabled:=true;
end;}

procedure TFormArticleBMR3.Label4Click(Sender: TObject);
begin
  FormArticleBMR3.Hide;
  FormBMR.Show;
end;

procedure TFormArticleBMR3.Label3Click(Sender: TObject);
begin
  FormArticleBMR3.Hide;
  FormArticleBMR2.Show;
end;

{procedure TFormArticleBMR3.Timer1Timer(Sender: TObject);
var
  pesan1: string;
begin
  Muncul := Muncul+1;
  Label5.Caption := Label5.Caption+Pesan[Muncul];
  if (muncul=Length(pesan)) then
  begin
    Timer1.Enabled:=false;
  end;
end;}

procedure TFormArticleBMR3.Label2Click(Sender: TObject);
begin
  FormArticleBMR3.Hide;
  FormSignOut.Show;
end;

procedure TFormArticleBMR3.LabelHomeClick(Sender: TObject);
begin
  FormArticleBMR3.Hide;
  FormMenu.Show;
end;

end.
