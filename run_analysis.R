#if (!file.exists("rawdata"))
#        {
#                dir.create("rawdata")
#        }

#fileUrl="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(fileUrl,destfile="./rawdata/dataset.zip")

#unzip("./rawdata/dataset.zip")

#read train, test and feature data
train<-as.data.frame(read.table("X_Train.txt"))
subject_train<-as.data.frame(read.table("subject_train.txt"))
feature<-as.data.frame(read.table("features.txt"))

#assign names to train dataframe
names(train)<-feature[,2]
names(subject_train)=list("subject")
#assign subject id to rows
train<-cbind(subject_train,train)

#assign names to test dataframe
test<-as.data.frame(read.table("X_Test.txt"))
subject_test<-as.data.frame(read.table("subject_test.txt"))

names(test)<-feature[,2]
names(subject_test)=list("subject")
#assign subject id to rows
test<-cbind(subject_test,test)

library(dplyr)
library(tidyr)
#Merges the training and the test sets to create one data se
data<-tbl_df(rbind(train,test))


#find the mean() and std() variable names
mean<-grep("mean()",names(data),ignore.case=FALSE,fixed=TRUE,value=TRUE)
std<-grep("std()",names(data),ignore.case=FALSE,fixed=TRUE,value=TRUE)
x<-c(mean,std)

#reduce the dataframe to the mean() or std() variables
meanstddata<-tbl_df(data[,c("subject",x)])

#read the activity for both datasets and combine them
y_train<-as.data.frame(read.table("y_Train.txt"))
y_test<-as.data.frame(read.table("y_Test.txt"))

y_bind<-rbind(y_train,y_test)
names(y_bind)<-list("activity_code")

#put the activity label in the dataframe
activities <- as.data.frame(read.table("activity_labels.txt"))
names(activities)<-list("activity_code","activity_label")
y_bind[, 2] <- activities[y_bind[, 1], 2]
names(y_bind)<-list("activity_code","activity_label")

meanstddata<-cbind(meanstddata,activity_label=y_bind[,2])

#create two list for reshaping the names of the dataframe
lista<-list("Acc","Mag","Gyro","^t","^f","-","\\(\\)")
listb<-list("Accelerator","Magnitude","Gyroscope","time","frequency","","")

for (i in 1:length(lista)){
        names(meanstddata) <- gsub(lista[i], listb[i], names(meanstddata))
}        

#assign a more readable value to the subject depending on their ID
for (j in 1:nrow(meanstddata)){
    for (i in 1:30){
            if(meanstddata[j,1]==i){
            if(i<=9){
                            meanstddata[j,1]<-paste("subject 0",i,sep="") 
                    }
                else {
                        meanstddata[j,1]<-paste("subject ",i,sep="") 
                }
                        
                      
            }
    }
}

#create a tidy data group and order by activity and subject with the mean of all the variables 
tidy<-meanstddata %>% 
        tbl_df %>% 
        group_by(activity_label,subject)%>%
        summarise_each(funs(mean)) %>% arrange(activity_label,subject)

library(data.table)

#write an output with .txt format
write.table(tidy,file="./tidydata.txt",row.name=FALSE)