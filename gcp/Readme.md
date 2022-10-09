# GCP 使用教學 
## gcloud 

`brew install gcloud` Mac 安裝 gcloud 
`gcloud version` 安裝完 gcloud 的檢測版本並確認有安裝成功
`gcloud init` 互動式的設定 GCP 上的 config 
`gcloud config list` 查看你現在的 GCP config 資訊與內容
`gcloud config configurations list` 查看你所有的 GCP config 
`gcloud config configurations delete ${PROFILE_NAME}` 刪除你的 GCP config 
`gcloud config configurations activate ${PROFILE_NAME}` 啟用你使用的 GCP config 
`gcloud container clusters create ${CLUSTER_NAME}--num-nodes=3` 官方啟動 k8s 的群集
`gcloud container clusters get-credentials ${CLUSTER_NAME}` 獲取某個 cluster 的 credentials
# common variable  

```
project_id = "tester-devops"
region     = "asia-east1" 
```

## IAM

可以創建`服務帳號`管理服務，服務帳號可以產生金鑰.json，並且可以在自己的 terminal 環境變數當中設定 `GOOGLE_CREDITINAL=key.json`

## 架構

## 此專案提交策略
