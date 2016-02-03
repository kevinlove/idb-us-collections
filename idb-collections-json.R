## Set up workspace
library(jsonlite);library(progress)
dir.create("collections")

## Build data frame from iDigBio collections API
df <- fromJSON("http://internal.idigbio.org/collections")
## Write a CSV, cause why not?
write.csv(df, file = "master.csv")

## Function to write JSON files for each item returned by the API
## df: Data frame built from iDigBio API using jsonlit::fromJSON method
writeCollections <- function(df = fromJSON("http://internal.idigbio.org/collections")){
        pb <- progress_bar$new(total=nrow(df))
 for (i in 1:nrow(df)){
        pb$tick() 
        fn <- df$collection_uuid[i]
        sink(paste("collections/",fn,".json",sep=""))
        row <- toJSON(unbox(df[i,]),pretty = TRUE)
        cat(row)
        sink()
        
 }
}
writeCollections()


## Function to compile collection JSON files into one validated file
writeMasterFile <- function(){
        pb <- progress_bar$new(total=length(list.files("collections/")))
        sink("collections.json")
        for (i in 1:length(list.files("collections/"))){
                pb$tick()
                if(i == 1){cat("[")}
                cat(toJSON(fromJSON(paste("collections/",list.files("collections/")[i],sep="")),pretty = TRUE))
                if(i < length(list.files("collections/"))){cat(",")}
                if(i == length(list.files("collections/"))){cat("]")}
         } 
        sink()
}
writeMasterFile()