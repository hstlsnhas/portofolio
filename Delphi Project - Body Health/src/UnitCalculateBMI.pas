unit UnitCalculateBMI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormCalculateBMI = class(TForm)
    Image1: TImage;
    EditAge: TEdit;
    EditHeight: TEdit;
    EditWeight: TEdit;
    Label2: TLabel;
    RadioButtonM: TRadioButton;
    RadioButtonF: TRadioButton;
    Label3: TLabel;
    Label4: TLabel;
    LabelNama: TLabel;
    Label5: TLabel;
    LabelHome: TLabel;
    Shape1: TShape;
    LabelBMI: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
    procedure LabelBMIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCalculateBMI: TFormCalculateBMI;

implementation

uses UnitResultBMI, Unit_PersonalLibrary, UnitSignOut, UnitMenu, UnitBMI;


{$R *.dfm}

var
  age:integer;
  m,h,result:double;

procedure TFormCalculateBMI.Label1Click(Sender: TObject);

function Category(r:double):string;
  begin
    if (r < 16) then
      Result := 'Severe Thinness'

    else if (r >= 16) and (r < 17) then
      Result := 'Moderate Thinness'

    else if (r >= 17) and (r < 18.5) then
      Result := 'Mild Thinness'

    else if (r >= 18.5) and (r < 25) then
      Result := 'Normal'

    else if (r >= 25) and (r < 30) then
      Result := 'Overweight'

    else if (r >= 30) and (r < 35) then
      Result := 'Obese Class I'

    else if (r >= 35) and (r < 40) then
      Result := 'Obese Class II'

    else if (r >= 40) then
      Result := 'Obese Class III';
  end;

procedure Graphic_BMI(var result:double);

function CanvasX(LojikX:Double):integer;
  begin
    result:=Round(LojikX+75);
  end;

function CanvasY(LojikY:Double):integer;
  begin
    result:=Round(100-LojikY); //membuat pusat di (300,300) akibatnya grafik bergeser ke bawah
  end;

procedure Result_Arrow(var result:double);
  begin
    with FormResultBMI.ImageGraphicsBMI.Canvas do
      begin
        pen.color:=clblack;
        moveto(CanvasX(0),CanvasY(0));

        if (result < 15) then
          lineto(CanvasX(-42),CanvasY(7))

        else if (result = 17) then
          lineto(CanvasX(-40),CanvasY(14.6))

        else if (result > 17) and (result < 18.5) then
          lineto(CanvasX(-38),CanvasY(18))

        else if (result = 18.5) then
          lineto(CanvasX(-38.7),CanvasY(17.9))

        else if (result > 18.5) and (result < 25) then
         lineto(CanvasX(-27),CanvasY(33))

        else if (result = 25) then
          lineto(CanvasX(-14.6),CanvasY(40))

        else if (result > 25) and (result <30) then
          lineto(CanvasX(-3.9),CanvasY(43))

        else if (result = 30) then
          lineto(CanvasX(7.4),CanvasY(42))

        else if (result > 30) and (result < 35) then
          lineto(CanvasX(17.6),CanvasY(39))

        else if (result = 35) then
          lineto(CanvasX(27.4),CanvasY(32.7))

        else if (result > 35) and (result < 40) then
          lineto(CanvasX(35),CanvasY(25))

        else if (result = 40) then
          lineto(CanvasX(40.1),CanvasY(14.6))

        else if (result > 40) and (result < 55) then
          lineto(CanvasX(42),CanvasY(7))

        else if (result > 55) then
          lineto(CanvasX(42.6),CanvasY(0));

      end;
  end;

procedure Arc();
  begin
    with FormResultBMI.ImageGraphicsBMI.Canvas do
      begin
        pen.color:=clwhite;
        brush.color:=clmaroon;
        pie(CanvasX(-75),CanvasY(75),CanvasX(75),CanvasY(-75),CanvasX(3),CanvasY(0),CanvasX(2.8),CanvasY(1));
        brush.color:=$00272BAD; //maroon lebih muda
        pie(CanvasX(-75),CanvasY(75),CanvasX(75),CanvasY(-75),CanvasX(2.8),CanvasY(1),CanvasX(1.9),CanvasY(2.3));
        brush.color:=$008282D7; //merah muda
        pie(CanvasX(-75),CanvasY(75),CanvasX(75),CanvasY(-75),CanvasX(1.9),CanvasY(2.3),CanvasX(0.5),CanvasY(3));
        brush.color:=$0029E8F8; //kuning
        pie(CanvasX(-75),CanvasY(75),CanvasX(75),CanvasY(-75),CanvasX(0.5),CanvasY(3),CanvasX(-1),CanvasY(2.8));
        brush.color:=$00408000; //hijau
        pie(CanvasX(-75),CanvasY(75),CanvasX(75),CanvasY(-75),CanvasX(-1),CanvasY(2.8),CanvasX(-2.6),CanvasY(1.5));
        brush.color:=$0029E8F8; //kuning
        pie(CanvasX(-75),CanvasY(75),CanvasX(75),CanvasY(-75),CanvasX(-2.6),CanvasY(1.5),CanvasX(-2.7),CanvasY(1.3));
        brush.color:=$00272BAD; //merah muda
        pie(CanvasX(-75),CanvasY(75),CanvasX(75),CanvasY(-75),CanvasX(-2.7),CanvasY(1.3),CanvasX(-3),CanvasY(0));
        brush.color:=clwhite;
        pie(CanvasX(-50),CanvasY(50),CanvasX(50),CanvasY(-50),CanvasX(0.5),CanvasY(0),CanvasX(-0.5),CanvasY(1));
        pie(CanvasX(-50),CanvasY(50),CanvasX(50),CanvasY(-50),CanvasX(-0.5),CanvasY(1),CanvasX(-1),CanvasY(0));
        brush.color:=clred;
        ellipse(CanvasX(-2),CanvasY(2),CanvasX(2),CanvasY(-2));
      end;
  end;

begin
  Arc();
  Result_Arrow(result);
end;

begin
  if (EditAge.Text='') or (EditWeight.Text='') or (EditHeight.Text='')  then begin
    ShowMessage('Error! Please input your data.');
  end
  else begin
    age:=StrToInt(EditAge.Text);
    m:=StrToFloat(EditWeight.Text);
    h:=StrToFloat(EditHeight.Text);
    h:=h/100;
    result:=BMI_count(m,h);
    FormResultBMI.EditResultBMI.Text:=FormatFloat('0.##',result)+'%';
    FormResultBMI.LabelPercent.Caption:=FormatFloat('0.##',result)+'%';
    FormResultBMI.EditCategory.Text:=Category(result);
    Graphic_BMI(result);
    FormCalculateBMI.Hide;
    FormResultBMI.Show;
  end;
end;

procedure TFormCalculateBMI.Label5Click(Sender: TObject);
begin
  FormCalculateBMI.Hide;
  FormSignOut.Show;
end;

procedure TFormCalculateBMI.LabelHomeClick(Sender: TObject);
begin
  FormCalculateBMI.Hide;
  FormMenu.Show;
end;

procedure TFormCalculateBMI.LabelBMIClick(Sender: TObject);
begin
  FormCalculateBMI.Hide;
  FormBMI.Show;
end;

end.
