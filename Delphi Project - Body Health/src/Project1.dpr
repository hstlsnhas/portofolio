program Project1;

uses
  Forms,
  UnitMainMenu in 'UnitMainMenu.pas' {FormMainMenu},
  UnitLogIn in 'UnitLogIn.pas' {FormInputName},
  UnitBMI in 'UnitBMI.pas' {FormBMI},
  UnitMenu in 'UnitMenu.pas' {FormMenu},
  UnitLBM in 'UnitLBM.pas' {FormLBM},
  UnitBodyFat in 'UnitBodyFat.pas' {FormBodyFat},
  UnitBMR in 'UnitBMR.pas' {FormBMR},
  UnitBodyType in 'UnitBodyType.pas' {FormBodyType},
  UnitArticleBMI in 'UnitArticleBMI.pas' {FormArticleBMI1},
  UnitCalculateBMI in 'UnitCalculateBMI.pas' {FormCalculateBMI},
  UnitResultBMI in 'UnitResultBMI.pas' {FormResultBMI},
  UnitCalculateBodyFat in 'UnitCalculateBodyFat.pas' {FormCalculateBodyFat},
  UnitCalculateLBM in 'UnitCalculateLBM.pas' {FormCalculateLBM},
  UnitResultBodyFat in 'UnitResultBodyFat.pas' {FormResultBodyFat},
  UnitResultLBM in 'UnitResultLBM.pas' {FormResultLBM},
  UnitCalculateBodyType in 'UnitCalculateBodyType.pas' {FormCalculateBodyType},
  UnitResultBodyType in 'UnitResultBodyType.pas' {FormResultBodyType},
  UnitCalculateBMR in 'UnitCalculateBMR.pas' {FormCalculateBMR},
  UnitResultBMR in 'UnitResultBMR.pas' {FormResultBMR},
  UnitArticleBMI2 in 'UnitArticleBMI2.pas' {FormArticleBMI2},
  UnitArticleBMI3 in 'UnitArticleBMI3.pas' {FormArticleBMI3},
  UnitArticleBodyFat1 in 'UnitArticleBodyFat1.pas' {FormArticleBodyFat1},
  UnitArticleBodyFat2 in 'UnitArticleBodyFat2.pas' {FormArticleBodyFat2},
  UnitArticleBodyFat3 in 'UnitArticleBodyFat3.pas' {FormArticleBodyFat3},
  UnitArticleLBM1 in 'UnitArticleLBM1.pas' {FormArticleLBM1},
  UnitArticleLBM2 in 'UnitArticleLBM2.pas' {FormArticleLBM2},
  UnitArticleBMR1 in 'UnitArticleBMR1.pas' {FormArticleBMR1},
  UnitArticleBMR2 in 'UnitArticleBMR2.pas' {FormArticleBMR2},
  UnitArticleBMR3 in 'UnitArticleBMR3.pas' {FormArticleBMR3},
  UnitArticleBodyType1 in 'UnitArticleBodyType1.pas' {FormArticleBodyType1},
  UnitArticleBodyType2 in 'UnitArticleBodyType2.pas' {FormArticleBodyType2},
  UnitSignOut in 'UnitSignOut.pas' {FormSignOut};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMainMenu, FormMainMenu);
  Application.CreateForm(TFormInputName, FormInputName);
  Application.CreateForm(TFormBMI, FormBMI);
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormLBM, FormLBM);
  Application.CreateForm(TFormBodyFat, FormBodyFat);
  Application.CreateForm(TFormBMR, FormBMR);
  Application.CreateForm(TFormBodyType, FormBodyType);
  Application.CreateForm(TFormArticleBMI1, FormArticleBMI1);
  Application.CreateForm(TFormCalculateBMI, FormCalculateBMI);
  Application.CreateForm(TFormResultBMI, FormResultBMI);
  Application.CreateForm(TFormCalculateBodyFat, FormCalculateBodyFat);
  Application.CreateForm(TFormCalculateLBM, FormCalculateLBM);
  Application.CreateForm(TFormResultBodyFat, FormResultBodyFat);
  Application.CreateForm(TFormResultLBM, FormResultLBM);
  Application.CreateForm(TFormCalculateBodyType, FormCalculateBodyType);
  Application.CreateForm(TFormResultBodyType, FormResultBodyType);
  Application.CreateForm(TFormCalculateBMR, FormCalculateBMR);
  Application.CreateForm(TFormResultBMR, FormResultBMR);
  Application.CreateForm(TFormArticleBMI2, FormArticleBMI2);
  Application.CreateForm(TFormArticleBMI3, FormArticleBMI3);
  Application.CreateForm(TFormArticleBodyFat1, FormArticleBodyFat1);
  Application.CreateForm(TFormArticleBodyFat2, FormArticleBodyFat2);
  Application.CreateForm(TFormArticleBodyFat3, FormArticleBodyFat3);
  Application.CreateForm(TFormArticleLBM1, FormArticleLBM1);
  Application.CreateForm(TFormArticleLBM2, FormArticleLBM2);
  Application.CreateForm(TFormArticleBMR1, FormArticleBMR1);
  Application.CreateForm(TFormArticleBMR2, FormArticleBMR2);
  Application.CreateForm(TFormArticleBMR3, FormArticleBMR3);
  Application.CreateForm(TFormArticleBodyType1, FormArticleBodyType1);
  Application.CreateForm(TFormArticleBodyType2, FormArticleBodyType2);
  Application.CreateForm(TFormSignOut, FormSignOut);
  Application.Run;
end.
