unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.StdCtrls, REST.Types;

type
  TForm1 = class(TForm)
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    Memo1: TMemo;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ResetDefaultRESTCon;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

CONST
  URL: String = 'http://api.postmon.com.br/v1/cep/';

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  ResetDefaultRESTCon;
  RESTRequest.Resource := '\{CEP}';
  RESTRequest.Method := TRESTRequestMethod.rmGet;
  RESTRequest.Params.AddUrlSegment('CEP',Edit1.Text);
  RESTRequest.Execute;
end;

procedure TForm1.ResetDefaultRESTCon;
begin
  RESTClient.ResetToDefaults;
  RESTRequest.ResetToDefaults;
  RESTResponse.ResetToDefaults;
  RESTClient.BaseURL := URL;
end;

end.
