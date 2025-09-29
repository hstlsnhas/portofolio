unit UnitResultBodyType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormResultBodyType = class(TForm)
    Image1: TImage;
    Shape1: TShape;
    LabelBT: TLabel;
    EditResultBodyShape: TEdit;
    EditResultWaistHip: TEdit;
    LabelNama: TLabel;
    Label3: TLabel;
    ImageHourglass: TImage;
    ImageBottomHourglass: TImage;
    ImageTopHourglass: TImage;
    ImageSpoon: TImage;
    ImageTriangle: TImage;
    ImageInvertedTriangle: TImage;
    ImageRectangle: TImage;
    LabelHome: TLabel;
    procedure LabelBTClick(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormResultBodyType: TFormResultBodyType;

implementation

uses UnitBodyType, UnitCalculateBodyType, UnitSignOut, UnitMenu;

{$R *.dfm}

procedure TFormResultBodyType.LabelBTClick(Sender: TObject);
begin
  EditResultBodyShape.Clear;
  EditResultWaistHip.Clear;
  ImageBottomHourglass.Visible:=false;
  ImageHourglass.Visible:=false;
  ImageInvertedTriangle.Visible:=false;
  ImageRectangle.Visible:=false;
  ImageSpoon.Visible:=false;
  ImageTopHourglass.Visible:=false;
  ImageTriangle.Visible:=false;
  FormResultBodyType.Hide;
  FormBodyType.Show;
end;

procedure TFormResultBodyType.Label3Click(Sender: TObject);
begin
  EditResultBodyShape.Clear;
  EditResultWaistHip.Clear;
  ImageBottomHourglass.Visible:=false;
  ImageHourglass.Visible:=false;
  ImageInvertedTriangle.Visible:=false;
  ImageRectangle.Visible:=false;
  ImageSpoon.Visible:=false;
  ImageTopHourglass.Visible:=false;
  ImageTriangle.Visible:=false;
  FormResultBodyType.hide;
  FormSignOut.Show;
end;

procedure TFormResultBodyType.LabelHomeClick(Sender: TObject);
begin
  EditResultBodyShape.Clear;
  EditResultWaistHip.Clear;
  ImageBottomHourglass.Visible:=false;
  ImageHourglass.Visible:=false;
  ImageInvertedTriangle.Visible:=false;
  ImageRectangle.Visible:=false;
  ImageSpoon.Visible:=false;
  ImageTopHourglass.Visible:=false;
  ImageTriangle.Visible:=false;
  FormResultBodyType.Hide;
  FormMenu.Show;
end;

end.
