# Archiva
Apache archiva (Maven Repository) Docker image
  
## Usage
  
`docker run -d --restart always -p 8080:8080 -v /your/local/repository:/repository quay.io/lizhongwen/archiva:latest`  
`docker run -d --restart always -p 8080:8080 -v /your/local/repository:/repository quay.io/lizhongwen/archiva:2.2.1`  
  
`docker pull quay.io/lizhongwen/archiva:latest`  
`docker pull quay.io/lizhongwen/archiva:2.2.1`  
  
`docker pull quay.io/primeton/archiva:latest`  
`docker pull quay.io/primeton/archiva:2.2.1`  
  
## Evironment  
  
`echo ARCHIVA_HOME=${ARCHIVA_HOME}`  
`echo ARCHIVA_VERSION=${ARCHIVA_VERSION}`  
`echo MAX_HEAP=${MAX_HEAP}`  
`echo MIN_HEAP=${MIN_HEAP}`  
  
## Link  
  
[https://quay.io/repository/lizhongwen/archiva](https://quay.io/repository/lizhongwen/archiva)  
  
[https://quay.io/repository/primeton/archiva](https://quay.io/repository/primeton/archiva)  
  
  
