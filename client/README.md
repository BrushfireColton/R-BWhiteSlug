# Mobile App

## Debugging
To debug the mobile app, ensure you have the `Mobile App (client)` Run and Debug configuration selected in the side Debug tab of VSCode and hit the play button

## Code Generation
If you make a change to a Class that is consuming dependencies, you add a new Injectable object, or add/change a navigation route, you must run build runner to generate the new or changed DI bindings or auto route class. The command is:

`flutter pub run build_runner build --delete-conflicting-outputs`

# Backend Services

## Running Services
To start up the backend services, including the api gateway, simple run `docker compose up` from the root folder of the project in a terminal.

## Debugging
From the Debug and Run menu in VS Code, select the backend service you want to attach a debugger to and click the play button. This debugging session will stay active until you either close VS Code, or bring down the docker containers.

## Changing the nginx.conf file
If you are altering the nginx configuration file while the container is running, your changes will not be reflected until you reload the nginx service running inside the api gateway container. To do this you can run the following command from the root folder of the project in a terminal:

`docker compose exec api_gateway nginx -s reload`