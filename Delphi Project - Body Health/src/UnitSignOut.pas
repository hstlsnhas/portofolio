unit UnitSignOut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, MPlayer;

type
  TFormSignOut = class(TForm)
    Image1: TImage;
    LabelNama: TLabel;
    Button1: TButton;
    Button2: TButton;
    MediaPlayer1: TMediaPlayer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSignOut: TFormSignOut;

implementation

uses UnitMainMenu, UnitLogIn;

{$R *.dfm}

procedure TFormSignOut.Button1Click(Sender: TObject);
begin
  {mediaplayer1.FileName:='C:\Users\Bunga Cintya\Downloads\soundfic\BEL3.mp3';
  mediaplayer1.Open;
  mediaplayer1.Play;}
  ShowMessage('Are you sure want to close this program?');
  application.Terminate;
end;

procedure TFormSignOut.Button2Click(Sender: TObject);
begin
  {mediaplayer1.FileName:='C:\Users\Bunga Cintya\Downloads\soundfic\BEL2.mp3';
  mediaplayer1.Open;
  mediaplayer1.Play;}
  FormInputName.EditName.Text:='';
  FormSignOut.Hide;
  FormMainMenu.Show;
end;

end.
