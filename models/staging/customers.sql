with
source_data as (
  select
    CUSTOMER_CODE as customer_code,
    NAME as customer_name,
    SURNAME as customer_surname,
    EMAIL as customer_email,
    COUNTRY as customer_country,
    CITY as customer_city,
    ADDRESS as customer_address,
    COUNTY as customer_county,
    STATE as customer_state,
    ZIP as customer_zip_code
  from {{ source('landing', 'customers') }}
)
select * from source_data