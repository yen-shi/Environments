#!/bin/bash
wget https://repo.continuum.io/miniconda/Miniconda3-3.7.0-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda3
echo "export PATH=\"$HOME/miniconda3/bin:$PATH\"" >> ~/.bashrc
