unit UnitArticleBodyType2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormArticleBodyType2 = class(TForm)
    Shape2: TShape;
    Label3: TLabel;
    Shape1: TShape;
    Image1: TImage;
    Label1: TLabel;
    Timer1: TTimer;
    LabelNama: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    LabelHome: TLabel;
    procedure Tampil;
    procedure Label4Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArticleBodyType2: TFormArticleBodyType2;
  muncul: integer;
  pesan: string;

implementation

uses UnitBodyType, UnitArticleBodyType1, UnitMenu;

{$R *.dfm}

procedure TFormArticleBodyType2.Tampil;
begin
  pesan:=Label1.Caption;
  Label1.Caption:='';
  muncul:=0;
  timer1.Enabled:=true;
end;

procedure TFormArticleBodyType2.Label4Click(Sender: TObject);
begin
  FormArticleBodyType2.Hide;
  FormBodyType.Show;
end;

procedure TFormArticleBodyType2.Label3Click(Sender: TObject);
begin
  FormArticleBodyType2.Hide;
  FormArticleBodyType1.Show;
end;

procedure TFormArticleBodyType2.Timer1Timer(Sender: TObject);
var
  pesan1: string;
begin
  Muncul := Muncul+1;
  Label1.Caption := Label1.Caption+Pesan[Muncul];
  if (muncul=Length(pesan)) then
  begin
    Timer1.Enabled:=false;
  end;
end;

procedure TFormArticleBodyType2.LabelHomeClick(Sender: TObject);
begin
  FormArticleBodyType2.Hide;
  FormMenu.Show;
end;

end.
