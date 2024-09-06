## doccano-docker
While using the default [doccano/doccano:1.8.4](https://hub.docker.com/r/doccano/doccano/tags) image, I encountered a `no data available` issue when adding a Custom REST Request. To address this, I updated the pip dependencies based on the official image, which resolved the problem. The updated image has been released as [samge/doccano:1.8.4](https://hub.docker.com/repository/docker/samge/doccano/tags). Feel free to use it.

### Run docker
```shell
docker run -itd --name doccano \
-e "ADMIN_USERNAME=admin" \
-e "ADMIN_EMAIL=admin@example.com" \
-e "ADMIN_PASSWORD=password" \
-v ~/doccano/db:/data \
-p 8000:8000 samge/doccano:1.8.4
```

Go to [http://127.0.0.1:8000/](http://127.0.0.1:8000/)

![image](https://github.com/user-attachments/assets/45df12c0-35b5-48fd-86e1-fb05f2706f83)
