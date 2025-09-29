unit UnitArticleBMR2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormArticleBMR2 = class(TForm)
    Shape2: TShape;
    Label1: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    Image1: TImage;
    Label4: TLabel;
//    Timer1: TTimer;
    LabelNama: TLabel;
    Label2: TLabel;
    Shape3: TShape;
    Label5: TLabel;
    LabelHome: TLabel;
//    procedure Tampil;
    procedure Label1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
//    procedure Timer1Timer(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArticleBMR2: TFormArticleBMR2;
  muncul: integer;
  pesan: string;

implementation

uses UnitArticleBMR1, UnitArticleBMR3, UnitSignOut, UnitMenu, UnitBMR;

{$R *.dfm}

{procedure TFormArticleBMR2.Tampil;
begin
  pesan:=Label4.Caption;
  Label4.Caption:='';
  muncul:=0;
  timer1.Enabled:=true;
end;}

procedure TFormArticleBMR2.Label1Click(Sender: TObject);
begin
   FormArticleBMR2.Hide;
   FormArticleBMR1.Show;
end;

procedure TFormArticleBMR2.Label3Click(Sender: TObject);
begin
  FormArticleBMR2.Hide;
  FormArticleBMR3.Show;
//  FormArticleBMR3.Tampil;
end;

{procedure TFormArticleBMR2.Timer1Timer(Sender: TObject);
var
  pesan1: string;
begin
  Muncul := Muncul+1;
  Label4.Caption := Label4.Caption+Pesan[Muncul];
  if (muncul=Length(pesan)) then
  begin
    Timer1.Enabled:=false;
  end;
end;}


procedure TFormArticleBMR2.Label2Click(Sender: TObject);
begin
  FormArticleBMR2.Hide;
  FormSignOut.Show;
end;

procedure TFormArticleBMR2.LabelHomeClick(Sender: TObject);
begin
  FormArticleBMR2.Hide;
  FormMenu.Show;
end;

procedure TFormArticleBMR2.Label5Click(Sender: TObject);
begin
FormArticleBMR2.Hide;
FormBMR.Show;
end;

end.
