# devops

1. Each folder is a service [here](https://github.com/ChatWithPDF/devops/tree/main/project/pravrishti/dev) and contains a main.yml which can be run using ansible to deploy that service
2. Any expected environment variable should be configured inside the shared vault under the folder name {project}-{env}
3. Nginx acts as a reverse proxy for all the services
4. Images are built using github actions and stored in github packages and ansible workflows pull them by authenticating using Github Token
5. There is a shared Jenkins that can be used to redeploy services, services are named as {project}-{env}-{service}
6. The name of service is in sync with the subdomain it is accessible on.

Pre Requisistes:

Please add vault token (ANSIBLE_HASHI_VAULT_TOKEN) and vault address (VAULT_ADDR) to environment. 
