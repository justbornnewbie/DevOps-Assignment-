# DevOps-Assignment-
## assinginment

### 1. Generate self signed key pairs

```bash
openssl req -x509 -newkey rsa:4096 -keyout localhost-rsa-key.pem -out localhost-rsa-cert.pem -days 36500
```

### 2. Enable SSL termination inside the container

copied files inside the image in /ssl and edited server.xml

```xml
 <Connector port="8443" protocol="org.apache.coyote.http11.Http11AprProtocol"
               maxThreads="150" SSLEnabled="true" >
        <UpgradeProtocol className="org.apache.coyote.http2.Http2Protocol" />
        <SSLHostConfig>
            <Certificate certificateKeyFile="ssl/localhost-rsa-key.pem"
                         certificateFile="ssl/localhost-rsa-cert.pem"
certificateKeyPassword="changeit"
                         type="RSA" />
        </SSLHostConfig>
    </Connector>

```
### 3 Containerize the web application 
### 4 Persist Volume to save the log files
``` yml
volumes:
     - "/opt/tomcat/logs:/usr/local/tomcat/logs"
```
### 5 Docker compose file to build the jenkins and Tomcat
[Link to Jenkins-Compose file](https://github.com/rjmsas/DevOps-Assignment-/blob/main/Jenkins-compose.yml) 
[Link to tomcat-Compose file](https://github.com/rjmsas/DevOps-Assignment-/blob/main/tomcat-compose.yml) 

### 6 Create jenkins pipeline and poll the scm every 15 mins.
```bash
H/15 * * * *
```
For generating the certs, followed the article
[certs](https://mvysny.github.io/Using-self-signed-OpenSSL-pem-with-Docker-Tomcat/)

### 7 Short URL Service Image
![image](https://user-images.githubusercontent.com/58831659/146095286-717e9f08-6d3e-467d-865e-f9f73453fcb3.png)

