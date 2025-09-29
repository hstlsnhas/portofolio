unit UnitResultBodyFat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Grids;

type
  TFormResultBodyFat = class(TForm)
    Image1: TImage;
    Shape1: TShape;
    LabelBF: TLabel;
    ImageMen: TImage;
    EditBodyFat: TEdit;
    EditCategory: TEdit;
    StringGridBodyFat: TStringGrid;
    LabelNama: TLabel;
    ImageWomen: TImage;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LabelHome: TLabel;
    procedure LabelBFClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormResultBodyFat: TFormResultBodyFat;

implementation

uses UnitBodyFat, UnitSignOut, UnitMenu;

{$R *.dfm}

procedure TFormResultBodyFat.FormCreate(Sender: TObject);
procedure Tabel(var StringGridBodyFat:TStringGrid);
  begin
    StringGridBodyFat.Cells[0,0]:='Description';
    StringGridBodyFat.Cells[0,1]:='Essential fat';
    StringGridBodyFat.Cells[0,2]:='Athletes';
    StringGridBodyFat.Cells[0,3]:='Fitness';
    StringGridBodyFat.Cells[0,4]:='Average';
    StringGridBodyFat.Cells[0,5]:='Obese';
    StringGridBodyFat.Cells[1,0]:='Women';
    StringGridBodyFat.Cells[1,1]:='10-13%';
    StringGridBodyFat.Cells[1,2]:='14-20%';
    StringGridBodyFat.Cells[1,3]:='21-24%';
    StringGridBodyFat.Cells[1,4]:='25-31%';
    StringGridBodyFat.Cells[1,5]:='32+%';
    StringGridBodyFat.Cells[2,0]:='Men';
    StringGridBodyFat.Cells[2,1]:='2-5%';
    StringGridBodyFat.Cells[2,2]:='6-13%';
    StringGridBodyFat.Cells[2,3]:='14-17%';
    StringGridBodyFat.Cells[2,4]:='18-24%';
    StringGridBodyFat.Cells[2,5]:='25+%';
  end;

begin
  Tabel(StringGridBodyFat);
end;

procedure TFormResultBodyFat.LabelBFClick(Sender: TObject);
begin
  FormResultBodyFat.Hide;
  FormBodyFat.Show;
  { Refresh Canvas }
  ImageWomen.Canvas.Brush.Color:=clWhite;
  ImageWomen.Canvas.FillRect(rect(0,0,width,height));
  ImageMen.Canvas.Brush.Color:=clWhite;
  ImageMen.Canvas.FillRect(rect(0,0,width,height));
  ImageMen.Visible:=false;
  ImageWomen.Visible:=false;
end;

procedure TFormResultBodyFat.Label6Click(Sender: TObject);
begin
  FormResultBodyFat.Hide;
  FormSignOut.Show;
  { Refresh Canvas }
  ImageWomen.Canvas.Brush.Color:=clWhite;
  ImageWomen.Canvas.FillRect(rect(0,0,width,height));
  ImageMen.Canvas.Brush.Color:=clWhite;
  ImageMen.Canvas.FillRect(rect(0,0,width,height));
  ImageMen.Visible:=false;
  ImageWomen.Visible:=false;
end;

procedure TFormResultBodyFat.LabelHomeClick(Sender: TObject);
begin
  FormResultBodyFat.Hide;
  FormMenu.Show;
  { Refresh Canvas }
  ImageWomen.Canvas.Brush.Color:=clWhite;
  ImageWomen.Canvas.FillRect(rect(0,0,width,height));
  ImageMen.Canvas.Brush.Color:=clWhite;
  ImageMen.Canvas.FillRect(rect(0,0,width,height));
  ImageMen.Visible:=false;
  ImageWomen.Visible:=false;
end;

end.
