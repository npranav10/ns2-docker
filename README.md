
# Tech

* ### [Docker](https://docs.docker.com/)
* ### [NS2](http://nsnam.sourceforge.net/wiki/index.php/Main_Page)

# Installation 

#### 1. It is Adivisable to login as root
   `$ sudo su`

#### 2. Let's follow the linux best practices by updating the package lists and hence upgrading packages to latest version

`$ apt-get update && apt-get upgrade`

#### 3. Installing Docker in Ubuntu

WILL BE UPDATED SOON

`$ docker --help`     will return info about all arguments that can be added to docker command
#### 4. Pull Ubuntu image containing ns2

 *   `$ docker pull npranav10/ns2`
    Login into your docker account if asked for.
    
 *   Start docker using, 
    `$ dockerd &`
    (press Enter after entering the command)
    
 *   Then check for the image named "npranav10/ns2" using the following command,
    `$ docker image ls`
    If it exits, then the docker pull is successfull.
*   Run `$ xhost local:root` on host machine to enable execution of GUI commands in the container
*    `$ docker container run -it npranav10/ns2 bash` will enter into terminal mode of the container.
*    To validate we can enter the follwing command in another terminal of host machine,
     `$ docker container ls` which will return container id running using corresponding image id.
*   `$ docker run -it v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY npranav10/ns2 bash `
    will give you access to terminal of ubuntu container, where we can run ns2.
*   The command `$ ns ns-simple.tcl` will execute the pre-downloaded sample file. If everything does well, a NAM window will pop up and then rest is in your hands in handling the ns2-ubuntu container. OUTPUT OF EXECUTED TCL FILE WILL BE STORED IN `OUT.NAM` FILE
#### 5. METHOD TO IMPLEMENT TRACEGRAPH AND A WAY TO STORE YOUR FILES WILL BE ADDED SOON

    
    
