with
source_data as (
  select
    brand_code as brand_code
    , name as brand_name
    , contact as brand_contact
    , country as brand_country
  from {{ source('landing', 'brands') }}
)
select * from source_data