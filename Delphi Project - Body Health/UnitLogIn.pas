unit UnitLogIn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, DB, ADODB, MPlayer;

type
  TFormInputName = class(TForm)
    EditName: TEdit;
    Image1: TImage;
    Shape1: TShape;
    Label1: TLabel;
    MediaPlayer1: TMediaPlayer;
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    n:string;
  end;

var
  FormInputName: TFormInputName;

implementation

uses UnitBMI, UnitMenu, UnitBMR, UnitBodyType, UnitBodyFat, UnitLBM,
  UnitResultBMI, UnitResultBMR, UnitResultBodyType, UnitResultBodyFat,
  UnitResultLBM, UnitCalculateBMI, UnitCalculateBMR, UnitCalculateBodyType,
  UnitCalculateBodyFat, UnitCalculateLBM, UnitArticleBMI, UnitArticleBMI2,
  UnitArticleBMI3, UnitArticleBMR1,
  UnitArticleBMR2, UnitArticleBMR3, UnitArticleBodyType1,
  UnitArticleBodyType2, UnitArticleBodyFat1, UnitArticleBodyFat2,
  UnitArticleBodyFat3, UnitArticleLBM1, UnitArticleLBM2, UnitSignOut;

{$R *.dfm}

procedure TFormInputName.Label1Click(Sender: TObject);
var
  n:string;
begin
  n:=EditName.Text;
  if (n='') then begin
    ShowMessage('We want to know you closer, please input your name!');
  end
  else begin
    if (n<>'') then begin
      FormBMI.LabelNama.Caption:='Hallo, '+n;
      FormBMR.LabelNama.Caption:='Hallo, '+n;
      FormBodyType.LabelNama.Caption:='Hallo, '+n;
      FormBodyFat.LabelNama.Caption:='Hallo, '+n;
      FormLBM.LabelNama.Caption:='Hallo, '+n;
        FormResultBMI.LabelNama.Caption:='Hallo, '+n;
        FormResultBMR.LabelNama.Caption:='Hallo, '+n;
        FormResultBodyType.LabelNama.Caption:='Hallo, '+n;
        FormResultBodyFat.LabelNama.Caption:='Hallo, '+n;
        FormResultLBM.LabelNama.Caption:='Hallo, '+n;
          FormCalculateBMI.LabelNama.Caption:='Hallo, '+n;
          FormCalculateBMR.LabelNama.Caption:='Hallo, '+n;
          FormCalculateBodyType.LabelNama.Caption:='Hallo, '+n;
          FormCalculateBodyFat.LabelNama.Caption:='Hallo, '+n;
          FormCalculateLBM.LabelNama.Caption:='Hallo, '+n;
            FormArticleBMI1.LabelNama.Caption:='Hallo, '+n;
            FormArticleBMI2.LabelNama.Caption:='Hallo, '+n;
            FormArticleBMI3.LabelNama.Caption:='Hallo, '+n;
            FormArticleBMR1.LabelNama.Caption:='Hallo, '+n;
            FormArticleBMR2.LabelNama.Caption:='Hallo, '+n;
            FormArticleBMR3.LabelNama.Caption:='Hallo, '+n;
            FormArticleBodyType1.LabelNama.Caption:='Hallo, '+n;
            FormArticleBodyType2.LabelNama.Caption:='Hallo, '+n;
            FormArticleBodyFat1.LabelNama.Caption:='Hallo, '+n;
            FormArticleBodyFat2.LabelNama.Caption:='Hallo, '+n;
            FormArticleBodyFat3.LabelNama.Caption:='Hallo, '+n;
            FormArticleLBM1.LabelNama.Caption:='Hallo, '+n;
            FormArticleLBM2.LabelNama.Caption:='Hallo, '+n;
              FormSignOut.LabelNama.Caption:='See you, '+n+ ' !';
      {mediaplayer1.FileName:='C:\Users\Bunga Cintya\Downloads\soundfic\GreenHouse  Sunflower Dance.mp3';
      mediaplayer1.Open;
      mediaplayer1.Play;}
      FormInputName.Hide;
      FormMenu.Show;
    end;
  end;
end;

end.
