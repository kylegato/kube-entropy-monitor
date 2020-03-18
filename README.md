# kube-entropy-monitor
[![Docker Repository on Quay](https://quay.io/repository/kylegato/kube-entropy-monitor/status "Docker Repository on Quay")](https://quay.io/repository/kylegato/kube-entropy-monitor)

Basic docker image that outputs available entropy to stdout


## Usage
Run it as a daemonset in the kube-system namespace.

```
kubectl create -f ./kube-entropy-monitor-ds.yaml
```

## Monitoring
Use your favorite log aggregator (Splunk/LogDNA/Papertrail) to setup alerts on the output from the script

## Sample outputs:

```
1584545334 - Wed Mar 18 15:28:54 UTC 2020 -  - available_entropy=3166
```
