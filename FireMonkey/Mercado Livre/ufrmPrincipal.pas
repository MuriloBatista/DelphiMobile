unit ufrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TfrmPrincipal = class(TForm)
    VertScrollBox1: TVertScrollBox;
    rect_valores: TRectangle;
    lblTitulo: TLabel;
    lytProduto: TLayout;
    lblTituloProduto: TLabel;
    lblCentavosProduto: TLabel;
    lblReaisProduto: TLabel;
    lytEnvio: TLayout;
    lblTituloEnvio: TLabel;
    lblReaisEnvio: TLabel;
    lblCentavosEnvio: TLabel;
    linhaEnvio: TLine;
    lytParcelas: TLayout;
    lblTituloParcelas: TLabel;
    lblReaisParcelas: TLabel;
    lblCentavosParcelas: TLabel;
    lyt_botao_compra: TLayout;
    Rectangle1: TRectangle;
    btn_comprar: TSpeedButton;
    lyt_compra_ok: TLayout;
    Image1: TImage;
    lyt_loading_compra: TLayout;
    rect_barra: TRectangle;
    rect_fundo: TRectangle;
    Label1: TLabel;
    rect_fundo_branco_top: TRectangle;
    lyt_detalhes: TLayout;
    rect_fundo_branco_bottom: TRectangle;
    Circle1: TCircle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

end.
