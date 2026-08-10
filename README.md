# adeboose-iot-app

App deployed by Argo CD for the 42 Inception-of-Things project, part 3.

- `app/` — sources of the image `pokalie566/iot-app`, built for linux/amd64 and
  linux/arm64. The entrypoint fills the page template with `APP_NAME`, the pod
  hostname and the version baked in at build time.
- `deployment.yaml` / `service.yaml` — what Argo CD watches. Changing the image
  tag from `v1` to `v2` here and pushing is enough to roll the cluster over.

Build a new version:

```sh
cd app
docker buildx build --platform linux/amd64,linux/arm64 \
	--build-arg VERSION=v2 -t pokalie566/iot-app:v2 --push .
```
