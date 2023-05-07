
# Docker goreman demo

A demo project of goreman in docker.

## Goreman
Clone of foreman written in golang.

https://github.com/ddollar/foreman

## Getting Started


```bash
  docker build . -t goreman
  docker run --name goreman -p 6379:6379 -p 80:80 -p 8000:8000 goreman
```
    