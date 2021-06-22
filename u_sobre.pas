{
    TagFicha - Criador de fichas de personagem para o RPG Tagmar 2.

    Copyright (C) 2014-2015 Elton Santos Torres

    Este programa é um software livre: você pode redistribuí-lo e/ou
    modificá-lo dentro dos termos da Licença Pública Geral GNU como
    publicada pela Free Software Foundation(FSF); na versão 3 da
    Licença, ou (na sua opinião) qualquer versão.

    Este programa é distribuído na esperança de que possa ser útil,
    mas SEM NENHUMA GARANTIA; sem uma garantia implícita de ADEQUAÇÃO a qualquer
    MERCADO ou APLICAÇÃO EM PARTICULAR. Veja a
    Licença Pública Geral GNU para maiores detalhes.

    Você deve ter recebido uma cópia da Licença Pública Geral GNU
    junto com este programa, se não, escreva para a Free Software Foundation
    (FSF) Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
}

unit u_sobre;

{$mode objfpc}{$H+}

interface

uses
  Classes, Forms, Controls, Graphics, ComCtrls,
  StdCtrls, ExtCtrls, lclintf;

type

  { TfrmAjuda }

  TfrmAjuda = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
    procedure StaticText1MouseEnter(Sender: TObject);
    procedure StaticText1MouseLeave(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
    procedure StaticText2MouseEnter(Sender: TObject);
    procedure StaticText2MouseLeave(Sender: TObject);
    procedure StaticText3Click(Sender: TObject);
    procedure StaticText3MouseEnter(Sender: TObject);
    procedure StaticText3MouseLeave(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmAjuda: TfrmAjuda;

implementation

{$R *.lfm}

{ TfrmAjuda }

procedure TfrmAjuda.StaticText1Click(Sender: TObject);
begin
  OpenURL(StaticText1.Caption);
end;

procedure TfrmAjuda.Image1Click(Sender: TObject);
begin
  OpenURL('http://www.lazarus.freepascal.org/');
end;

procedure TfrmAjuda.FormActivate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmAjuda.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmAjuda.StaticText1MouseEnter(Sender: TObject);
begin
  StaticText1.Cursor := crHandPoint;

  StaticText1.Font.Color := clRed;
  StaticText1.Font.Style := [fsUnderline];
end;

procedure TfrmAjuda.StaticText1MouseLeave(Sender: TObject);
begin
  staticText1.Font.Color := clBlue;
  StaticText1.Font.Style := [];
end;

procedure TfrmAjuda.StaticText2Click(Sender: TObject);
begin
  OpenURL(StaticText2.Caption);
end;

procedure TfrmAjuda.StaticText2MouseEnter(Sender: TObject);
begin
  StaticText2.Cursor := crHandPoint;

  StaticText2.Font.Color := clRed;
  StaticText2.Font.Style := [fsUnderline];
end;

procedure TfrmAjuda.StaticText2MouseLeave(Sender: TObject);
begin
  staticText2.Font.Color := clBlue;
  StaticText2.Font.Style := [];
end;

procedure TfrmAjuda.StaticText3Click(Sender: TObject);
begin
  OpenURL(StaticText3.Caption);
end;

procedure TfrmAjuda.StaticText3MouseEnter(Sender: TObject);
begin
  StaticText3.Cursor := crHandPoint;

  StaticText3.Font.Color := clRed;
  StaticText3.Font.Style := [fsUnderline];
end;

procedure TfrmAjuda.StaticText3MouseLeave(Sender: TObject);
begin
  staticText3.Font.Color := clBlue;
  StaticText3.Font.Style := [];
end;

end.

