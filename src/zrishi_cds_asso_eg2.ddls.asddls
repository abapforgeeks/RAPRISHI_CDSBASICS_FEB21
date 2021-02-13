@AbapCatalog.sqlViewName: 'ZRISHIASSOEG2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Association forming left outer join'
define view zrishi_cds_asso_eg2 as select from snwd_so_i 
association[0..1] to snwd_pd as _products on $projection.product_guid = _products.node_key
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
    
    _products.product_id,
    _products.category,
    _products.price,
    _products
}
