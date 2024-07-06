actual_values <- c(1,1,1,0,0,0,1,1,0,0)  
predict_value <- c(1,0,1,0,1,1,0,0,1,1) 
table(ACTUAL=actual_values,PREDICTED=predict_value>0.5)  
# assuming thershold to be 0.5 
accuracy <- sum(actual_values == predict_value) / length(actual_values) 
cat("Accuracy: ", accuracy) 
precision <- 2/(2+4)  
cat("Precision: ", precision)
recall <- 2/(2+3)  
cat("Recall: ", recall)
f1_score <- (2*precision*recall)/(precision+recall) 
cat("f1_score:", f1_score) 

