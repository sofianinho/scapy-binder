# Forging packets with Scapy

[![Binder](http://mybinder.org/badge_logo.svg)](http://mybinder.org/v2/gh/sofianinho/scapy-binder/master)

A Binder-compatible repo for scapy training.

Access this Binder at the following URL 

http://mybinder.org/v2/gh/sofianinho/scapy-binder/master

## Notes

For better results, especially for the permissions that are necessary to forge packets:
```
docker run --rm --privileged -p 8080:8888  --user root sofianinho/scapy-binder:latest jupyter  notebook --ip=0.0.0.0 --allow-root
```

