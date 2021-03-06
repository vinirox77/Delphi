unit dmDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef;

type
  TdmDesbravador = class(TDataModule)
    DataSource_Desbravador: TDataSource;
    conDesbravador: TFDConnection;
    FDQueryDesbravador: TFDQuery;
    DataSource_Unidades: TDataSource;
    conUnidades: TFDConnection;
    FDQueryUnidades: TFDQuery;
    DataSource_Classes: TDataSource;
    conClasses: TFDConnection;
    FDQueryClasses: TFDQuery;
    DataSource_Especialidades: TDataSource;
    FDQueryEspecialidades: TFDQuery;
    conEspecialidades: TFDConnection;
    FDQueryClube: TFDQuery;
    conClube: TFDConnection;
    DataSource_Clube: TDataSource;
    procedure DataSource_DesbravadorDataChange(Sender: TObject; Field: TField);
    procedure DataSource_EspecialidadesDataChange(Sender: TObject; Field: TField);
    procedure DataSource_UnidadesDataChange(Sender: TObject; Field: TField);
    procedure DataSource_ClassesDataChange(Sender: TObject; Field: TField);
    procedure DataSource_ClubeDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDesbravador: TdmDesbravador;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UEspecialidades, UUnidades, UDesbravadores, UClasses, UClube;

{$R *.dfm}

procedure TdmDesbravador.DataSource_ClassesDataChange(Sender: TObject; Field: TField);
begin
  frmClasses.btnIncluir.Enabled := DataSource_Classes.DataSet.State = dsBrowse;
  frmClasses.btnSalvar.Enabled := DataSource_Classes.DataSet.State in [dsInsert, dsEdit];
  frmClasses.btnCancelar.Enabled := DataSource_Classes.DataSet.State in [dsInsert, dsEdit];
  frmClasses.btnExcluir.Enabled := DataSource_Classes.DataSet.RecordCount > 0;
end;

procedure TdmDesbravador.DataSource_ClubeDataChange(Sender: TObject; Field: TField);
begin
  frmClube.btnIncluir.Enabled := DataSource_Clube.DataSet.State = dsBrowse;
  frmClube.btnSalvar.Enabled := DataSource_Clube.DataSet.State in [dsEdit, dsInsert];
  frmClube.btnCancelar.Enabled := DataSource_Clube.DataSet.State in [dsEdit, dsInsert];
  frmClube.btnExcluir.Enabled := DataSource_Clube.DataSet.RecordCount > 0;
end;

procedure TdmDesbravador.DataSource_DesbravadorDataChange(Sender: TObject; Field: TField);
begin
begin
  frmDesbravadores.btnIncluir.Enabled := DataSource_Desbravador.State = dsBrowse;
  frmDesbravadores.btnSalvar.Enabled := DataSource_Desbravador.State in [dsEdit, dsInsert];
  frmDesbravadores.Btncancelar.Enabled := DataSource_Desbravador.State in [dsEdit, dsInsert];
  frmDesbravadores.btnExcluir.Enabled := DataSource_Desbravador.DataSet.RecordCount > 0;
end;
end;

procedure TdmDesbravador.DataSource_EspecialidadesDataChange(Sender: TObject; Field: TField);
begin
  frmEspecialidades.BtnIncluir.Enabled := DataSource_Especialidades.State = dsBrowse;
  frmEspecialidades.btnSalvar.Enabled := DataSource_Especialidades.State in [dsInsert, dsEdit];
  frmEspecialidades.btnCancelar.Enabled := DataSource_Especialidades.State in [dsInsert, dsEdit];
  frmEspecialidades.btnExcluir.Enabled := DataSource_Especialidades.DataSet.RecordCount > 0;
end;

procedure TdmDesbravador.DataSource_UnidadesDataChange(Sender: TObject; Field: TField);
begin
  frmUnidades.btnIncluir.Enabled := DataSource_Unidades.DataSet.State = dsBrowse;
  frmUnidades.btnSalvar.Enabled := DataSource_Unidades.DataSet.State in [dsInsert, dsEdit];
  frmUnidades.btnCancelar.Enabled := DataSource_Unidades.DataSet.State in [dsInsert, dsEdit];
  frmUnidades.btnExcluir.Enabled := DataSource_Unidades.DataSet.RecordCount > 0;
end;

end.

