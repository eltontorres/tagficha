unit u_estagio_3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, ExtCtrls, StdCtrls;

type

  { TfraNovasEstatisticas }

  TfraNovasEstatisticas = class(TFrame)
    Button1: TButton;
    edtEnergiaHeroica: TEdit;
    edtResistenciaFisica: TEdit;
    edtResistenciaMagia: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

implementation

uses u_principal, u_subirNivel;

{$R *.lfm}

{ TfraNovasEstatisticas }

procedure TfraNovasEstatisticas.Button1Click(Sender: TObject);
begin
  frmPrincipal.edtEnergiaHeroica.Text := edtEnergiaHeroica.Text;
  frmSubirEstagio.Close;
end;

end.

