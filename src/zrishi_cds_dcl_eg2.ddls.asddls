@AbapCatalog.sqlViewName: 'ZRISHIDCLEG2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Grant Full Authorization'
define view ZRISHI_CDS_DCL_EG2 as select from vbak {
    key vbeln as SalesDocument,
    erdat as Createon,
    auart as SalesOrdertype,
    netwr as Netvalue,
    waerk as currencycode
}
