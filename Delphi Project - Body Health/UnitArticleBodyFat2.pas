unit UnitArticleBodyFat2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormArticleBodyFat2 = class(TForm)
    Image1: TImage;
    Shape2: TShape;
    Label3: TLabel;
    Shape1: TShape;
    Label1: TLabel;
    LabelNama: TLabel;
    Label2: TLabel;
    Shape3: TShape;
    Label4: TLabel;
    LabelHome: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArticleBodyFat2: TFormArticleBodyFat2;

implementation

uses UnitArticleBodyFat3, UnitArticleBodyFat1, UnitBodyFat, UnitSignOut,
  UnitMenu;

{$R *.dfm}

procedure TFormArticleBodyFat2.Label1Click(Sender: TObject);
begin
  FormArticleBodyFat2.Hide;
  FormArticleBodyFat3.Show;
end;

procedure TFormArticleBodyFat2.Label3Click(Sender: TObject);
begin
  FormArticleBodyFat2.Hide;
  FormArticleBodyFat1.Show;
end;

procedure TFormArticleBodyFat2.Label4Click(Sender: TObject);
begin
  FormArticleBodyFat2.Hide;
  FormBodyFat.show;
end;

procedure TFormArticleBodyFat2.Label2Click(Sender: TObject);
begin
  FormArticleBodyFat2.Hide;
  FormSignOut.Show;
end;

procedure TFormArticleBodyFat2.LabelHomeClick(Sender: TObject);
begin
  FormArticleBodyFat2.Hide;
  FormMenu.Show;
end;

end.
