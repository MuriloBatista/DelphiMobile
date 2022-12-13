unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Objects, FMX.Controls.Presentation, FMX.Layouts,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView;

type
  TfrmPrincipal = class(TForm)
    Layout1: TLayout;
    ToolBar1: TToolBar;
    retangulo: TRectangle;
    edtNovaTarefa: TEdit;
    btnAdicionar: TButton;
    lstTarefas: TListView;
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lstTarefasDeleteItem(Sender: TObject; AIndex: Integer);
  private
  { Private declarations }
    const
    DATA = 'DATA';
    procedure AtualizarListaDevice;
    procedure AdicionarIntem(const aNovaTarefa: String);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

uses
  SharedPreference, JSON;

{ TfrmPrincipal }

procedure TfrmPrincipal.AdicionarIntem(const aNovaTarefa: String);
var
  xItem : TListViewItem;
begin
  xItem := lstTarefas.Items.Add;
  xItem.text := aNovaTarefa;

  self.AtualizarListaDevice;
end;

procedure TfrmPrincipal.AtualizarListaDevice;
var
  xObjeto: TJSONObject;
  I: Integer;
begin
  xObjeto := TJSONObject.Create;
  try
    for I := 0 to Pred(lstTarefas.ItemCount) do
    begin
      xObjeto.AddPair('item', lstTarefas.Items[I].Text);
    end;
    SetPropertiesDispositivo(DATA, xObjeto.ToString);
  finally
    xObjeto.Free;
  end;
end;

procedure TfrmPrincipal.btnAdicionarClick(Sender: TObject);
begin
  Self.AdicionarIntem(edtNovaTarefa.Text);
  edtNovaTarefa.Text := '';
end;



procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  xObjeto, xSubObjeto : TJSONObject;
  xJSArray : TJSONArray;
  xJSValue : TJSONValue;
  j, i : Integer;
begin
  xObjeto := TJSONObject.ParseJSONValue(GetPropertiesDispositivo(DATA))
  as TJSONObject;

  if Assigned(xObjeto) then
  begin
    lstTarefas.Items.Clear;

    for i := 0 to xObjeto.Size-1 do
      begin
        xJSValue := xObjeto.Get(j).JsonValue;
        Self.AdicionarIntem(xJSValue.Value);
      end;
  end;
end;

procedure TfrmPrincipal.lstTarefasDeleteItem(Sender: TObject; AIndex: Integer);
begin
  Self.AtualizarListaDevice;
end;

end.
