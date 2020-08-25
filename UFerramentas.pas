unit UFerramentas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC, System.Actions, Vcl.ActnList, Vcl.Menus,
  cxContainer, cxEdit, cxMemo, cxDBEdit, cxTextEdit, cxButtons, cxMaskEdit, cxDropDownEdit;

type
  TfrmFerramentas = class(TForm)
    PanelTesouraria: TPanel;
    LabelnomeCentral: TLabel;
    PageControlPrincipal: TcxPageControl;
    TabSheetAniversariantes: TcxTabSheet;
    TextEditBuscar: TcxTextEdit;
    LabelBuscar: TLabel;
    cxDBMemoRegistros: TcxDBMemo;
    LabelRegistros: TLabel;
    LabelMensagemAniversariantes: TLabel;
    TabSheetContatos: TcxTabSheet;
    LabelListaContatos: TLabel;
    PanelBotoes: TPanel;
    btnIncluir: TcxButton;
    btnSalvar: TcxButton;
    btnExcluir: TcxButton;
    btnCancelar: TcxButton;
    LabelIDContatos: TLabel;
    DBTextEditID: TcxDBTextEdit;
    LabelNome: TLabel;
    DBTextEditNome: TcxDBTextEdit;
    LabelDepartamento: TLabel;
    DBComboBoxDepartamento: TcxDBComboBox;
    LabelCargo: TLabel;
    DBComboBoxCargo: TcxDBComboBox;
    LabelCampo: TLabel;
    DBTextEditCampo: TcxDBTextEdit;
    LabelBuscarContatos: TLabel;
    DBTextEditBuscarContatos: TcxDBTextEdit;
    LabelEmail: TLabel;
    DBTextEditEmail: TcxDBTextEdit;
    DBTextEditTelefone: TcxDBTextEdit;
    LabelTelefone: TLabel;
    LabelClubeContatos: TLabel;
    DBTextEditClube: TcxDBTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFerramentas: TfrmFerramentas;

implementation

{$R *.dfm}

end.
