setwd(normalizePath(dirname(R.utils::commandArgs(asValues=TRUE)$"f")))
source("../../../scripts/h2o-r-test-setup.R")

gbm.test <- function() {
  data = h2o.importFile(locate("smalldata/airlines/AirlinesTest.csv.zip"),destination_frame = "data")
  browser()
  gg4 = h2o.glm(x = c(1:4,6:9),y = 5,training_frame = data)
  gg3 = h2o.glm(x = c(1:9),y = 10,training_frame = data)
  gg = h2o.gbm(x = c(1:4,6:9),y = 5,training_frame = data)
  gg2 = h2o.gbm(x = c(1:9),y = 10,training_frame = data)

  h2o.residual_deviance(object = gg,train = T)
}

doTest("GBM Grid Test: Airlines Smalldata", gbm.test)
