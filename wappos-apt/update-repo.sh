#!/bin/bash
set -e
echo "[WappOS] Mise à jour du dépôt APT..."

dpkg-scanpackages pool /dev/null > dists/stable/main/binary-amd64/Packages
gzip -k -f dists/stable/main/binary-amd64/Packages

echo "[WappOS] Terminé."
