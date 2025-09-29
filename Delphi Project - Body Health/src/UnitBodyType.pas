unit UnitBodyType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormBodyType = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    Label4: TLabel;
    LabelNama: TLabel;
    Label3: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBodyType: TFormBodyType;

implementation

uses UnitArticleBodyType1, UnitCalculateBodyType, UnitMenu, UnitSignOut;

{$R *.dfm}

procedure TFormBodyType.Label1Click(Sender: TObject);
begin
  FormBodyType.Hide;
  FormArticleBodyType1.Show;
//  FormArticleBodyType1.Tampil;
end;

procedure TFormBodyType.Label2Click(Sender: TObject);
begin
  with FormCalculateBodyType do begin
    EditBust.Clear;
    EditHighHip.Clear;
    EditHipSize.Clear;
    EditWaist.Clear;
  end;
  FormBodyType.Hide;
  FormCalculateBodyType.Show;
end;

procedure TFormBodyType.Label4Click(Sender: TObject);
begin
  FormBodyType.Hide;
  FormMenu.Show;
end;

procedure TFormBodyType.Label3Click(Sender: TObject);
begin
  FormBodyType.Hide;
  FormSignOut.Show;
end;

end.
