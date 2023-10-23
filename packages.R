remotes::install_version("aws.s3", version = '0.3.20', upgrade = 'never', dependencies = TRUE)
remotes::install_version("aws.ec2metadata", version = '0.1.6', upgrade = 'never', dependencies = TRUE)
install.packages("devtools")
devtools::install_github("cloudyr/aws.signature")
