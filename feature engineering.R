#Feature Filters: selecting a subset of relevant features from the feature set.
#Wrapper Method: evaluates different feature space based on some criteria to pick the best possible subset.
#Feature Extraction and Construction: extracting and creating new features from existing features.
#Embedded Methods: feature selection that is performed as a part of the training process.

form <- ~ wt + mpg + cyl
 rxCor(form, data = mtcars)
 cor.test(x = mtcars$wt, y = mtcars$mpg)
 plot(mtcars)
 cor(mtcars)
 library(FSelector)
 ig_values <- information.gain(Species~., iris)
 ig_values
 top_k_features <- cutoff.k(ig_values, 2)
 f <- as.simple.formula(top_k_features, "Species")
  f
