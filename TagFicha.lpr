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

program TagFicha;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Forms, Interfaces, crt, u_principal,
  u_dados, u_splash;

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  frmSplash := TfrmSplash.Create(nil);
  frmSplash.Show;
  frmSplash.Update;
  Delay(1500);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdtmDados, dtmDados);
  frmSplash.Hide;
  frmSplash.Free;
  Application.Run;
end.

