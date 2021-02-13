@AbapCatalog.sqlViewName: 'ZRISHICDSASSOEG5'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS View on top an Association'
define view zrishi_cds_asso_eg5 as select from zrishi_cds_asso_eg4._productName

{
    key node_key as NodeKey,
    parent_key as ParentKey,
    language as Language,
    text as Text,
    _dataaging as Dataaging
}
