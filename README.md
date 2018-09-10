# Pritunl VPN Proxy Docker
Pritunl VPN and Squid proxy inside of a Docker container. 

### Usage
```
docker run --privileged -d -p 3128:3128 -e  "PRITUNL_PROFILE=/conf/pritunl-profiles/PROFILE_FILE_NAME -v PROFILE_HOST_DIRECTORY:/conf/pritunl-profiles pritunl-proxy
```