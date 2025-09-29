unit UnitArticleBMI2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormArticleBMI2 = class(TForm)
    Shape2: TShape;
    Shape1: TShape;
    Label2: TLabel;
    Label4: TLabel;
    Image1: TImage;
    Label5: TLabel;
//    Timer1: TTimer;
    LabelNama: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Shape3: TShape;
    LabelHome: TLabel;
//    procedure Tampil;
    procedure Label2Click(Sender: TObject);
    procedure Label4Clik(Sender: TObject);
//    procedure Timer1Timer(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArticleBMI2: TFormArticleBMI2;
  muncul: integer;
  pesan: string;

implementation

uses UnitArticleBMI, UnitArticleBMI3, UnitSignOut, UnitBMI, UnitMenu;

{$R *.dfm}

{procedure TFormArticleBMI2.Tampil;
begin
  pesan:=Label5.Caption;
  Label5.Caption:='';
  muncul:=0;
  timer1.Enabled:=true;
end;}

procedure TFormArticleBMI2.Label2Click(Sender: TObject);
begin
  FormArticleBMI2.Hide;
  FormArticleBMI1.Show;
end;

procedure TFormArticleBMI2.Label4Clik(Sender: TObject);
begin
  FormArticleBMI2.Hide;
  FormArticleBMI3.Show;
end;

{procedure TFormArticleBMI2.Timer1Timer(Sender: TObject);
begin
  Muncul := Muncul+1;
  Label5.Caption := Label5.Caption+Pesan[Muncul];
  if (muncul=Length(pesan)) then
  begin
    Timer1.Enabled:=false;
  end;
end;}

procedure TFormArticleBMI2.Label1Click(Sender: TObject);
begin
  FormArticleBMI2.Hide;
  FormSignOut.Show;
end;

procedure TFormArticleBMI2.Label3Click(Sender: TObject);
begin
  FormArticleBMI2.Hide;
  FormBMI.Show;
end;

procedure TFormArticleBMI2.LabelHomeClick(Sender: TObject);
begin
  FormArticleBMI2.Hide;
  FormMenu.Show;
end;

end.
