{{ config(materialized='table') }}

with transform_child_care_centre as (

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
    from dbt-learn-team.batchdata.ChildCareCentres
)

select * from transform_child_care_centre