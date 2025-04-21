@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cabecera de Pedidos de Ventas'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zdd_sd_header
  as select from zta_vbak
  composition [0..*] of zdd_sd_items as _It
{
  key vbeln as Vbeln,
      erdat as Erdat,
      erzet as Erzet,
      auart as Auart,
      @Semantics.amount.currencyCode: 'waerk'
      netwr as Netwr,
      waerk as Waerk,
      vkorg as Vkorg,
      vtweg as Vtweg,
      spart as Spart,
      kunnr as Kunnr,
      _It // Make association public
}
