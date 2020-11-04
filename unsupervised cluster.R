# The Spark Foundation 
# Task : 2
# Problem statment : From the given 'Iris'dataset , predict the optimum number of clusters and represent it visually

# Loading the dataset from csv file
data<-read.csv(choose.files())
head(data)

#Length of Iris dataset
x<-length(data$SepalLengthCm);x
y<-length(data$SepalWidthCm);y
z<-length(data$PetalLengthCm);z
k<-length(data$PetalWidthCm);k

# Describing statistical Analysis
data1<- data.frame(data$SepalLengthCm,data$SepalWidthCm,data$PetalLengthCm,data$PetalWidthCm)
head(data1)
data2<- summary(data1)
data2

# As 3 clusters (i.e Iris-virginica,Iris-versicolor,Iris-setosa)
results<-kmeans(data2,3)
results
# Size of the each cluster
results$size

# Assigning the index of Cluster
results$cluster

#Visualization of cluster(i.e Iris-virginica,Iris-versicolor,Iris-setosa)
plot(data[c("PetalLengthCm","PetalWidthCm")],col=results$cluster)
plot(data[c("SepalLengthCm","SepalWidthCm")],col=results$cluster)




