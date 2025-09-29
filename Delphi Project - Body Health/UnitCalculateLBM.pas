unit UnitCalculateLBM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ComCtrls;

type
  TFormCalculateLBM = class(TForm)
    EditHeight: TEdit;
    EditWeight: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroupGender: TRadioGroup;
    RadioGroupAge: TRadioGroup;
    LabelNama: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LabelHome: TLabel;
    Shape1: TShape;
    LabelLBM: TLabel;
    Image1: TImage;
    procedure Label2Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
    procedure LabelLBMClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCalculateLBM: TFormCalculateLBM;

implementation

uses UnitLBM, UnitResultLBM, Unit_PersonalLibrary, UnitSignOut, UnitMenu;

{$R *.dfm}

procedure TFormCalculateLBM.Label2Click(Sender: TObject);
var
  gender:string;
  h,w:real;

procedure Calculate(r:TRadioGroup; var w,h:real; var gender:string);
begin
  with r do begin
    if (ItemIndex=0) then begin
      FormResultLBM.sgLBM_Child.Visible:=true;
      FormResultLBM.sgLBM_Child.Cells[0,1]:='Peters (age < 14)';
      FormResultLBM.sgLBM_Child.Cells[1,1]:=FormatFloat('0.##',LBM_Peters(w, h))
    end
    else if (ItemIndex=1) then begin
      FormResultLBM.SGResultLBM.Visible:=true;
      FormResultLBM.SGResultLBM.Cells[0,1]:='Boer';
      FormResultLBM.SGResultLBM.Cells[0,2]:='James';
      FormResultLBM.SGResultLBM.Cells[0,3]:='Hume';
      FormResultLBM.SGResultLBM.Cells[1,1]:=FormatFloat('0.##',LBM_Boer(w, h, gender));
      FormResultLBM.SGResultLBM.Cells[1,2]:=FormatFloat('0.##',LBM_James(w, h, gender));
      FormResultLBM.SGResultLBM.Cells[1,3]:=FormatFloat('0.##',LBM_Hume(w, h, gender));
    end;
  end;
end;

begin
  if (EditHeight.Text='') or (EditWeight.Text='') or (RadioGroupAge.ItemIndex=-1) or (RadioGroupGender.ItemIndex=-1)  then begin
    ShowMessage('Error! Please input your data.');
  end
  else begin
    h:=StrToFloat(EditHeight.Text);
    w:=StrToFloat(EditWeight.Text);

    with RadioGroupGender do begin
      if (ItemIndex=0) then
        gender:='Male'
      else if (ItemIndex=1) then
        gender:='Female'
    end;
    Calculate(RadioGroupAge,w,h,gender);
    FormCalculateLBM.hide;
    FormResultLBM.show;
  end;
end;

procedure TFormCalculateLBM.Label5Click(Sender: TObject);
begin
  FormCalculateLBM.Hide;
  FormSignOut.Show;
end;

procedure TFormCalculateLBM.LabelHomeClick(Sender: TObject);
begin
  FormCalculateLBM.Hide;
  FormMenu.Show;
end;

procedure TFormCalculateLBM.LabelLBMClick(Sender: TObject);
begin
  FormCalculateLBM.Hide;
  FormLBM.Show;
end;

end.
