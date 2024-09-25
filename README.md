# python_dev_container

## Build the Docker image
cd {containing_dir}
docker build -t python_dev_container .

## Run the Docker container with attached volume and mounted ssh directory
docker run -d -v python_dev_container:/home/developer -v C:/Users/{username}/.ssh:/home/developer/.ssh -p 4000:80 python_dev_container