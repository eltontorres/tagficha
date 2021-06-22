unit u_dados;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, ZConnection, ZDataset, db, Forms;

type

  { TdtmDados }

  TdtmDados = class(TDataModule)
    dtsMagias: TDataSource;
    zcnMagias: TZConnection;
    zqrMagias: TZQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  dtmDados: TdtmDados;

implementation

{$R *.lfm}

{ TdtmDados }

procedure TdtmDados.DataModuleCreate(Sender: TObject);
begin
  zcnMagias.Database := ExtractFileDir(Application.ExeName) +
        '\data\magias\magias.db';
end;

end.

