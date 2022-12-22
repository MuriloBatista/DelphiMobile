unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts,
  FMX.TabControl;

type
  TfrmPrincipal = class(TForm)
    rect_header: TRectangle;
    rect_searchbar_place: TRectangle;
    rect_searchbar: TRectangle;
    img_menu: TImage;
    img_basket: TImage;
    img_search: TImage;
    lblSearch: TLabel;
    rect_types: TRectangle;
    lblCoffee: TLabel;
    lyt_principal: TLayout;
    lblNonCoffee: TLabel;
    Line1: TLine;
    lyt_menu: TLayout;
    rect_menu_item: TRectangle;
    lblMenuItem: TLabel;
    VertScrollBox1: TVertScrollBox;
    rect_item_1: TRectangle;
    rect_item_2: TRectangle;
    flyt_content: TFlowLayout;
    rect_item_3: TRectangle;
    rect_item_4: TRectangle;
    rect_item_5: TRectangle;
    rect_item_6: TRectangle;
    rect_item_7: TRectangle;
    rect_item_8: TRectangle;
    rect_background: TRectangle;
    rect_desc_1: TRectangle;
    rect_desc_2: TRectangle;
    rect_desc_3: TRectangle;
    rect_desc_4: TRectangle;
    rect_desc_5: TRectangle;
    rect_desc_6: TRectangle;
    rect_desc_7: TRectangle;
    rect_desc_8: TRectangle;
    lblDesc1: TLabel;
    lblPrice1: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lyt_footermenu: TLayout;
    rect_footer_menu: TRectangle;
    img_user: TImage;
    img_like: TImage;
    img_bell: TImage;
    rect_home: TRectangle;
    img_home: TImage;
    lblHome: TLabel;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    rect_header_desc: TRectangle;
    img_back: TImage;
    img_options: TImage;
    rect_content_desc: TRectangle;
    lblTituloDesc: TLabel;
    lblDesc: TLabel;
    rect_img_desc: TRectangle;
    rect_size: TRectangle;
    lblSize: TLabel;
    Circle1: TCircle;
    Circle2: TCircle;
    Circle3: TCircle;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    rect_quant: TRectangle;
    Label18: TLabel;
    Circle4: TCircle;
    Label19: TLabel;
    Circle5: TCircle;
    Label20: TLabel;
    Rectangle2: TRectangle;
    Label22: TLabel;
    Circle7: TCircle;
    Label23: TLabel;
    Circle8: TCircle;
    Label24: TLabel;
    Circle9: TCircle;
    Label25: TLabel;
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
