unit UnitArticleBodyFat3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormArticleBodyFat3 = class(TForm)
    Image1: TImage;
    Shape2: TShape;
    Label3: TLabel;
    LabelNama: TLabel;
    Label1: TLabel;
    Shape3: TShape;
    Label2: TLabel;
    LabelHome: TLabel;
    procedure Label3Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArticleBodyFat3: TFormArticleBodyFat3;

implementation

uses UnitArticleBodyFat2, UnitBodyFat, UnitSignOut, UnitMenu;

{$R *.dfm}

procedure TFormArticleBodyFat3.Label3Click(Sender: TObject);
begin
  FormArticleBodyFat3.Hide;
  FormArticleBodyFat2.Show;
end;

procedure TFormArticleBodyFat3.Label1Click(Sender: TObject);
begin
  FormArticleBodyFat3.Hide;
  FormSignOut.Show;
end;

procedure TFormArticleBodyFat3.Label2Click(Sender: TObject);
begin
  FormArticleBodyFat3.Hide;
  FormBodyFat.Show;
end;

procedure TFormArticleBodyFat3.LabelHomeClick(Sender: TObject);
begin
  FormArticleBodyFat3.Hide;
  FormMenu.Show;
end;

end.
