## gstd pipeline practice box ##

## BASIC CONFIG ##

# update
apt-get update
apt-get upgrade -y

# install generic packages
sudo apt-get install -y \
	vim \
	git \
	meson \
	tmux \
	python3-pip \
	make

# git ssh forwarding
ssh-keyscan -H github.com >> ~/.ssh/known_hosts

## GSTREAMER INSTALL ##

# install gstreamer
mkdir Developments
chown -R vagrant Developments
cd Developments
git clone https://gitlab.freedesktop.org/gstreamer/gstreamer.git
chown -R vagrant gstreamer
cd gstreamer
git checkout 1.20.5

## GST SHARK INSTALL ##

# install dependencies
sudo apt install graphviz libgraphviz-dev
sudo apt install octave epstool babeltrace gtk-doc-tools

# clone repo
git clone https://github.com/RidgeRun/gst-shark/
cd gst-shark

# install with meson
sudo apt install python3 python3-pip ninja-build
pip3 install --user meson
sudo cp ~/.local/bin/meson /usr/bin/meson

# conf/build/install
meson builddir --prefix /usr/
ninja -C builddir
ninja install -C builddir
