# Docker Compose Sentry For Use with NGINX

## Install the Application

You will need Docker and Composer installed on your machine.

Run this command from the directory in which you want to install your new Sentry Installation.

    composer create-project dev-pledge/sentry [my-app-name]

Replace `[my-app-name]` with the desired directory name for your new application. 

To set up sentry

    make up

wait for containers to be made
    
    make stop
    
    make install

As the install runs you will need to create your email and passwords credentials - the install script will ask for them.

To run the application in development, you can also run either of these command. 

	make up
	
or if conatiners are already running

    make start

