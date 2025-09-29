unit UnitArticleBodyType1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormArticleBodyType1 = class(TForm)
    Shape2: TShape;
    Label3: TLabel;
    Image1: TImage;
    Label1: TLabel;
//    Timer1: TTimer;
    LabelNama: TLabel;
    Label2: TLabel;
    Shape3: TShape;
    Label4: TLabel;
    LabelHome: TLabel;
///    procedure Tampil;
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
  FormArticleBodyType1: TFormArticleBodyType1;
  muncul: integer;
  pesan: string;

implementation

uses UnitArticleBodyType2, UnitSignOut, UnitBodyType, UnitMenu;

{$R *.dfm}

{procedure TFormArticleBodyType1.Tampil;
begin
  pesan:=Label1.Caption;
  Label1.Caption:='';
  muncul:=0;
  timer1.Enabled:=true;
end; }

procedure TFormArticleBodyType1.Label3Click(Sender: TObject);
begin
   FormArticleBodyType1.Hide;
   FormArticleBodyType2.Show;
//   FormArticleBodyType2.Tampil;
end;

{procedure TFormArticleBodyType1.Timer1Timer(Sender: TObject);
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

procedure TFormArticleBodyType1.Label2Click(Sender: TObject);
begin
  FormArticleBodyType1.Hide;
  FormSignOut.Show;
end;

procedure TFormArticleBodyType1.Label4Click(Sender: TObject);
begin
  FormArticleBodyType1.Hide;
  FormBodyType.Show;
end;

procedure TFormArticleBodyType1.LabelHomeClick(Sender: TObject);
begin
  FormArticleBodyType1.Hide;
  FormMenu.Show;
end;

end.
