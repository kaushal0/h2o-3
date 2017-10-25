import sys
sys.path.insert(1,"../../../")
import h2o
from tests import pyunit_utils
from h2o.estimators.gbm import H2OGradientBoostingEstimator

def gbm_residual_deviance():

  cars = h2o.import_file(path=pyunit_utils.locate("smalldata/airlines/AirlinesTest.csv.zip"))
  gbm = H2OGradientBoostingEstimator()
  gbm.train(x=list(range(9)), y=9, training_frame=cars)

  print("wow")


if __name__ == "__main__":
  pyunit_utils.standalone_test(gbm_residual_deviance)
else:
  gbm_residual_deviance()
