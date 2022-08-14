#!/bin/bash
  
kubectl config set-context developer --user=martin --cluster=kubernetes && \
        kubectl config use-context developer
