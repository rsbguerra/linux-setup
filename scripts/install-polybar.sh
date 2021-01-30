sudo apt install build-essential git cmake cmake-data pkg-config libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev

# Download from gitÇ
# https://github.com/polybar/polybar/releases
tar xvf polybar-.tar

cd polybar/
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install