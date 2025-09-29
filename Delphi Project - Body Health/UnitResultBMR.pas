unit UnitResultBMR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Grids;

type
  TFormResultBMR = class(TForm)
    Image1: TImage;
    Shape1: TShape;
    LabelBMR: TLabel;
    StringGridBMR: TStringGrid;
    LabelNama: TLabel;
    sgResultBMR: TStringGrid;
    Label2: TLabel;
    LabelSignOut: TLabel;
    Label4: TLabel;
    LabelHome: TLabel;
    procedure LabelBMRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LabelSignOutClick(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormResultBMR: TFormResultBMR;

implementation

uses UnitBMR, UnitSignOut, UnitMenu;

{$R *.dfm}

procedure TFormResultBMR.LabelBMRClick(Sender: TObject);
begin
  FormResultBMR.hide;
  FormBMR.show;
end;

procedure TFormResultBMR.FormCreate(Sender: TObject);
begin
  sgResultBMR.Cells[0,0]:='BMR Estimation Formula';
  sgResultBMR.Cells[0,1]:='Harris-Benedict';
  sgResultBMR.Cells[0,2]:='Mifflin St Jeor';
  sgResultBMR.Cells[1,0]:='Calories/day';
  StringGridBMR.Cells[0,0]:='Activity Level';
  StringGridBMR.Cells[0,1]:='Sedentary: little or no exercise';
  StringGridBMR.Cells[0,2]:='Exercise 1-3 times/week';
  StringGridBMR.Cells[0,3]:='Exercise 4-5 times/week';
  StringGridBMR.Cells[0,4]:='Daily or intense exercise 3-4 times/week';
  StringGridBMR.Cells[0,5]:='Intense exercise 6-7 times/week';
  StringGridBMR.Cells[0,6]:='Very intense exercise or physical job';
  StringGridBMR.Cells[1,0]:='Calorie';
end;

procedure TFormResultBMR.LabelSignOutClick(Sender: TObject);
begin
  FormResultBMR.Hide;
  FormSignOut.Show;
end;

procedure TFormResultBMR.LabelHomeClick(Sender: TObject);
begin
  FormResultBMR.Hide;
  FormMenu.Show;
end;

end.
