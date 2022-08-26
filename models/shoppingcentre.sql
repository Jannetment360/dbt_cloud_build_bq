{{ config(materialized='table') }}

with transform_shopping_centre as (

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
    from dbt-learn-team.batchdata.ShoppingCentres
)

select * from transform_shopping_centre