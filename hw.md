# Homework

This repository contains two Spring Boot applications in two separate folders:

- `frontapp`
- `backapp`

The `frontapp` application calls the `backapp` application. Example calls for
localhost can be found in the Postman collection or in the `bruno-api` folder
at the repository root.

## 1. Create the Dockerfile

Create **one Dockerfile** for both applications in the repository root.

### Build requirements

- The applications can be built with:

  ```bash
  ./mvnw clean verify
  ```

- Build the applications before running the Docker build command.
- The Maven build must **not** be part of the image build. In other words, the
  Dockerfile must **not** use a multi-stage build.
- Use the following base image:

  ```text
  quay.io/drsylent/cubix/block2/homework-base:java25
  ```

- Define the following environment variables:
  - `CUBIX_HOMEWORK`: Your name
  - `APP_DEFAULT_MESSAGE`: An empty value
- Add your name to the image label with the key:

  ```text
  cubix.homework.owner
  ```

- Take note of all build commands you run.

### Verify the image labels

Check that the images you created have the correct label, and take note of the
commands you use for this verification.

## 2. Create the Docker Compose setup

Prepare to run both applications simultaneously with Docker Compose.

- Create an appropriate Docker Compose YAML file.
- Pass the URL of the back-end application to the front-end application using
  the `BACK_URL` environment variable.
- The back-end application must not be directly reachable from localhost.
  Only the front-end application should be accessible from localhost.

## 3. Run and test the applications

Run both applications using your Docker Compose setup.

Using Postman or Bruno:

1. Send a request to the front-end application that also calls the back-end
   application with a message.
2. Send a request to the front-end application that also calls the back-end
   application without a message.
3. Find the appropriate log rows for these calls and record them.
4. Record the command used to start the applications.

## Tips

- If you try to reach the back-end application from the front-end application
  without Compose—for example, to test your images before running them with
  Compose—and you use port forwarding rather than networking, the hostname
  might not be `localhost`. It may instead be:

  ```text
  host.docker.internal
  ```

- There are multiple ways to use the same Dockerfile for both applications.
- The folder structures of the two applications are the same; only the folder
  name differs.
- You should use:
  - one Dockerfile,
  - two separate Docker build commands, and
  - two images.
- Avoid unnecessary steps in the Dockerfile and aim for a simple, elegant
  solution.

## How to deliver your solution

Submit a ZIP file containing all required notes:

- Docker build commands
- Docker label-checking commands
- Docker Compose run commands
- Relevant log rows

Also include either:

- your local solution, or
- a link to your forked repository,

depending on which option you chose.

### Before creating the ZIP file

If you submit a local solution, run the following command in both application
folders before creating the ZIP file:

```bash
./mvnw clean
```

You can verify that this was done by checking the application folders. If a
folder is larger than 1 MB, something is wrong and you should run the command
again.

You may add any additional notes or documentation to the ZIP file if desired.
