unit U_dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.MySQLDef, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.MySQL, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  Tdm = class(TDataModule)
    Driver: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDConnection1: TFDConnection;
    tb_ong: TFDTable;
    DataSource1: TDataSource;
    tb_ongid_ong: TFDAutoIncField;
    tb_ongnome_ong: TStringField;
    tb_ongrua_ong: TStringField;
    tb_ongbairro_ong: TStringField;
    tb_ongcelular_ong: TStringField;
    tb_ongtelefone_ong: TStringField;
    tb_ongcnpj_ong: TStringField;
    tb_ongemail_ong: TStringField;
    tb_ongusuario_ong: TStringField;
    tb_ongsenha_ong: TStringField;
    tb_ongdescriçao_ong: TStringField;
    tb_ongtipo_doaçao: TIntegerField;
    tb_ongtipo_ong: TIntegerField;
    procedure DriverDriverCreated(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_principal;

{$R *.dfm}

procedure Tdm.DriverDriverCreated(Sender: TObject);
begin
    FDConnection1.Params.database := 'pi353friendheart_';
    FDConnection1.Params.username := 'root';
    FDConnection1.Params.password := '';

  FDConnection1.Connected := true;
  Driver.VendorLib := GetCurrentDir + 'lib\libmySQL.dll';
  tb_ong.TableName := 'usu_ong';
  tb_ong.Active := true;
end;

end.
