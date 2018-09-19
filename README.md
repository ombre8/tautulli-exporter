# Tautulli Exporter for Prometheus
This exports metrics from Tautulli for use in Prometheus.

This is based HEAVILY off of the HAProxy exporter created by the Prometheus Authors.
For original license information see that project [here](https://github.com/prometheus/haproxy_exporter).

## Using the exporter
I recommend running this in a Docker container.  I'll link to that once I have it built.  For now, you can run this with Go.
```
TAUTULLI_API_KEY="yourapikeyhere" TAUTULLI_URI="http://192.168.1.4:8181" go run tautulli_exporter.go
```

## Environment variables
You can configure this exporter using the following environment variables:
* `TAUTULLI_API_KEY` - required - Set this to your API key for Tautulli
* `TAUTULLI_URI` - Set this to your Tautulli address, including port number (defaults to `http://127.0.0.1:8181`)
* `TAUTULLI_SSL_VERIFY` - Set this to `true` if you want the exporter to validate your Tautulli SSL set up
* `TAUTULLI_TIMEOUT` - Set this to the timeout the exporter should use for scraping Tautulli (defaults to five seconds)
* `SERVE_PORT` - The port this exporter should serve on (defaults to `9487`)
