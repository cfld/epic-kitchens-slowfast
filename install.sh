# install requirements based on og fb implementation https://github.com/facebookresearch/SlowFast/blob/master/INSTALL.md
conda create --name slowfast_env python=3.7
conda activate slowfast_env
pip install 'git+https://github.com/facebookresearch/fvcore'
conda install pytorch torchvision torchaudio cudatoolkit=10.2 -c pytorch
pip install simplejson
conda install av -c conda-forge
conda install -c iopath iopath
pip install psutil
pip install opencv-python
pip install tensorboard
conda install pandas
conda install -c anaconda scipy

# install detectron
git clone https://github.com/facebookresearch/detectron2 detectron2_repo
pip install -e detectron2_repo