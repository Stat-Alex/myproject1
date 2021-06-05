# Manual of build and deploy docker image


##Status of Last Deployment:<br>
<img src="https://github.com/Stat-Alex/myproject1/workflows/CI-CD-Pipeline-to-AWS-ElasticBeanstalk/badge.svg?branch=master"><br>

### Requirements
- Installed Docker

### Step by step instruction
1. Copy the Dockerfile and index.html file to the server in one directory, go to the directory
2. Build new images, run command: 
```sh
docker build -t <name_of_image>:tag 
```
3. Check that image created, run command: 
```sh
docker images  
```
if successfull created image, you will see name of your image in list.
4. Run docker image and redirect port (`-p <dest_port>:<src_port>`) if necessery: 
```sh
docker run -d -p <dest_port>:80 <name_of_image>:tag
```
5. Check that image is run: 
```sh
docker ps
```


Verify the deployment by navigating to your server address in
your preferred browser.

```sh
127.0.0.1:<dest_port>
```
