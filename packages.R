remotes::install_version("aws.s3", version = '0.3.20', upgrade = 'never', dependencies = TRUE)
remotes::install_version("aws.ec2metadata", version = '0.2.0', upgrade = 'never', dependencies = TRUE)
install.packages("devtools")
devtools::install_github("cloudyr/aws.signature")
