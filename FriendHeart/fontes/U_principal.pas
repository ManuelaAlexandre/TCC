unit U_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls;

type
  Tfrm_principal = class(TForm)
    Image1: TImage;
    lb_cadastro: TLabel;
    lb_tipodoacao: TLabel;
    lb_login: TLabel;
    lb_sobrenos: TLabel;
    procedure lb_cadastroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses U_cdOng, U_dm;

procedure Tfrm_principal.lb_cadastroClick(Sender: TObject);
begin
 frm_principal.Visible := false;
 frm_cad_ong.Visible := true;
 dm.tb_ong.Active := true;
end;


end.
