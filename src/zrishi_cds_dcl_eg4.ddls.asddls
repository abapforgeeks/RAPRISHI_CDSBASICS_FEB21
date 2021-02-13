@AbapCatalog.sqlViewName: 'ZRISHIDCLEG4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'reuse DCL'
define view ZRISHI_CDS_DCL_EG4 as select from vbak {
    key vbeln,
    auart as SalesOrdertype,
    erdat,
    erzet,
    netwr
}
