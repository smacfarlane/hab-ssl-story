# Test Kitchen
## Build hab packages

```
hab pkg build habitat/planet-haproxy
hab pkg build habitat/planet-nginx
```

## Update cookbooks
### TODO: Make attributes so you can just set in .kitchen.yml
Edit `cookbooks/planet_express/recipes/backend.rb` and `cookbooks/planet_express/recipes/proxy.rb`
Set package_name to match the packages you just built.

Run `bin/start-me-up`.  This starts the proxy first to make sure a known ip is available for the ring.
Optional: Set the automate-url env variable to get data into automate. 

## Remediation
`git checkout smacfarlane/remediate`

This branch contains updated data_bags that fix the ssl settings

`kitchen converge`

# Docker
## Build hab packages and export to containers

*Not tested yet*

```
hab studio enter
build habitat/planet-haproxy
build habitat/planet-nginx

hab pkg export docker $HAB_ORIGIN/planet-haproxy
hab pkg export docker $HAB_ORIGIN/planet-nginx
```

Exit the studio

```
docker-compose up
docker-compose scale web=3
```