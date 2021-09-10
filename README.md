# infra proxy homework

Provided is a `Dockerfile` which implements a very simple web proxy. However,
it doesn't work correctly as implemented.

A fixed proxy container will:
* build and run correctly using the `run.sh` script.
* return `http://infra.hw.storj.io` when connecting to `http://localhost:8088`.
* cache proxied data in the local `./data` folder
* successfully handle a request for this asset: `localhost:8088/images/swordfish.gif`

Please keep the name `proxy_homework` for both the image and container.