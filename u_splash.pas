unit u_splash;

{$mode objfpc}{$H+}

interface

uses
  Forms, ExtCtrls,
  StdCtrls, Classes;

type

  { TfrmSplash }

  TfrmSplash = class(TForm)
    Image1: TImage;
    Label1: TLabel;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.lfm}

end.

