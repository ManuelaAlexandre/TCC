program FriendsHeart;

uses
  Vcl.Forms,
  U_principal in 'fontes\U_principal.pas' {frm_principal},
  U_dm in 'fontes\U_dm.pas' {dm: TDataModule},
  U_cdOng in 'fontes\U_cdOng.pas' {frm_cad_ong};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfrm_cad_ong, frm_cad_ong);
  Application.Run;
end.
