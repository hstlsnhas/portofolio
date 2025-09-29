unit UnitArticleBMI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormArticleBMI1 = class(TForm)
    Shape1: TShape;
    Label1: TLabel;
    Image1: TImage;
    Label3: TLabel;
//    Timer1: TTimer;
    LabelNama: TLabel;
    Label2: TLabel;
    Shape2: TShape;
    Label4: TLabel;
    LabelHome: TLabel;
//    procedure Tampil;
    procedure Label1Click(Sender: TObject);
//    procedure Timer1Timer(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArticleBMI1: TFormArticleBMI1;
  muncul: integer;
  pesan: string;

implementation

uses UnitArticleBMI2,UnitLogIn, UnitSignOut, UnitBMI, UnitMenu;

{$R *.dfm}

{procedure TFormArticleBMI1.Tampil;
begin
  pesan:=Label3.Caption;
  Label3.Caption:='';
  muncul:=0;
  timer1.Enabled:=true;
end;}

procedure TFormArticleBMI1.Label1Click(Sender: TObject);
begin
  FormArticleBMI1.Hide;
  FormArticleBMI2.Show;
//  FormArticleBMI2.Tampil;
end;

{procedure TFormArticleBMI1.Timer1Timer(Sender: TObject);
var
  pesan1: string;
begin
  Muncul := Muncul+1;
  Label3.Caption := Label3.Caption+Pesan[Muncul];
  if (muncul=Length(pesan)) then
  begin
    Timer1.Enabled:=false;
  end;
end;}



procedure TFormArticleBMI1.LabelHomeClick(Sender: TObject);
begin
  FormArticleBMI1.Hide;
  FormMenu.Show;
end;

procedure TFormArticleBMI1.Label4Click(Sender: TObject);
begin
  FormBMI.Show;
  FormArticleBMI1.Hide;
end;

procedure TFormArticleBMI1.Label2Click(Sender: TObject);
begin
  FormArticleBMI1.Hide;
  FormSignOut.Show;
end;

end.
