# HW Solution

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