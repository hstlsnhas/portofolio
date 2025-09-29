unit UnitArticleBMI3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormArticleBMI3 = class(TForm)
    Shape2: TShape;
    Label3: TLabel;
    Image1: TImage;
    LabelNama: TLabel;
    Label2: TLabel;
    Shape3: TShape;
    Label5: TLabel;
    LabelHome: TLabel;
    procedure Label3Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure LabelHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArticleBMI3: TFormArticleBMI3;

implementation

uses UnitArticleBMI2, UnitSignOut, UnitBMI, UnitMenu;

{$R *.dfm}

procedure TFormArticleBMI3.Label3Click(Sender: TObject);
begin
  FormArticleBMI3.Hide;
  FormArticleBMI2.Show;
end;

procedure TFormArticleBMI3.Label2Click(Sender: TObject);
begin
  FormArticleBMI3.Hide;
  FormSignOut.Show;
end;

procedure TFormArticleBMI3.Label5Click(Sender: TObject);
begin
  FormArticleBMI3.Hide;
  FormBMI.Show;
end;

procedure TFormArticleBMI3.LabelHomeClick(Sender: TObject);
begin
  FormArticleBMI3.Hide;
  FormMenu.Show;
end;

end.
