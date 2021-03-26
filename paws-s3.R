s3 <- paws::s3()
s3$list_objects(Bucket = "kilimanjaro-latest-datalake")
