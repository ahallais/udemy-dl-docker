# Udemy Downloader Docker


## How to build

```console
docker build -t udemydl .
```

## How to run

```console
mkdir -p courses
docker run --rm -v /full/path/to/host/directory/courses:/root/dlcourses udemydl -u youruser@domain.com -p yourpassword https://www.udemy.com/course/URLOFTHECOURSE/ 
```  
Note you need to enrol to the course prior to donwload
You can also the cookie with -k read the documentation at https://github.com/r0oth3x49/udemy-dl.git

## Help

```console
	docker run udemydl -h
```

The entrypoint script already specify the directory to download with -o ( /root/dlcourses )