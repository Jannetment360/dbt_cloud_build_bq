{{ config(materialized='table') }}

with transform_hospitals as (

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
    from dbt-learn-team.batchdata.Hospitals
)

select * from transform_hospitals