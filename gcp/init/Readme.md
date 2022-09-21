# GCP 使用教學 

## gcloud 

`brew install gcloud`
`gcloud version`
`gcloud init`
`gcloud config list`
`gcloud config configurations list`
`gcloud config configurations activate ${PROFILE_NAME}`

## IAM

可以創建`服務帳號`管理服務，服務帳號可以產生金鑰.json，並且可以在自己的 terminal 環境變數當中設定 `GOOGLE_CREDITINAL=key.json`