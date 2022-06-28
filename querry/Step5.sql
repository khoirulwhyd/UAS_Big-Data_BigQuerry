CREATE OR REPLACE MODEL
  `census.census_model`
OPTIONS
  ( model_type='LOGISTIC_REG',
    auto_class_weights=TRUE,
    input_label_cols=['income_bracket']
  ) AS
SELECT
  * EXCEPT(dataframe)
FROM
  `census.input_view`
WHERE
  dataframe = 'training'