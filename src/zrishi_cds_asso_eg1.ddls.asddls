@AbapCatalog.sqlViewName: 'ZRIHIASSOEG1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Example On Association'
define view zrishi_cds_asso_eg1 as select from snwd_so_i 
association[0..1] to snwd_pd as _Products on $projection.product_guid = _Products.node_key
{
    key node_key,
    parent_key,
    so_item_pos,
    product_guid,
    currency_code,
    gross_amount,
    net_amount,
    tax_amount,
    item_atp_status,
    _Products
}
