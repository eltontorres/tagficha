unit u_subirNivel;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, uplaysound, Forms, Controls, Graphics, Dialogs,
  ExtCtrls;

type

  { TfrmSubirEstagio }

  TfrmSubirEstagio = class(TForm)
    plySubirEstagio: Tplaysound;
    procedure FormActivate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmSubirEstagio: TfrmSubirEstagio;

implementation

uses u_estagio_1;

{$R *.lfm}

{ TfrmSubirEstagio }

procedure TfrmSubirEstagio.FormActivate(Sender: TObject);
var
  frame1: TfraNovoEstagio;
begin
  plySubirEstagio.SoundFile := ExtractFileDir(Application.ExeName) +
      '/data/subirestagio.wav';
  plySubirEstagio.Execute;
  try
  frame1 := TfraNovoEstagio.Create(nil);
  frame1.Parent := frmSubirEstagio;
  except
    frame1.Free;
  end;
end;

end.

