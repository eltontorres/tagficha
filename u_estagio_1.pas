unit u_estagio_1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, ExtCtrls, StdCtrls;

type

  { TfraNovoEstagio }

  TfraNovoEstagio = class(TFrame)
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

implementation

uses u_estagio_2, u_subirNivel;

{$R *.lfm}

{ TfraNovoEstagio }

procedure TfraNovoEstagio.Button1Click(Sender: TObject);
var
  frame: TfraNovaEnergiaHeroica;
begin
  try
  frame := TfraNovaEnergiaHeroica.Create(nil);
  frame.Parent := frmSubirEstagio;
  except
    frame.Free;
  end;
end;

end.

