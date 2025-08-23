# Listmonk

newsletter

## Setup

Make sure that the [trafik](https://github.com/Mind-Hochschul-Netzwerk/traefik) container is up and running.

Edit `.env.sample` and save it as `.env`

Run `make prod`

Navigate to [http://listmonk.docker.localhost](http://listmonk.docker.localhost). Tell your browser to accept the self-signed certificate. You will have to repeat this step whenever you restart your container.
