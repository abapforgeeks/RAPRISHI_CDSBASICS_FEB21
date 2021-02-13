@AbapCatalog.sqlViewName: 'ZRISHICASEFEB'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Case & Nested Case Example'
define view zrishi_case_feb
  as select from snwd_so
{
  key so_id,
      created_at,
      case billing_status
      when 'P' then 'Paid'
      when '' then


      case delivery_status

      when 'D' then 'Delivered'
      when ' ' then 'Open'

      else delivery_status

      end

      else billing_status
      end as Status
}
