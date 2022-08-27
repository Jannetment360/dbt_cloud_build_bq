{{ config(materialized='table') }}

with transform_gyms as (

    select 
        Name
        ,Categories
        ,Address
        ,City
        ,State
        ,Postcode
        ,Phone
        ,Website
        ,Email
        ,ST_GeogPoint(Longitude,Latitude) as Location 
    from dbt-learn-team.batchdata.Gyms
)

select * from transform_gyms