#standardSQL
SELECT
*
FROM
ML.EXPLAIN_PREDICT(MODEL `census.census_model`,
  (
  SELECT
    *
  FROM
    `census.input_view`
  WHERE
    dataframe = 'evaluation'),
  STRUCT(3 as top_k_features))