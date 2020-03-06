sudo pacman -S anaconda

# ~/.bashrc
export PATH=/opt/anaconda/bin:$PATH

source /opt/anaconda/bin/activate root

conda init

conda create -n torch python=3.7
conda activate torch
conda install cudatoolkit
pip install numpy scipy matplotlib opencv-python torch torchvision
