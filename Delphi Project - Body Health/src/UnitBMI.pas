unit UnitBMI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormBMI = class(TForm)
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
//    procedure Print();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBMI: TFormBMI;

implementation

uses UnitArticleBMI, UnitCalculateBMI, UnitMenu, UnitLogIn, UnitSignOut;


{$R *.dfm}

procedure TFormBMI.Label1Click(Sender: TObject);
begin
  FormBMI.Hide;
  FormArticleBMI1.Show;
//  FormArticleBMI1.Tampil;
end;

procedure TFormBMI.Label2Click(Sender: TObject);
begin
  with FormCalculateBMI do begin
    EditAge.Clear;
    EditHeight.Clear;
    EditWeight.Clear;
    RadioButtonF.Checked:=false;
    RadioButtonM.Checked:=false;
  end;
  FormBMI.Hide;
  FormCalculateBMI.Show;
end;

procedure TFormBMI.Label4Click(Sender: TObject);
begin
  FormBMI.Hide;
  FormMenu.Show;
end;

procedure TFormBMI.Label3Click(Sender: TObject);
begin
  FormBMI.Hide;
  FormSignOut.Show;
end;

end.
