@AbapCatalog.sqlViewName: 'ZRISHIASSOCEG4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Eg. Apply filter in Path Expression'
define view zrishi_cds_asso_eg4 as select from snwd_pd
association[1..*] to snwd_texts as _productName on $projection.name_guid = _productName.parent_key
association[1..*] to snwd_texts as _productDesc on $projection.desc_guid = _productDesc.parent_key
 {
    key node_key,
    product_id,
    category,
    name_guid,
    desc_guid,
    _productName[1:language = $session.system_language ].text as ProductName,
    _productDesc,
    _productDesc[1:language = $session.system_language ].text as ProdcutsDesc,
    
    _productName
}
