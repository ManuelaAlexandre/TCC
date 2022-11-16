unit U_cdOng;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Imaging.jpeg, Data.DB;

type
  Tfrm_cad_ong = class(TForm)
    cd_OngRua: TDBEdit;
    cd_OngBairro: TDBEdit;
    cd_OngTelefone: TDBEdit;
    cd_OngCnpj: TDBEdit;
    celular_ong: TDBEdit;
    cd_OngEmail: TDBEdit;
    cd_OngUsuario: TDBEdit;
    cd_OngSenha: TDBEdit;
    cd_OngDescricao: TDBEdit;
    Image1: TImage;
    btn_voltar1: TButton;
    btn_salvar: TButton;
    cd_OngNome: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    procedure btn_salvarClick(Sender: TObject);
  private
   procedure ConfigBotoes;
  public
    { Public declarations }
  end;

var
  frm_cad_ong: Tfrm_cad_ong;

implementation

{$R *.dfm}

uses U_dm, U_principal;

procedure Tfrm_cad_ong.btn_salvarClick(Sender: TObject);
begin
   //dm.tb_ong.Active := true;
   dm.tb_ong.Insert;
   showmessage('oiii');
   dm.tb_ong.ClearFields;
   frm_cad_ong.Visible :=false;
   frm_principal.visible := true;
end;

procedure Tfrm_cad_ong.ConfigBotoes;
begin
  //btn_inserir.Enabled := dm.tb_ong.State in [dsbrowse];
 //btn_editar.Enabled := dm.tb_clientes.State in [dsbrowse];
 //btn_excluir.Enabled := dm.tb_clientes.State in [dsbrowse];
 btn_salvar.Enabled := dm.tb_ong.State in [dsinsert, dsedit];
 //btn_cancelar.Enabled := dm.tb_clientes.State in [dsinsert, dsedit];
end;

end.
