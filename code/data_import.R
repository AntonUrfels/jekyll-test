library(httr)
library(jsonlite)
#for reading and writing data
library(readr) # to read CSV data

api_call <- function(f,user,password) {
	kobo_server_url<-"https://kobo.humanitarianresponse.info/"
	#kobo_server_url<-"https://kc.humanitarianresponse.info/" #Legacy url
	form_id<-f #change the id to your form's id
	url<-paste0(kobo_server_url,"api/v1/data/",form_id,".csv")
	u<-user
	pw<-password
	rawdata<-GET(url,authenticate(u,pw),progress())
	print(paste0("Status Code: ",rawdata$status_code))
	d_content <- content(rawdata,"raw",encoding="UTF-8")
	d_content_csv <- read_csv(d_content)
	df_content_csv <- as.data.frame(d_content_csv)
	return(df_content_csv)
}