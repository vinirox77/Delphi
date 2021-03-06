unit UDesbravadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxMaskEdit,
  cxDropDownEdit, cxCheckBox, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxScrollBox, Vcl.DBCtrls, cxCalendar,
  cxButtonEdit, EdComboSQLFD, ACBrBase, ACBrSocket, ACBrCEP, ACBrEnterTab;

type
  TfrmDesbravadores = class(TForm)
    PanelCentral: TPanel;
    LabelnomeCentral: TLabel;
    PanelBotoes: TPanel;
    btnIncluir: TcxButton;
    btnSalvar: TcxButton;
    btnExcluir: TcxButton;
    LabelnmCompleto: TLabel;
    DBTextEditnmCompleto: TcxDBTextEdit;
    LabelFuncao: TLabel;
    DBComboBoxFuncao: TcxDBComboBox;
    DBCheckBoxMasculino: TcxDBCheckBox;
    DBCheckBoxFeminino: TcxDBCheckBox;
    LabelBatizado: TLabel;
    DBCheckBoxBatizado: TcxDBCheckBox;
    LabelDtNascimento: TLabel;
    LabelTelefone: TLabel;
    LabelCelular: TLabel;
    LabelEmail: TLabel;
    DBTextEditEmail: TcxDBTextEdit;
    PageControlPrincipal: TcxPageControl;
    TS_Membros: TcxTabSheet;
    ScrollBoxPrincipal: TcxScrollBox;
    LabelCEP: TLabel;
    LabelEndereco: TLabel;
    DBTextEditEndereco: TcxDBTextEdit;
    LabelNumero: TLabel;
    DBTextEditNumero: TcxDBTextEdit;
    LabelBairro: TLabel;
    DBTextEditBairro: TcxDBTextEdit;
    LabelCertidao: TLabel;
    DBTextEditCertidao: TcxDBTextEdit;
    LabelRG: TLabel;
    DBTextEditRG: TcxDBTextEdit;
    LabelOrgExpedidor: TLabel;
    DBTextEditOrgExpedidor: TcxDBTextEdit;
    LabelCPF: TLabel;
    LabelCidade: TLabel;
    TS_DadosPais: TcxTabSheet;
    ScrollBoxDadosSecundarios: TcxScrollBox;
    LabelTelPai: TLabel;
    LabelDocumentoProfissional: TLabel;
    LabelnmMae: TLabel;
    LabelProfSaude: TLabel;
    LabelnmPai: TLabel;
    LabelemailPai: TLabel;
    DBTextEditTelPai: TcxDBTextEdit;
    DBTextEditnmPai: TcxDBTextEdit;
    DBTextEditDocProfissional: TcxDBTextEdit;
    DBTextEditnmMae: TcxDBTextEdit;
    DBTextEditEmailPai: TcxDBTextEdit;
    DBComboBoxProfSaude: TcxDBComboBox;
    LabelemailMae: TLabel;
    DBTextEditEmailMae: TcxDBTextEdit;
    LabeltelMae: TLabel;
    DBTextEditTelMae: TcxDBTextEdit;
    Label5: TLabel;
    LabelnmResponsavel: TLabel;
    DBTextEditnmResponsavel: TcxDBTextEdit;
    LabelgrauParentesco: TLabel;
    DBTextEditGrauParentesco: TcxDBTextEdit;
    LabelemailResponsavel: TLabel;
    DBTextEditEmailResponsavel: TcxDBTextEdit;
    LabeltelResponsavel: TLabel;
    DBTextEditTelefoneResponsavel: TcxDBTextEdit;
    LabelCPFResponsavel: TLabel;
    LabelTamCamiseta: TLabel;
    DBComboBoxTamCamiseta: TcxDBComboBox;
    LabelEstadoCivilPaterno: TLabel;
    LabelProfissao: TLabel;
    DBTextEditProfissao: TcxDBTextEdit;
    LabelID: TLabel;
    DBComboBoxEstadoCivil: TcxDBComboBox;
    btnCancelar: TcxButton;
    cxdbDateTime: TcxDBDateEdit;
    DBMaskEditTelefone: TcxDBMaskEdit;
    DBMaskEditCelular: TcxDBMaskEdit;
    DBMaskEditCep: TcxDBMaskEdit;
    DBMaskEditCPF: TcxDBMaskEdit;
    LabelSexo: TLabel;
    DBMaskEditCPFResponsavel: TcxDBMaskEdit;
    DBTextEditID: TcxDBTextEdit;
    ComboSQLFDTipoPercentualCidade: TEdComboSQLFD;
    ACBrEnterTabDBV: TACBrEnterTab;
    ACBrCEP: TACBrCEP;
    Label1: TLabel;
    DBTextEditNaturalidade: TcxDBTextEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBMaskEditCepExit(Sender: TObject);
    procedure ACBrCEPBuscaEfetuada(Sender: TObject);
    procedure DBCheckBoxMasculinoPropertiesChange(Sender: TObject);
    procedure DBCheckBoxFemininoPropertiesChange(Sender: TObject);
  private
    procedure ACBrCEP1AntesAbrirHTTP(var AURL: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDesbravadores: TfrmDesbravadores;

implementation

uses
  dmDados;


{$R *.dfm}

procedure TfrmDesbravadores.ACBrCEP1AntesAbrirHTTP(var AURL: string);
begin

end;

procedure TfrmDesbravadores.ACBrCEPBuscaEfetuada(Sender: TObject);
  var
    i : integer;
begin
  for I := 0 to ACBrCEP.Enderecos.Count -1 do
    begin
      DBMaskEditCep.Text := ACBrCEP.Enderecos[i].CEP;
      ComboSQLFDTipoPercentualCidade.Text := ACBrCEP.Enderecos[i].Municipio;
      DBTextEditEndereco.Text := ACBrCEP.Enderecos[i].Logradouro;
      DBTextEditBairro.Text := ACBrCEP.Enderecos[i].Bairro;
    end;
end;

procedure TfrmDesbravadores.btnCancelarClick(Sender: TObject);
begin
  dmDesbravador.DataSource_Desbravador.DataSet.Cancel;
end;

procedure TfrmDesbravadores.btnExcluirClick(Sender: TObject);
begin
  dmDesbravador.DataSource_Desbravador.DataSet.Delete;
end;

procedure TfrmDesbravadores.btnIncluirClick(Sender: TObject);
begin
  dmDesbravador.DataSource_Desbravador.DataSet.Close;
  dmDesbravador.DataSource_Desbravador.DataSet.Open;
  dmDesbravador.DataSource_Desbravador.DataSet.Insert;
end;

procedure TfrmDesbravadores.btnSalvarClick(Sender: TObject);
begin
  dmDesbravador.DataSource_Desbravador.DataSet.Post;
end;


procedure TfrmDesbravadores.DBCheckBoxFemininoPropertiesChange(Sender: TObject);
begin
  if DBCheckBoxFeminino.Checked = True then
  begin
    DBCheckBoxMasculino.Enabled := False;
  end
  else
  begin
    DBCheckBoxMasculino.Enabled := True;
  end;
end;

procedure TfrmDesbravadores.DBCheckBoxMasculinoPropertiesChange(Sender: TObject);
begin
  if DBCheckBoxMasculino.Checked = True then
  begin
    DBCheckBoxFeminino.Enabled := False;
  end
  else
  begin
    DBCheckBoxFeminino.Enabled := True;
  end;
end;

procedure TfrmDesbravadores.DBMaskEditCepExit(Sender: TObject);
begin
  ACBrCEP.BuscarPorCEP(DBMaskEditCep.Text);
  if DBTextEditCertidao.CanFocus then
  begin
    DBTextEditCertidao.SetFocus;
  end;
end;

end.
