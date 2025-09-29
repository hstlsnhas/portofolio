unit UnitArticleLBM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormArticleLBM1 = class(TForm)
    Shape2: TShape;
    Label3: TLabel;
    Image1: TImage;
    Label2: TLabel;
//    Timer1: TTimer;
    LabelNama: TLabel;
    Label1: TLabel;
    Shape3: TShape;
    Label4: TLabel;
    LabelHome: TLabel;
//    procedure Tampil;
    procedure Label1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
//    procedure Timer1Timer(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArticleLBM1: TFormArticleLBM1;
  muncul: integer;
  pesan: string;

implementation

uses UnitArticleLBM2, UnitSignOut, UnitLBM, UnitMenu;

{$R *.dfm}

{procedure TFormArticleLBM1.Tampil;
begin
  pesan:=Label2.Caption;
  Label2.Caption:='';
  muncul:=0;
  timer1.Enabled:=true;
end;   }

procedure TFormArticleLBM1.Label1Click(Sender: TObject);
begin
  FormArticleLBM1.Hide;
  FormSignOut.Show;
end;

procedure TFormArticleLBM1.Label3Click(Sender: TObject);
begin
  FormArticleLBM1.Hide;
  FormArticleLBM2.Show;
//  FormArticleLBM2.Tampil;
end;

{procedure TFormArticleLBM1.Timer1Timer(Sender: TObject);
var
  pesan1: string;
begin
  Muncul := Muncul+1;
  Label2.Caption := Label2.Caption+Pesan[Muncul];
  if (muncul=Length(pesan)) then
  begin
    Timer1.Enabled:=false;
  end;
end;  }

procedure TFormArticleLBM1.Label4Click(Sender: TObject);
begin
  FormArticleLBM1.Hide;
  FormLBM.Show;
end;

procedure TFormArticleLBM1.LabelHomeClick(Sender: TObject);
begin
  FormArticleLBM1.Hide;
  FormMenu.Show;
end;

end.
