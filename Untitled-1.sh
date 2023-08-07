docker run -v /var/run/docker.sock:/var/run/docker.sock \
           -ti rockylinux:8




docker run -v /mnt/data:/data \
           -ti rockylinux:8


docker run -it -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker rockylinux:8 bash




docker run -v /mnt/data:/data \
        -u mdynowski \
           -ti rockylinux:8


docker run -v /mnt/data:/data -u 1000:1000 -ti rockylinux:8
