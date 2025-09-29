unit UnitSignUp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormSignUp = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Shape1: TShape;
    Label4: TLabel;
    procedure Label4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSignUp: TFormSignUp;

implementation

uses UnitMainMenu;

{$R *.dfm}

procedure TFormSignUp.Label4Click(Sender: TObject);
begin
  FormSignUp.Hide;
  FormMainMenu.Show;
end;

end.
