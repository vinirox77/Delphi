unit UEspecialidades;

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
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.DBCtrls, dmDados, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC;

type
  TfrmEspecialidades = class(TForm)
    PanelCentral: TPanel;
    LabelnomeCentral: TLabel;
    PanelBotoes: TPanel;
    btnIncluir: TcxButton;
    btnSalvar: TcxButton;
    btnExcluir: TcxButton;
    LabelTipoEspecialidade: TLabel;
    DBTextEditID: TcxDBTextEdit;
    LabelID: TLabel;
    DBComboBoxTipoEspecialidade: TcxDBComboBox;
    LabelEspecialidade: TLabel;
    btnCancelar: TcxButton;
    DBTextEditEspecialidades: TcxDBTextEdit;
    PageControlPrincipal: TcxPageControl;
    TabSheet_Especialidades: TcxTabSheet;
    TabSheetRegistro_Especialidades: TcxTabSheet;
    LabelInstrutor: TLabel;
    DBTextEditInstrutor: TcxDBTextEdit;
    LabelConclusao: TLabel;
    TcxConclusao: TcxDBDateEdit;
    LabelMembro: TLabel;
    DBTextEditEditDesbravador: TcxDBTextEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEspecialidades: TfrmEspecialidades;

implementation

{$R *.dfm}

procedure TfrmEspecialidades.btnCancelarClick(Sender: TObject);
begin
  dmDesbravador.DataSource_Especialidades.DataSet.Cancel;
end;

procedure TfrmEspecialidades.btnExcluirClick(Sender: TObject);
begin
  dmDesbravador.DataSource_Especialidades.DataSet.Delete;
end;

procedure TfrmEspecialidades.btnIncluirClick(Sender: TObject);
begin
  dmDesbravador.DataSource_Especialidades.DataSet.Close;
  dmDesbravador.DataSource_Especialidades.DataSet.Open;
  dmDesbravador.DataSource_Especialidades.DataSet.Insert;
end;

procedure TfrmEspecialidades.btnSalvarClick(Sender: TObject);
begin
  dmDesbravador.DataSource_Especialidades.DataSet.Post;
end;

end.
