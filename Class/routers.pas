unit routers;

interface
 type
   TRouters = class
     private

     public
        constructor Create;
        destructor Destroy; override;
   end;


   var
   Router :  TRouters;


implementation

Uses

 Router4D, unit59, uCentral, Unit1;


{ TRouters }

constructor TRouters.Create;
begin
    TRouter4D
      .Switch
      .Router('Inicio', TFCentral)
      .Router('Facturacion', TFrmNFact_normal)
      .Router('Login', TfrmLogin);



end;

destructor TRouters.Destroy;
begin

  inherited;
end;

initialization
   Router := TRouters.Create;

finalization
  Router.Free;

end.
