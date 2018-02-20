# Docker Compose Sentry For Use with NGINX

## Install the Application

You will need Docker and Composer installed on your machine.

You will need another Docker container running NGINX to route your DNS to this install.

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
	
or if containers are already running

    make start


you can now reference the docker external network 'global_sentry' and the service 'sentry:9000' in your other docker containers 
    
    my-great-app:
      
      networks:
        - default
        - sentry_network
    
    networks:
      sentry_network:
        external:
          name: global_sentry