#!/bin/bash

sudo sh -c 'echo :WSLInterop:M::MZ::/init:PF > /usr/lib/binfmt.d/WSLInterop.conf'                      
sudo systemctl unmask systemd-binfmt.service
sudo systemctl restart systemd-binfmt
sudo systemctl mask systemd-binfmt.service
