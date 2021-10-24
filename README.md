# Backup to S3
### Usage
1. Set your access key, secret key and endpoint url in s3.cfg
2. Build docker and tag it
3. Run it
```bash
docker run -d -e MYSQL_ROOT_PASSWORD=somepassword -e BACKUP_BUCKET_NAME=bucketname <image_name>:<tag>
```
