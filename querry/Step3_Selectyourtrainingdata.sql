CREATE OR REPLACE VIEW
  `census.input_view` AS
SELECT
  age,
  workclass,
  marital_status,
  education_num,
  occupation,
  hours_per_week,
  income_bracket,
  CASE
    WHEN MOD(functional_weight, 10) < 8 THEN 'training'
    WHEN MOD(functional_weight, 10) = 8 THEN 'evaluation'
    WHEN MOD(functional_weight, 10) = 9 THEN 'prediction'
  END AS dataframe
FROM
  `bigquery-public-data.ml_datasets.census_adult_income`