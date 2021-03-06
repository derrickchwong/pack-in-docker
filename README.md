# pack-in-docker

This repo includes the steps for creating a Docker container with Cloud Native Buildpack to build image for Dotnet Core app.

## 1. Download tools

We need 2 tools here, the Dotnet Core Buildpack and the Pack cli.

```
./1__download-tools.sh
```

## 2. Build the Docker image

I have prepared a Dockerfile which contains the tools we downloaded in step 1.

```
./2__docker-build.sh
```

## 3. Download and build a sample

Git clone a sample and use dotnet cli to build it

```
./3__download-and-build-sample.sh
```

## 4. Build the container image

Use the Docker image we created in step 2 to build image for the sample. You will need to modify the Registry URL and username/password to make it work.

```
./4__run-buildpack.sh
```

## 5. Test the image locally

You should be able to see the Docker image built in step 4, you can test it locally

```
./5__run-sample.sh
```

## 6. Deploy to K8s

I have prepared a yml file for K8s deployment, includes Deployment and Service. You will need to modify the path of image in deploy-k8s.yml before running

```
./6__deploy-to-k8s.sh
```

If you are using PKS. You need to retrieve the kubeconfig by below commands before running step 6.  

```
pks login -a <your PKS api endpoint> -u <username> -p <password>
pks get-credentials <cluster name>
```

or

```
pks get-kubeconfig <cluster name> -a <your PKS api endpoint> -u <username>
```

## 7. Test

If step 6 succeed, you can use

```
kubectl get svc
```

```
⇒  kubectl get svc
NAME             TYPE           CLUSTER-IP       EXTERNAL-IP    PORT(S)          AGE
sample-web-api   LoadBalancer   10.100.200.135   35.222.68.66   5000:31046/TCP   82s
```

to check the external IP of the service we just created. You can try to access it with browser or curl. In my example, http://35.222.68.66:5000
