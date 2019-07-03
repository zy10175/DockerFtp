运行命令:
cd DockerFtp

docker build -t ftp .

docker run --name ftp -d -p 20:20 -p 21:21 -p 30000-30050:30000-30050 ftp
