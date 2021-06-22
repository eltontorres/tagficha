unit u_estagio_2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, StdCtrls, Buttons, ExtCtrls;

type

  { TfraNovaEnergiaHeroica }

  TfraNovaEnergiaHeroica = class(TFrame)
    Button1: TButton;
    edtEnergiaHeroica: TEdit;
    Image1: TImage;
    btnOK: TSpeedButton;
    rdbSortear: TRadioButton;
    procedure btnOKClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edtEnergiaHeroicaChange(Sender: TObject);
    procedure rdbSortearChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

implementation

uses u_principal, u_estagio_3, u_subirNivel;

{$R *.lfm}

{ TfraNovaEnergiaHeroica }

procedure TfraNovaEnergiaHeroica.rdbSortearChange(Sender: TObject);
begin
  btnOK.Enabled := True;
end;

procedure TfraNovaEnergiaHeroica.btnOKClick(Sender: TObject);
var
  valor: integer;
  profissao: integer;
  resultante: integer;
begin
  randomize;

  valor := random(10) + 1;

  profissao := frmPrincipal.cbxProfissao.ItemIndex;

  case profissao of
    0: resultante := 6;
    1: resultante := 4;
    2: resultante := 4;
    3: resultante := 2;
    4: resultante := 5;
    5: resultante := 3;
  end;

  case valor of
    0, 1: resultante := resultante;
    3, 4, 5: resultante := resultante + 1;
    6, 7, 8: resultante := resultante + 2;
    9, 10: resultante := resultante + 3;
  end;
  edtEnergiaHeroica.Text := IntToStr(resultante);
end;

procedure TfraNovaEnergiaHeroica.Button1Click(Sender: TObject);
var
  Frame: TfraNovasEstatisticas;
  EnergiaHeroicaAtual: Integer;
  ValorSorte: Integer;
  Fisico: Integer;
begin
  frame := TfraNovasEstatisticas.Create(nil);
  EnergiaHeroicaAtual := StrToInt(frmPrincipal.edtEnergiaHeroica.Text);
  ValorSorte := StrToInt(edtEnergiaHeroica.Text);
  Fisico := StrToInt(frmPrincipal.edtFisicoFinal.Text);
  Frame.edtEnergiaHeroica.Text := IntToStr(EnergiaHeroicaAtual + ValorSorte + Fisico);
  Frame.edtResistenciaFisica.Text := frmPrincipal.edtResFisica.Text;
  Frame.edtResistenciaMagia.Text := frmPrincipal.edtResMagia.Text;
  Frame.Parent := frmSubirEstagio;
end;

procedure TfraNovaEnergiaHeroica.edtEnergiaHeroicaChange(Sender: TObject);
begin
  if edtEnergiaHeroica.Text <> '' then
     Button1.Enabled := true;
end;

end.

