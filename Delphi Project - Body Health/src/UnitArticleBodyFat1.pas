unit UnitArticleBodyFat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormArticleBodyFat1 = class(TForm)
    Shape1: TShape;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
//    Timer1: TTimer;
    LabelNama: TLabel;
    Label3: TLabel;
    Shape3: TShape;
    Label4: TLabel;
    LabelHome: TLabel;
//    procedure Tampil;
    procedure Label1Click(Sender: TObject);
//    procedure Timer1Timer(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArticleBodyFat1: TFormArticleBodyFat1;
  muncul: integer;
  pesan: string;

implementation

uses UnitArticleBodyFat2, UnitSignOut, UnitBodyFat, UnitMenu;

{$R *.dfm}

{procedure TFormArticleBodyFat1.Tampil;
begin
  pesan:=Label2.Caption;
  Label2.Caption:='';
  muncul:=0;
  timer1.Enabled:=true;
end;}

procedure TFormArticleBodyFat1.Label1Click(Sender: TObject);
begin
   FormArticleBodyFat1.Hide;
   FormArticleBodyFat2.Show;
end;

{procedure TFormArticleBodyFat1.Timer1Timer(Sender: TObject);
var
  pesan1: string;
begin
  Muncul := Muncul+1;
  Label2.Caption := Label2.Caption+Pesan[Muncul];
  if (muncul=Length(pesan)) then
  begin
    Timer1.Enabled:=false;
  end;
end;}

procedure TFormArticleBodyFat1.Label3Click(Sender: TObject);
begin
  FormArticleBodyFat1.Hide;
  FormSignOut.Show;
end;

procedure TFormArticleBodyFat1.Label4Click(Sender: TObject);
begin
  FormArticleBodyFat1.Hide;
  FormBodyFat.Show;
end;

procedure TFormArticleBodyFat1.LabelHomeClick(Sender: TObject);
begin
  FormArticleBodyFat1.Hide;
  FormMenu.Show;
end;

end.
