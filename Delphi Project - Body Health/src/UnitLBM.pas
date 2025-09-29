unit UnitLBM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormLBM = class(TForm)
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
  FormLBM: TFormLBM;

implementation

uses UnitArticleLBM1, UnitCalculateLBM, UnitMenu, UnitSignOut;

{$R *.dfm}

procedure TFormLBM.Label1Click(Sender: TObject);
begin
  FormLBM.Hide;
  FormArticleLBM1.Show;
//  FormArticleLBM1.Tampil;
end;

procedure TFormLBM.Label2Click(Sender: TObject);
begin
  with FormCalculateLBM do begin
    EditHeight.Clear;
    EditWeight.Clear;
    RadioGroupGender.ItemIndex:=-1;
    RadioGroupAge.ItemIndex:=-1;
  end;
  FormLBM.Hide;
  FormCalculateLBM.Show;
end;

procedure TFormLBM.Label4Click(Sender: TObject);
begin
  FormLBM.Hide;
  FormMenu.Show;
end;

procedure TFormLBM.Label3Click(Sender: TObject);
begin
  FormLBM.Hide;
  FormSignOut.Show;
end;

end.
