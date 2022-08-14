#!/bin/bash
  
kubectl config set-context developer --user=martin --cluster=kubernetes && \
        kubectl config use-context developer && \
        kubectl config set-credentials martin --client-key=/root/martin.key --client-certificate=/root/martin.crt
