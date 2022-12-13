unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Ani, FMX.ListBox;

type
  TfrmPrincipal = class(TForm)
    imgCartaz: TImage;
    Image1: TImage;
    imgLogo: TImage;
    lytGenero: TLayout;
    Image2: TImage;
    lblFiltro: TLabel;
    Layout1: TLayout;
    imgTitulo: TImage;
    imgDegradee: TImage;
    Label1: TLabel;
    Image5: TImage;
    Layout2: TLayout;
    Image3: TImage;
    Label2: TLabel;
    Layout3: TLayout;
    Image4: TImage;
    Label3: TLabel;
    lytMenu: TLayout;
    Rectangle1: TRectangle;
    lytFechar: TLayout;
    Image6: TImage;
    ListBox1: TListBox;
    FloatAnimation1: TFloatAnimation;
  private
    { Private declarations }

    procedure LoadMenu;
    procedure OpenMenu(ind: Boolean);
    procedure SetupMenu(Item: TlistBoxItem; texto: String);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}
{ TForm1 }

procedure TfrmPrincipal.LoadMenu;
begin
  ListBox1.Items.Clear;

  Self.SetupMenu(TlistBoxItem.Create(ListBox1), 'Todos os gêneros');
  Self.SetupMenu(TlistBoxItem.Create(ListBox1), 'Disponível para download');
  Self.SetupMenu(TlistBoxItem.Create(ListBox1), 'Ação');
  Self.SetupMenu(TlistBoxItem.Create(ListBox1), 'Adolescente');
  Self.SetupMenu(TlistBoxItem.Create(ListBox1), 'Anime');
  Self.SetupMenu(TlistBoxItem.Create(ListBox1), 'Asiáticos');
  Self.SetupMenu(TlistBoxItem.Create(ListBox1), 'Brasileiros');
  Self.SetupMenu(TlistBoxItem.Create(ListBox1), 'Comédia');
  Self.SetupMenu(TlistBoxItem.Create(ListBox1), 'Drama');
  Self.SetupMenu(TlistBoxItem.Create(ListBox1), 'Esportes');
  Self.SetupMenu(TlistBoxItem.Create(ListBox1), 'Mistério');
  Self.SetupMenu(TlistBoxItem.Create(ListBox1), 'Novelas');
  Self.SetupMenu(TlistBoxItem.Create(ListBox1), 'Suspense');
  Self.SetupMenu(TlistBoxItem.Create(ListBox1), 'Terror');
end;

procedure TfrmPrincipal.OpenMenu(ind: Boolean);
begin
  // Esconde o item selecionado ...
  ListBox1.ItemIndex := -1;

  // Volta a listagem para o início
  ListBox1.ScrollToItem(ListBox1.ItemByIndex(0));

  if ind then
  begin
    lytMenu.Visible := True;
    lytMenu.Tag := 1;
    lytGenero.AnimateFloat('Opacity', 0, 0.2);
    FloatAnimation1.Inverse := False;
  end
  else
  begin
    lytMenu.Tag := 0;
    lytGenero.AnimateFloat('Opacity', 1, 0.4);
    FloatAnimation1.Inverse := True;
  end;

  FloatAnimation1.Start;
end;

procedure TfrmPrincipal.SetupMenu(Item: TlistBoxItem; texto: String);
begin
  Item.Text := texto;
  Item.StyledSettings := Item.StyledSettings - [TStyledSetting.Size,
    TStyledSetting.FontColor, TStyledSetting.Other];
  Item.TextSettings.HorzAlign := TTextAlign.Center;
  Item.HitTest := True;

{$IFDEF MSWINDOWS}
  Item.OnClick := Self.MenuClick;
{$ELSE}
  Item.OnTap := Self.MenuTap;
{$ENDIF}

  if ListBox1.Items.Count > 0 then
  begin
    Item.FontColor := $FFC3C3C3;
    Item.Font.Size := 20;
    Item.Height := 80;
  end
  else
  begin
    Item.FontColor := $FFFFFFFF;
    Item.Font.Size := 25;
    Item.Height := 110;
  end;
  ListBox1.AddObject(Item);
end;

end.
