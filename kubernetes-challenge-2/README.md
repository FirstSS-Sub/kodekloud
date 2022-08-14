# 作業手順

## ポートを修正する
- `vim .kube/config`
  - 6433 -> 6443 に修正

## kube-apiserver を修正する
- `docker ps -a | grep api-` で問題のコンテナのIDを調べる
- `docker logs <コンテナのID>` をすると、`/etc/kubernetes/pki/ca-authority.crt` というファイルが存在しないことがわかる
- `vim /etc/kubernetes/manifests/kube-apiserver.yaml`
  - `:%s/ca-authority/ca/g`

## /web の条件を満たす
- `scp /media/*.png node01:/web/`