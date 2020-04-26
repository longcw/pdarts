# install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py pip==19.3.1
python3 setup.py install

# cuda
CUDA_INSTALL_PATH=/usr/local
aws s3 cp s3://display/CUDNN/libcudnn7_7.6.2.24-1+cuda10.0_amd64.deb . --endpoint-url https://store-028.blobstore.apple.com --region store-028
sudo dpkg -i libcudnn7_7.6.2.24-1+cuda10.0_amd64.deb

# install pytorch
pip3 install https://download.pytorch.org/whl/cu100/torch-1.4.0%2Bcu100-cp36-cp36m-linux_x86_64.whl
pip3 install https://download.pytorch.org/whl/cu100/torchvision-0.5.0%2Bcu100-cp36-cp36m-linux_x86_64.whl

# install turibolt
pip3 install --upgrade turibolt --index https://pypi.apple.com/simple

# download data
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
python3 $DIR/keyboard_data/download_data.py