#Before running this script the current directory in R should be changed to the 
#downloaded dataset directory

run_analysis<-function(){
     library(plyr)     #load package plyr
     
     xtes<-read.table("test/X_test.txt")   #load data into various data frames
     xtrain<-read.table("train/X_train.txt")
     testact<-read.table("test/y_test.txt")
     testsub<-read.table("test/subject_test.txt")
     trainact<-read.table("train/y_train.txt")
     trainsub<-read.table("train/subject_train.txt")

     feat<-read.table("features.txt") #extract column names
     feats<-feat[,2]
     
     colnames(xtes)<-feats #change column names to more descriptive ones
     colnames(xtrain)<-feats
     
     xtes<-cbind(xtes,activity=testact) # bind subject and activty data
     xtes<-cbind(xtes,subject=testsub)
     xtrain<-cbind(xtrain,activity=trainact)
     xtrain<-cbind(xtrain,subject=trainsub)
     
     bigdata<-rbind(xtes,xtrain) # merge the sets 
     names(bigdata)<-c(as.character(feats),c("activity","subject"))
     bigdata$activity<-as.character(bigdata$activity)
     
     #change activity numbers to descriptive names
     bigdata$activity<-revalue(bigdata$activity, c("1"="walking", "2"="walking upstairs","3"="walking downstairs","4"="sitting","5"="standing","6"="laying"))
     bigdata$activity=as.factor(bigdata$activity)
     
     #extract only mean and std columns
     extract_cols<-grep("mean|std",names(bigdata))
     extract_cols<-c(extract_cols,c(562,563))
     fin_raw_data<-bigdata[,extract_cols]
     
     #"tidy" up the variable names
     names(fin_raw_data)<-gsub("\\(\\)","",names(fin_raw_data),)
     names(fin_raw_data)<-gsub("tBo","timeBo",names(fin_raw_data),)
     names(fin_raw_data)<-gsub("tGr","timeGr",names(fin_raw_data),)
     names(fin_raw_data)<-gsub("fBo","freqBo",names(fin_raw_data),)
     names(fin_raw_data)<-gsub("-mean-X","_meanX",names(fin_raw_data),)
     names(fin_raw_data)<-gsub("-mean-","_mean",names(fin_raw_data),)
     names(fin_raw_data)<-gsub("-","_",names(fin_raw_data),)
     
     #create new processed data
     final_processed_set<-ddply(fin_raw_data,.(subject,activity),numcolwise(mean))
     #change names
     names(final_processed_set)<-gsub("__","_",names(final_processed_set),)
     names(final_processed_set)<-gsub("timeBody","AVG_timeBody",names(final_processed_set),)
     names(final_processed_set)<-gsub("freqBody","AVG_freqBody",names(final_processed_set),)
     
     final_processed_set
}