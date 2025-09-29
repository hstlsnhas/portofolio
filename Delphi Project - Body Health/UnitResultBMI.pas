unit UnitResultBMI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Grids;

type
  TFormResultBMI = class(TForm)
    Shape1: TShape;
    LabelBMI: TLabel;
    EditResultBMI: TEdit;
    StringGridBMI: TStringGrid;
    LabelNama: TLabel;
    ImageGraphicsBMI: TImage;
    LabelPercent: TLabel;
    EditCategory: TEdit;
    Label3: TLabel;
    LabelHome: TLabel;
    Image1: TImage;
    procedure LabelBMIClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormResultBMI: TFormResultBMI;

implementation

uses UnitBMI, Unit_PersonalLibrary, UnitCalculateBMI, UnitSignOut,
  UnitMenu;

{$R *.dfm}

procedure TFormResultBMI.FormCreate(Sender: TObject);

procedure Tabel(var StringGridBMI:TStringGrid);
  begin
    StringGridBMI.Cells[0,0]:='Category';
    StringGridBMI.Cells[0,1]:='Severe Thinness';
    StringGridBMI.Cells[0,2]:='Moderate Thinness';
    StringGridBMI.Cells[0,3]:='Mild Thinness';
    StringGridBMI.Cells[0,4]:='Normal';
    StringGridBMI.Cells[0,5]:='Overweight';
    StringGridBMI.Cells[0,6]:='Obese Class I';
    StringGridBMI.Cells[0,7]:='Obese Class II';
    StringGridBMI.Cells[0,8]:='Obese Class III';
    StringGridBMI.Cells[1,0]:='BMI range - kg/m^2';
    StringGridBMI.Cells[1,1]:='< 16';
    StringGridBMI.Cells[1,2]:='16 - 17';
    StringGridBMI.Cells[1,3]:='17 - 18.5';
    StringGridBMI.Cells[1,4]:='18.5 - 25';
    StringGridBMI.Cells[1,5]:='25 - 30';
    StringGridBMI.Cells[1,6]:='30 - 35';
    StringGridBMI.Cells[1,7]:='35 - 40';
    StringGridBMI.Cells[1,8]:='> 40';
  end;

begin
  Tabel(StringGridBMI);
end;

procedure TFormResultBMI.LabelBMIClick(Sender: TObject);
begin
  { Refresh Canvas }
  ImageGraphicsBMI.Canvas.Brush.Color:=clWhite;
  ImageGraphicsBMI.Canvas.FillRect(rect(0,0,width,height));
  FormResultBMI.hide;
  FormBMI.show;
end;

procedure TFormResultBMI.Label3Click(Sender: TObject);
begin
  { Refresh Canvas }
  ImageGraphicsBMI.Canvas.Brush.Color:=clWhite;
  ImageGraphicsBMI.Canvas.FillRect(rect(0,0,width,height));
  FormResultBMI.Hide;
  FormSignOut.Show;
end;

procedure TFormResultBMI.LabelHomeClick(Sender: TObject);
begin
  { Refresh Canvas }
  ImageGraphicsBMI.Canvas.Brush.Color:=clWhite;
  ImageGraphicsBMI.Canvas.FillRect(rect(0,0,width,height));
  FormResultBMI.Hide;
  FormMenu.Show;
end;

end.
