unit UnitBMR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormBMR = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    Label4: TLabel;
    LabelNama: TLabel;
    Label3: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label4Clik(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBMR: TFormBMR;

implementation

uses UnitArticleBMR1, UnitMenu, UnitCalculateBMR, UnitSignOut;

{$R *.dfm}

procedure TFormBMR.Label1Click(Sender: TObject);
begin
  FormBMR.hide;
  FormArticleBMR1.show;
//  FormArticleBMR1.Tampil;
end;

procedure TFormBMR.Label2Click(Sender: TObject);
begin
  with FormCalculateBMR do begin
    EditAge.Clear;
    EditHeight.Clear;
    EditWeight.Clear;
    RadioButtonF.Checked:=false;
    RadioButtonM.Checked:=false;
  end;
  FormBMR.hide;
  FormCalculateBMR.show;
end;

procedure TFormBMR.Label4Clik(Sender: TObject);
begin
  FormBMR.Hide;
  FormMenu.Show;
end;

procedure TFormBMR.Label3Click(Sender: TObject);
begin
  FormBMR.Hide;
  FormSignOut.Show;
end;

end.
