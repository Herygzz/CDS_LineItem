@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Proj. Posiciones de Pedidos de Ventas'
@Metadata.allowExtensions: true
define view entity zdd_sd_items_proj
  as projection on zdd_sd_items
{
  key Vbeln,
  key Posnr,
      Matnr,
      Arktx,
      Meins,
      @Semantics.amount.currencyCode: 'waerk'
      Netwr,
      Waerk,
      @Semantics.quantity.unitOfMeasure: 'vrkme'
      Kwmeng,
      Vrkme,
      Werks,
      @Semantics.amount.currencyCode: 'waerk'
      Netpr,
      /* Associations */

      _Header : redirected to parent zdd_sd_header_proj
}
