include: "azure_billing.view.lkml"

view: +azure_billing {
  dimension: currency_symbol {
    hidden: yes
    sql:  CASE
          WHEN ${currency} = 'USD' THEN '$'
          WHEN ${currency} = 'EUR' THEN '€'
          WHEN ${currency} = 'JPY' THEN '¥'
          WHEN ${currency} = 'AUD'THEN 'A$'
          WHEN ${currency} = 'BRL'THEN 'R$'
          WHEN ${currency} = 'CAD'THEN 'C$'
          WHEN ${currency} = 'HKD' THEN 'HK$'
          WHEN ${currency} = 'INR' THEN '₹'
          WHEN ${currency} = 'IDR' THEN 'Rp'
          WHEN ${currency} = 'ILS' THEN '₪'
          WHEN ${currency} = 'MXN' THEN 'Mex$'
          WHEN ${currency} = 'NZD' THEN 'NZ$'
          WHEN ${currency} = 'GBP' THEN '£'
          ELSE CONCAT(${currency}, ' ')
        END;;
  }
}
