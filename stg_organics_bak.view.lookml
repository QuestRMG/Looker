- view: stg_organics_bak
  sql_table_name: dbo.StgOrganics_Bak
  fields:

  - dimension: additional_costs
    type: string
    sql: ${TABLE}.AdditionalCosts

  - dimension: additional_costs1
    type: string
    sql: ${TABLE}.AdditionalCosts1

  - dimension: city
    type: string
    sql: ${TABLE}.City

  - dimension: contracted_haul_rate
    type: string
    sql: ${TABLE}.ContractedHaulRate

  - dimension: customer
    type: string
    sql: ${TABLE}.Customer

  - dimension: customer_total
    type: string
    sql: ${TABLE}.CustomerTotal

  - dimension: exception_code
    type: string
    sql: ${TABLE}.ExceptionCode

  - dimension: explanationof_exception_code
    type: string
    sql: ${TABLE}.ExplanationofExceptionCode

  - dimension: haul_fee
    type: string
    sql: ${TABLE}.HaulFee

  - dimension: invoice
    type: string
    sql: ${TABLE}.Invoice

  - dimension: methodof_recycling
    type: string
    sql: ${TABLE}.MethodofRecycling

  - dimension_group: month
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Month

  - dimension: numberof_bins_leftsite_after_service
    type: number
    sql: ${TABLE}."NumberofBinsLeft@SiteAfterService"

  - dimension: numberof_bins_locatedat_site_priorto_service
    type: number
    sql: ${TABLE}.NumberofBinsLocatedatSitePriortoService

  - dimension: numberof_bins_offloadedsite
    type: number
    sql: ${TABLE}."NumberofBinsOff-Loaded@Site"

  - dimension: outlet_number
    type: string
    sql: ${TABLE}.OutletNumber

  - dimension_group: quest_invoice
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.QuestInvoice

  - dimension: reasonfor_additional_costs
    type: string
    sql: ${TABLE}.ReasonforAdditionalCosts

  - dimension: recyclers_acceptance_certificate_number
    type: number
    sql: ${TABLE}.RecyclersAcceptanceCertificateNumber

  - dimension: recycling_center_name
    type: string
    sql: ${TABLE}.RecyclingCenterName

  - dimension: recycling_location_city
    type: string
    sql: ${TABLE}.RecyclingLocationCity

  - dimension: recycling_location_state
    type: string
    sql: ${TABLE}.RecyclingLocationState

  - dimension: reported_pounds_collected_
    type: number
    sql: ${TABLE}."ReportedPoundsCollected "

  - dimension: sales_tax
    type: string
    sql: ${TABLE}.SalesTax

  - dimension_group: service
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ServiceDate

  - dimension: service_document_number
    type: number
    sql: ${TABLE}.ServiceDocumentNumber

  - dimension: service_type
    type: string
    sql: ${TABLE}.ServiceType

  - dimension: state
    type: string
    sql: ${TABLE}.State

  - dimension: store_number_
    type: number
    sql: ${TABLE}."StoreNumber "

  - dimension: store_type
    type: string
    sql: ${TABLE}.StoreType

  - dimension: street_address
    type: string
    sql: ${TABLE}.StreetAddress

  - dimension: subtotal_amount
    type: string
    sql: ${TABLE}.SubtotalAmount

  - dimension: tipping_fee
    type: string
    sql: ${TABLE}.TippingFee

  - dimension: ton_fee
    type: string
    sql: ${TABLE}.TonFee

  - dimension: tonnage
    type: number
    sql: ${TABLE}.Tonnage

  - dimension: tonnage_charge_calculation
    type: string
    sql: ${TABLE}.TonnageChargeCalculation

  - dimension: total_tonnage
    type: string
    sql: ${TABLE}.TotalTonnage

  - dimension: vendor
    type: string
    sql: ${TABLE}.Vendor

  - dimension: vendor_total
    type: string
    sql: ${TABLE}.VendorTotal

  - dimension: week
    type: number
    sql: ${TABLE}.Week

  - dimension: zip
    type: number
    sql: ${TABLE}.Zip

  - measure: count
    type: count
    drill_fields: [recycling_center_name]

