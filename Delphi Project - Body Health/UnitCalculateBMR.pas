unit UnitCalculateBMR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormCalculateBMR = class(TForm)
    Image1: TImage;
    EditAge: TEdit;
    EditHeight: TEdit;
    EditWeight: TEdit;
    RadioButtonM: TRadioButton;
    RadioButtonF: TRadioButton;
    Label3: TLabel;
    Label4: TLabel;
    LabelCalculate: TLabel;
    LabelNama: TLabel;
    Label2: TLabel;
    LabelHome: TLabel;
    Shape1: TShape;
    LabelBMR: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure RadioButtonMClick(Sender: TObject);
    procedure RadioButtonFClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
    procedure LabelBMRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCalculateBMR: TFormCalculateBMR;

implementation

uses UnitResultBMR, Unit_PersonalLibrary, UnitSignOut, UnitMenu, UnitBMR;

{$R *.dfm}

var
  gender:string;
  age, h, w:double;
  a,b,c,d,e,f:double;
  BMR:double;

procedure TFormCalculateBMR.RadioButtonMClick(Sender: TObject);
begin
  gender:='Male';
end;

procedure TFormCalculateBMR.RadioButtonFClick(Sender: TObject);
begin
  gender:='Female'
end;

procedure TFormCalculateBMR.Label1Click(Sender: TObject);

procedure PrintCalorieTable();
begin
  FormResultBMR.StringGridBMR.Cells[1,1]:=FormatFloat('0.##',a);
  FormResultBMR.StringGridBMR.Cells[1,2]:=FormatFloat('0.##',b);
  FormResultBMR.StringGridBMR.Cells[1,3]:=FormatFloat('0.##',c);
  FormResultBMR.StringGridBMR.Cells[1,4]:=FormatFloat('0.##',d);
  FormResultBMR.StringGridBMR.Cells[1,5]:=FormatFloat('0.##',e);
  FormResultBMR.StringGridBMR.Cells[1,6]:=FormatFloat('0.##',f);
end;

begin
  if (EditAge.Text='') or (EditWeight.Text='') or (EditHeight.Text='')  then begin
    ShowMessage('Error! Please input your data.');
  end
  else begin
    age:=StrToFloat(EditAge.Text);
    h:=StrToFloat(EditHeight.Text);
    w:=StrToFloat(EditWeight.Text);
    FormResultBMR.sgResultBMR.Cells[1,1]:=FormatFloat('0.##',BMR_Benedict(w,h,age,gender));
    FormResultBMR.sgResultBMR.Cells[1,2]:=FormatFloat('0.##',BMR_Jeor(w,h,age,gender));
    Calorie_Needs(w, h, age, BMR, gender, a, b, c, d, e, f);
    PrintCalorieTable();
    FormCalculateBMR.Hide;
    FormResultBMR.Show;
  end;
end;

procedure TFormCalculateBMR.Label2Click(Sender: TObject);
begin
  FormCalculateBMR.Hide;
  FormSignOut.Show;
end;

procedure TFormCalculateBMR.LabelHomeClick(Sender: TObject);
begin
  FormCalculateBMR.Hide;
  FormMenu.Show;
end;

procedure TFormCalculateBMR.LabelBMRClick(Sender: TObject);
begin
  FormCalculateBMR.Hide;
  FormBMR.Show;
end;

end.
