unit UfrmDescricao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects;

type
  TfrmDescricao = class(TForm)
    VertScrollBox1: TVertScrollBox;
    lyt_descricao: TLayout;
    rect_header: TRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDescricao: TfrmDescricao;

implementation

{$R *.fmx}

end.
