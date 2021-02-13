@AbapCatalog.sqlViewName: 'ZRISHISVFEB'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Session Variables Example'
@ClientHandling.algorithm: #SESSION_VARIABLE
define view zcds_sesssion_var as select from snwd_so {
    created_by as CreatedBy,
    $session.client as currentclient,
    $session.system_date as SystemDate,
    $session.system_language as SystemLanguage,
    $session.user as loggedinUser
};
