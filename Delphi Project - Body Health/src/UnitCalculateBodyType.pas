unit UnitCalculateBodyType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormCalculateBodyType = class(TForm)
    Image1: TImage;
    EditBust: TEdit;
    EditWaist: TEdit;
    EditHighHip: TEdit;
    EditHipSize: TEdit;
    Label1: TLabel;
    LabelNama: TLabel;
    Label3: TLabel;
    LabelHome: TLabel;
    Shape1: TShape;
    LabelBT: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
    procedure LabelBTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCalculateBodyType: TFormCalculateBodyType;

implementation

uses UnitResultBodyType, Unit_PersonalLibrary, UnitSignOut, UnitMenu,
  UnitBodyType;

{$R *.dfm}

var
  b:real;
  w,hh,h:real;
  r:string;
  image:TImage;

procedure TFormCalculateBodyType.Label1Click(Sender: TObject);
procedure BodyType(bust,waist,highhip,hips:real; var result:string; var image:TImage);
begin
  if ((bust - hips) <= 2.54) and ((hips - bust) < 9.14) and ((bust-waist)>=22.9) or ((hips-waist)>=25.4) then begin
    result:='Hourglass';
    FormResultBodyType.ImageHourglass.Visible:=true;
  end;
  if ((hips - bust) >= 9.14) and ((hips - bust) < 2.54) and ((hips - waist) >= 22.9) and ((highhip/waist) < 3) then begin
    result:='Bottom hourglass';
    FormResultBodyType.ImageBottomHourglass.Visible:=true;
  end;
  if ((bust - hips) > 2.54) and ((bust - hips) < 25.4) and ((bust - waist) >= 22.9) then begin
    result:='Top hourglass';
    FormResultBodyType.ImageTopHourglass.Visible:=true;
  end;
  if ((hips - bust) > 5.08) and ((hips - waist) = 17.78) and ((highhip/waist) >= 3) then begin
    result:='Spoon';
    FormResultBodyType.ImageSpoon.Visible:=true;
  end;
  if ((hips - bust) >= 9.1) and ((hips - waist) < 22.9) then begin
    result:='Triangle';
    FormResultBodyType.ImageTriangle.Visible:=true;
  end;
  if ((bust - hips) >= 9.1) and ((bust - waist) < 22.9) then begin
    result:='Inverted triangle';
    FormResultBodyType.ImageInvertedTriangle.Visible:=true;
  end;
  if ((hips - bust) < 9.1) and ((bust - hips) < 9.1) and ((bust - waist) < 22.9) and ((hips - waist) < 25.4) then begin
    result:='Rectangle';
    FormResultBodyType.ImageRectangle.Visible:=true;
  end;
end;

begin
  if (EditBust.Text='') or (EditWaist.Text='') or (EditHighHip.Text='') or (EditHipSize.Text='') then begin
    ShowMessage('Error! Please input your data.');
  end
  else begin
    b:=StrToFloat(EditBust.Text);
    w:=StrToFloat(EditWaist.Text);
    hh:=StrToFloat(EditHighHip.Text);
    h:=StrToFloat(EditHipSize.Text);
    BodyType(b,w,hh,h,r,image);
    WHR(w,h);
    FormResultBodyType.EditResultBodyShape.Text:=r;
    FormResultBodyType.EditResultWaistHip.Text:=FormatFloat('0.##',WHR(w,h));
    FormCalculateBodyType.Hide;
    FormResultBodyType.Show;
  end;
end;

procedure TFormCalculateBodyType.Label3Click(Sender: TObject);
begin
  FormCalculateBodyType.Hide;
  FormSignOut.Show;
end;

procedure TFormCalculateBodyType.LabelHomeClick(Sender: TObject);
begin
  FormCalculateBodyType.Hide;
  FormMenu.Show;
end;

procedure TFormCalculateBodyType.LabelBTClick(Sender: TObject);
begin
  FormCalculateBodyType.Hide;
  FormBodyType.Show;
end;

end.
