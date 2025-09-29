unit UnitCalculateBodyFat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormCalculateBodyFat = class(TForm)
    EditAge: TEdit;
    EditHeight: TEdit;
    EditWeight: TEdit;
    EditNeck: TEdit;
    EditWaist: TEdit;
    RadioButtonM: TRadioButton;
    RadioButtonF: TRadioButton;
    Label1: TLabel;
    LabelNama: TLabel;
    EditHip: TEdit;
    Label3: TLabel;
    LabelHome: TLabel;
    Shape1: TShape;
    LabelBF: TLabel;
    Image1: TImage;
    procedure Label1Click(Sender: TObject);
    procedure RadioButtonFClick(Sender: TObject);
    procedure RadioButtonMClick(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
    procedure LabelBFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCalculateBodyFat: TFormCalculateBodyFat;

implementation

uses UnitResultBodyFat, Unit_PersonalLibrary, UnitSignOut, UnitMenu,
  UnitBodyFat;

{$R *.dfm}

var
    gender:string;
    age,weight,neck,hip,waist:double;
    h:double;
    result:integer;

procedure TFormCalculateBodyFat.RadioButtonFClick(Sender: TObject);
begin
  {Image1.Visible:=false;
  Image2.Visible:=true;}
  EditHip.Visible:=true;
  gender:='women';
end;

procedure TFormCalculateBodyFat.RadioButtonMClick(Sender: TObject);
begin
  {Image1.Visible:=true;
  Image2.Visible:=false;}
  EditHip.Visible:=false;
  gender:='men';
end;

procedure TFormCalculateBodyFat.Label1Click(Sender: TObject);
procedure BF_GraphicMen();
begin
  with FormResultBodyFat.ImageMen.Canvas do begin
      pen.color:=clwhite;
      brush.color:=clmaroon; //maroon
      rectangle(0,50,20,100);
      brush.color:=$0029E8F8; //kuning
      rectangle(20,50,60,100);
      brush.color:=$0080FF80; //hijau muda
      rectangle(60,50,140,100);
      brush.color:=$00408000;
      rectangle(140,50,180,100);
      brush.color:=$0029E8F8;
      rectangle(180,50,250,100);
      brush.color:=clmaroon;
      rectangle(250,50,400,100);
      brush.color:=clwhite;
      textout(10,85,'2%');       //x kurangin 10 biar text di tengah garis
      textout(50,85,'6%');       //y juga kurangin 15 biar text pas aja
      textout(130,85,'14%');
      textout(170,85,'18%');
      textout(240,85,'25%');
      textout(5,100,'Essential');
      textout(80,100,'Athletes');
      textout(145,100,'Fitness');
      textout(197,100,'Average');
      textout(260,100,'Obese');
      brush.color:=clblack;
    end;
end;

procedure BF_GraphicWomen();
begin
    with FormResultBodyFat.ImageWomen.Canvas do begin
      pen.color:=clwhite;
      brush.color:=clmaroon; //maroon
      rectangle(0,50,50,100);
      brush.color:=$0029E8F8; //kuning
      rectangle(50,50,90,100);
      brush.color:=$0080FF80; //hijau muda
      rectangle(90,50,160,100);
      brush.color:=$00408000; //hijau
      rectangle(160,50,200,100);
      brush.color:=$0029E8F8; //kuning
      rectangle(200,50,270,100);
      brush.color:=clmaroon; //maroon
      rectangle(270,50,400,100);
      brush.color:=clwhite;
      textout(40,85,'10%');
      textout(80,85,'14%');
      textout(150,85,'21%');
      textout(190,85,'25%');
      textout(260,85,'32%');
      textout(30,100,'Essential');
      textout(105,100,'Athletes');
      textout(165,100,'Fitness');
      textout(215,100,'Average');
      textout(270,100,'Obese');
      brush.color:=clblack;
    end;
end;

procedure HitungRumus(gender:string; var waist,hip,neck,h:double; var result:integer);
var
  equation:real;
begin
  if gender='women' then begin
    hip:=StrToFloat(EditHip.Text);
    equation:=BFP_women(waist, hip, neck, h);
    FormResultBodyFat.EditBodyFat.Text:=FormatFloat('0.##',equation);
    FormResultBodyFat.ImageWomen.Visible:=true;
    { Category }
    with FormResultBodyFat do
      begin
        if (equation<=13) then
          EditCategory.Text:='Essential fat';
        if (equation>13) and (equation<=20) then
          EditCategory.Text:='Athletes';
        if (equation>20) and (equation<=24) then
          EditCategory.Text:='Fitness';
        if (equation>24) and (equation<=31) then
          EditCategory.Text:='Average';
        if (equation>31) then
          EditCategory.Text:='Obese';
      end;

    result:=((Trunc(equation))*10)-50;
    { ARROW }
    if (result>320) then begin
      FormResultBodyFat.ImageWomen.Canvas.Polygon([point(280,20), point(300,20), point(290,40)]);
    end
    else if (result<=320) then begin
      FormResultBodyFat.ImageWomen.Canvas.Polygon([point(result-10,20), point(result+10,20), point(result,40)]);
    end;

  end
  else begin
    equation:=BFP_men(waist,neck,h);
    FormResultBodyFat.EditBodyFat.Text:=FormatFloat('0.##',equation);
    FormResultBodyFat.ImageMen.Visible:=true;

    { Category }
    with FormResultBodyFat do
      begin
        if (equation<=5) then
          EditCategory.Text:='Essential fat';
        if (equation>5) and (equation<=13) then
          EditCategory.Text:='Athletes';
        if (equation>13) and (equation<=17) then
          EditCategory.Text:='Fitness';
        if (equation>17) and (equation<=24) then
          EditCategory.Text:='Average';
        if (equation>24) then
          EditCategory.Text:='Obese';
      end;

    result:=(Trunc(equation))*10;
    { ARROW }
    if (result>250) then begin
      FormResultBodyFat.ImageMen.Canvas.Polygon([point(280,20), point(300,20), point(290,40)]);
    end
    else if (result<=250) then begin
      FormResultBodyFat.ImageMen.Canvas.Polygon([point(result-10,20), point(result+10,20), point(result,40)]);
    end;
  end;
end;

begin
  if (EditAge.Text='') or (EditWeight.Text='') or (EditHeight.Text='')
      or (EditNeck.Text='') or (EditWaist.Text='') then begin
    ShowMessage('Error! Please input your data.');
  end
  else begin
    age:=StrToFloat(EditAge.Text);
    h:=StrToInt(EditHeight.Text);
    weight:=StrToFloat(EditWeight.Text);
    neck:=StrToFloat(EditNeck.Text);
    waist:=StrToFloat(EditWaist.Text);
    BF_GraphicMen();
    BF_GraphicWomen();
    HitungRumus(gender,waist,hip,neck,h,result);
    FormCalculateBodyFat.Hide;
    FormResultBodyFat.Show;
  end;
end;


procedure TFormCalculateBodyFat.Label3Click(Sender: TObject);
begin
  FormCalculateBodyFat.Hide;
  FormSignOut.Show;
end;

procedure TFormCalculateBodyFat.LabelHomeClick(Sender: TObject);
begin
  FormCalculateBodyFat.Hide;
  FormMenu.Show;
end;

procedure TFormCalculateBodyFat.LabelBFClick(Sender: TObject);
begin
  FormCalculateBodyFat.Hide;
  FormBodyFat.Show;
end;

end.
