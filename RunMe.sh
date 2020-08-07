#!/bin/bash
sudo apt update -y
sudo apt install -y g++ python3 python3-dev python-six scons swig m4 protobuf-compiler libgoogle-perftools-dev
sudo rm -rf /home/$USER/gem5/
git -C /home/$USER/ clone https://gem5.googlesource.com/public/gem5
sudo cp -f ./FileSystemConfig.py /home/$USER/gem5/configs/common/FileSystemConfig.py
sudo cp -f ./convert.py /home/$USER/gem5/build/NULL/python/m5/util/convert.py
x_dir=$(pwd)
cd ~
cd gem5/
scons build/NULL/gem5.debug PROTOCOL=Garnet_standalone
cd $x_dir
sudo cp -f ./FileSystemConfig.py /home/$USER/gem5/configs/common/FileSystemConfig.py
sudo cp -f ./convert.py /home/$USER/gem5/build/NULL/python/m5/util/convert.py
cd ~
cd gem5/
scons build/NULL/gem5.debug PROTOCOL=Garnet_standalone
