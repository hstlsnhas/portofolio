unit UnitArticleLBM2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormArticleLBM2 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    Image1: TImage;
    Label1: TLabel;
//    Timer1: TTimer;
    LabelNama: TLabel;
    Label2: TLabel;
    LabelHome: TLabel;
//    procedure Tampil;
    procedure Label1Click(Sender: TObject);
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
  FormArticleLBM2: TFormArticleLBM2;
  muncul: integer;
  pesan: string;

implementation

uses UnitLBM, UnitArticleLBM1, UnitSignOut, UnitMenu;

{$R *.dfm}

{procedure TFormArticleLBM2.Tampil;
begin
  pesan:=Label1.Caption;
  Label1.Caption:='';
  muncul:=0;
  timer1.Enabled:=true;
end; }

procedure TFormArticleLBM2.Label1Click(Sender: TObject);
begin
  FormArticleLBM2.Hide;
  FormArticleLBM1.Show;
end;

procedure TFormArticleLBM2.Label4Click(Sender: TObject);
begin
  FormArticleLBM2.hide;
  FormLBM.show;
end;

procedure TFormArticleLBM2.Label3Click(Sender: TObject);
begin
  FormArticleLBM2.hide;
  FormArticleLBM1.Show;
end;

{procedure TFormArticleLBM2.Timer1Timer(Sender: TObject);
var
  pesan1: string;
begin
  Muncul := Muncul+1;
  Label1.Caption := Label1.Caption+Pesan[Muncul];
  if (muncul=Length(pesan)) then
  begin
    Timer1.Enabled:=false;
  end;
end;  }

procedure TFormArticleLBM2.Label2Click(Sender: TObject);
begin
  FormArticleLBM2.Hide;
  FormSignOut.Show;
end;

procedure TFormArticleLBM2.LabelHomeClick(Sender: TObject);
begin
  FormArticleLBM2.Hide;
  FormMenu.Show;
end;

end.
