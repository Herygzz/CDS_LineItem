@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projeción Cabecera de Pedidos de Ventas'
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: [ 'VBELN' ]
define root view entity zdd_sd_header_proj
  as projection on zdd_sd_header
{
  key Vbeln,
      Erdat,
      Erzet,
      Auart,
      @Semantics.amount.currencyCode: 'waerk'
      Netwr,
      Waerk,
      Vkorg,
      Vtweg,
      Spart,
      Kunnr,
      /* Associations */
      _It : redirected to composition child zdd_sd_items_proj
}
