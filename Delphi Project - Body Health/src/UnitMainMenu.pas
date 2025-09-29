unit UnitMainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, MPlayer;

type
  TFormMainMenu = class(TForm)
    LabelStart: TLabel;
    MediaPlayer1: TMediaPlayer;
    Image1: TImage;
    procedure LabelStartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMainMenu: TFormMainMenu;

implementation

uses UnitLogIn;

{$R *.dfm}

procedure TFormMainMenu.LabelStartClick(Sender: TObject);
begin
 { mediaplayer1.FileName:='C:\Users\Bunga Cintya\Downloads\soundfic\BEL1.mp3';
  mediaplayer1.Open;
  mediaplayer1.Play;}
  FormInputName.Show;
  FormMainMenu.Hide;
end;

end.
