unit UnitMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormMenu = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure ButtonBMIClick(Sender: TObject);
    procedure ButtonBodyFatClick(Sender: TObject);
    procedure ButtonBodyTypeClick(Sender: TObject);
    procedure ButtonLBMClick(Sender: TObject);
    procedure ButtonBMRClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

uses UnitBMI, UnitBodyFat, UnitBodyType, UnitLBM, UnitBMR, UnitMainMenu,
  UnitSignOut;

{$R *.dfm}

procedure TFormMenu.ButtonBMIClick(Sender: TObject);
begin
  FormBMI.Show;
  FormMenu.Hide;
end;

procedure TFormMenu.ButtonBodyFatClick(Sender: TObject);
begin
  FormBodyFat.Show;
  FormMenu.Hide;
end;

procedure TFormMenu.ButtonBodyTypeClick(Sender: TObject);
begin
  FormBodyType.Show;
  FormMenu.Hide;
end;

procedure TFormMenu.ButtonLBMClick(Sender: TObject);
begin
  FormLBM.Show;
  FormMenu.Hide;
end;

procedure TFormMenu.ButtonBMRClick(Sender: TObject);
begin
  FormBMR.Show;
  FormMenu.Hide;
end;

procedure TFormMenu.Button1Click(Sender: TObject);
begin
  FormMainMenu.Show;
  FormMenu.Hide;
end;

procedure TFormMenu.Label1Click(Sender: TObject);
begin
  FormMenu.Hide;
  FormBMI.Show;
end;

procedure TFormMenu.Label2Click(Sender: TObject);
begin
  FormMenu.Hide;
  FormBodyFat.Show;
end;

procedure TFormMenu.Label5Click(Sender: TObject);
begin
  FormMenu.Hide;
  FormBMR.Show;
end;

procedure TFormMenu.Label4Click(Sender: TObject);
begin
  FormMenu.Hide;
  FormLBM.Show;
end;

procedure TFormMenu.Label3Click(Sender: TObject);
begin
  FormMenu.Hide;
  FormBodyType.Show;
end;

procedure TFormMenu.Label6Click(Sender: TObject);
begin
  FormMenu.Hide;
  FormSignOut.Show;
end;

end.

