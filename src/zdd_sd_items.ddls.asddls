@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Posiciones de Documentos de Ventas'
@Metadata.allowExtensions: true
define view entity zdd_sd_items
  as select from zta_vbap
  association to parent zdd_sd_header as _Header on $projection.Vbeln = _Header.Vbeln
{
  key vbeln  as Vbeln,
  key posnr  as Posnr,
      matnr  as Matnr,
      arktx  as Arktx,
      meins  as Meins,
      @Semantics.amount.currencyCode: 'waerk'
      netwr  as Netwr,
      waerk  as Waerk,
      @Semantics.quantity.unitOfMeasure: 'vrkme'
      kwmeng as Kwmeng,
      vrkme  as Vrkme,
      werks  as Werks,
      @Semantics.amount.currencyCode: 'waerk'
      netpr  as Netpr,
      _Header
}
