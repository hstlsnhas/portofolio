unit UnitResultLBM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Grids;

type
  TFormResultLBM = class(TForm)
    Shape1: TShape;
    LabelLBM: TLabel;
    SGResultLBM: TStringGrid;
    LabelNama: TLabel;
    sgLBM_Child: TStringGrid;
    Label3: TLabel;
    LabelHome: TLabel;
    Image1: TImage;
    procedure LabelLBMClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormResultLBM: TFormResultLBM;

implementation

uses UnitLBM, UnitSignOut, UnitMenu;

{$R *.dfm}


procedure TFormResultLBM.FormCreate(Sender: TObject);
begin
  SGResultLBM.Cells[0,0]:='Formula';
  SGResultLBM.Cells[1,0]:='Lean Body Mass';
  sgLBM_Child.Cells[0,0]:='Formula';
  sgLBM_Child.Cells[1,0]:='Lean Body Mass';
end;

procedure TFormResultLBM.LabelLBMClick(Sender: TObject);
begin
  FormResultLBM.Hide;
  FormLBM.Show;
  SGResultLBM.Visible:=false;
  sgLBM_Child.Visible:=false;
end;

procedure TFormResultLBM.Label3Click(Sender: TObject);
begin
  SGResultLBM.Visible:=false;
  sgLBM_Child.Visible:=false;
  FormResultLBM.Hide;
  FormSignOut.Show;
end;

procedure TFormResultLBM.LabelHomeClick(Sender: TObject);
begin
  SGResultLBM.Visible:=false;
  sgLBM_Child.Visible:=false;
  FormResultLBM.Hide;
  FormMenu.Show;
end;

end.
