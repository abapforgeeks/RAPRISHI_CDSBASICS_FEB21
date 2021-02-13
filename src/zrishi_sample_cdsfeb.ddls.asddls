@AbapCatalog.sqlViewName: 'ZRISHICDSFEB'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS Sample'
define view zrishi_sample_cdsfeb as select from vbak {
    key vbeln,
    ernam,
    erdat,
    erzet,
    0.25 as decimalfield
}
