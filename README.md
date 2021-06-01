# Manual of build and deploy docker image

1. Copy the Dockerfile and index.html file to the server in one directory, go to the directory
2. Build new images, run command: docker images -t name_of_image:tag 
3. Check that image created, run command: docker images, if successfull created image you will see name of your image in list.
4. Run docker image and redirect port (-p dest_port:src_port) if necessery: docker run -d -p dest_port:80 name_of_image:tag
5. Check that image is run: docker ps
