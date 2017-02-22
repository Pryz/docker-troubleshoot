# Basic troubleshooting Docker image

Use it to troubleshoot already running containers :

```
TARGET_CONTAINER_ID=<target_container_name_or_id>
docker run -it \
  --pid=container:$TARGET_CONTAINER_ID --net=container:$TARGET_CONTAINER_ID \
  --cap-add sys_admin --privileged \
  pryz/troubleshoot sh
```

Then :

```
strace -p 1
lsof -p 1
htop
...
```
