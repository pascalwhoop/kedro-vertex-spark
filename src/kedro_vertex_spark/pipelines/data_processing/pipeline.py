"""
This is a boilerplate pipeline 'data_processing'
generated using Kedro 0.18.3
"""

from kedro.pipeline import Pipeline, node, pipeline

import pandas as pd
import numpy as np

def random_data():
    return pd.DataFrame(np.random.randint(0,100,size=(10000, 400)), columns=list('A'*400))

def random_data_big(x):
    x*x


def create_pipeline(**kwargs) -> Pipeline:
    return pipeline(
        [
            node(
                func=random_data,
                outputs="random_data",
                name="random_data_generator",
            ),
            node(
                func=random_data_big,
                inputs="random_data",
                outputs="random_big_data",
                name="make_it_big",
            ),
        ]
    )
