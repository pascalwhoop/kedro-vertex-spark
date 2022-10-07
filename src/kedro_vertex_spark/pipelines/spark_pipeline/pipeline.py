"""
This is a boilerplate pipeline 'spark_pipeline'
generated using Kedro 0.18.3
"""

from kedro.pipeline import Pipeline, node, pipeline

def random_spark_sum(x):
    # takes an arbitrary dataset and sums it column wise
    from operator import add
    from functools import reduce
    new_df = df.withColumn('total',reduce(add, [F.col(x) for x in numeric_col_list]))
    return new_df.select("total")

def create_pipeline(**kwargs) -> Pipeline:
    return pipeline([
            node(
                func=random_data,
                inputs=["random_data"],
                outputs="summed_data",
                name="spark_summer",
            )
    ])
