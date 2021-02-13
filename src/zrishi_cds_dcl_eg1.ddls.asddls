@AbapCatalog.sqlViewName: 'ZRISHIDCLEG1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Grant Full Authorization'
define view zrishi_cds_dcl_eg1 as select from vbak {
    key vbeln as SalesDocument,
    erdat as Createon,
    auart as SalesOrdertype,
    netwr as Netvalue,
    waerk as currencycode
}
