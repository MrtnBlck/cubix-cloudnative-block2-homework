# HW Solution

**Repo link:** https://github.com/MrtnBlck/cubix-cloudnative-block2-homework

## Task 1

### Build commands

```bash
docker build --build-arg APP=frontapp -t cubix-frontapp .
docker build --build-arg APP=backapp -t cubix-backapp .
```

### Verify image labels

```bash
docker image inspect cubix-frontapp
docker image inspect cubix-backapp
```

## Task 2

### Docker Compose Run commands

```bash
docker compose up
```

## Task 3

### Start the applications

```bash
docker compose up
```

### Get the logs

```bash
docker compose logs frontapp
docker compose logs backapp
```

### Frontapp logs

```
frontapp-1  | 2026-11-17T15:52:17.617Z  INFO 1 --- [nio-8080-exec-2] h.c.c.api.controller.FrontappController  : Preparing for calling backapp - message was: Hello
frontapp-1  | 2026-11-17T15:52:17.618Z  INFO 1 --- [nio-8080-exec-2] h.c.c.api.controller.FrontappController  : Calling backapp
frontapp-1  | 2026-11-17T15:52:18.219Z  INFO 1 --- [nio-8080-exec-2] h.c.c.api.controller.FrontappController  : Backapp call was successful, response was: BackappResponse[time=2026-11-17T15:52:17.863988240, message=Hello, homeworkOwner=Fekete Martin, hostAddress=172.23.0.2, extraImageData=Cubix training]
frontapp-1  | 2026-11-17T15:52:18.228Z  INFO 1 --- [nio-8080-exec-2] h.c.c.api.controller.FrontappController  : Response will be: FrontappResponse[msForReply=245, backappMessage=Hello, frontappHomeworkOwner=Fekete Martin, frontappHostAddress=172.23.0.3, backappHomeworkOwner=Fekete Martin, backappHostAddress=172.23.0.2, doExtraImageDataMatch=true]
frontapp-1  | 2026-11-17T15:52:34.080Z  INFO 1 --- [nio-8080-exec-3] h.c.c.api.controller.FrontappController  : Preparing for calling backapp - message was: null
frontapp-1  | 2026-11-17T15:52:34.081Z  INFO 1 --- [nio-8080-exec-3] h.c.c.api.controller.FrontappController  : Calling backapp
frontapp-1  | 2026-11-17T15:52:34.095Z  INFO 1 --- [nio-8080-exec-3] h.c.c.api.controller.FrontappController  : Backapp call was successful, response was: BackappResponse[time=2026-11-17T15:52:34.087906909, message=hardcoded-default-backapp-message, homeworkOwner=Fekete Martin, hostAddress=172.23.0.2, extraImageData=Cubix training]
frontapp-1  | 2026-11-17T15:52:34.096Z  INFO 1 --- [nio-8080-exec-3] h.c.c.api.controller.FrontappController  : Response will be: FrontappResponse[msForReply=6, backappMessage=hardcoded-default-backapp-message, frontappHomeworkOwner=Fekete Martin, frontappHostAddress=172.23.0.3, backappHomeworkOwner=Fekete Martin, backappHostAddress=
```

### Backapp logs

```
backapp-1  | 2026-11-17T15:52:17.863Z  INFO 1 --- [nio-8080-exec-1] hu.cubix.cloud.api.BackappController     : Request arrived with message Hello
backapp-1  | 2026-11-17T15:52:17.869Z  INFO 1 --- [nio-8080-exec-1] hu.cubix.cloud.api.BackappController     : Returning response: BackappResponse[time=2026-11-17T15:52:17.863988240, message=Hello, homeworkOwner=Fekete Martin, hostAddress=172.23.0.2, extraImageData=Cubix training]
backapp-1  | 2026-11-17T15:52:34.087Z  INFO 1 --- [nio-8080-exec-2] hu.cubix.cloud.api.BackappController     : Request arrived with message
backapp-1  | 2026-11-17T15:52:34.087Z  INFO 1 --- [nio-8080-exec-2] hu.cubix.cloud.api.BackappController     : Message was empty, fall back to default
backapp-1  | 2026-11-17T15:52:34.087Z  INFO 1 --- [nio-8080-exec-2] hu.cubix.cloud.api.BackappController     : Default message was empty, falling back to hardcoded default
backapp-1  | 2026-11-17T15:52:34.088Z  INFO 1 --- [nio-8080-exec-2] hu.cubix.cloud.api.BackappController     : Returning response: BackappResponse[time=2026-11-17T15:52:34.087906909, message=hardcoded-default-backapp-message, homeworkOwner=Fekete Martin, hostAddress=172.23.0.2, extraImageData=Cubix training]
```