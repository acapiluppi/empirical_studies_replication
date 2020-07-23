#!/bin/bash
for i in $(curl "https://api.github.com/orgs/[organization]/repos?access_token=[access_token]" | grep -oP '"clone_url":\s*"\K[^"]+'); do
  echo git clone "$i"
done
