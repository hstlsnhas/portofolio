unit UnitBodyFat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormBodyFat = class(TForm)
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
  FormBodyFat: TFormBodyFat;

implementation

uses UnitArticleBodyFat1, UnitCalculateBodyFat, UnitMenu, UnitSignOut;

{$R *.dfm}

procedure TFormBodyFat.Label1Click(Sender: TObject);
begin
  FormBodyFat.Hide;
  FormArticleBodyFat1.Show;
//  FormArticleBodyFat1.Tampil;
end;

procedure TFormBodyFat.Label2Click(Sender: TObject);
begin
  with FormCalculateBodyFat do begin
    EditAge.Clear;
    EditHeight.Clear;
    EditWeight.Clear;
    EditHip.Clear;
    EditNeck.Clear;
    EditWaist.Clear;
    RadioButtonF.Checked:=False;
    RadioButtonM.Checked:=False;
  end;
  FormBodyFat.Hide;
  FormCalculateBodyFat.Show;
end;

procedure TFormBodyFat.Label4Click(Sender: TObject);
begin
  FormBodyFat.Hide;
  FormMenu.Show;
end;

procedure TFormBodyFat.Label3Click(Sender: TObject);
begin
  FormBodyFat.Hide;
  FormSignOut.Show;
end;

end.
