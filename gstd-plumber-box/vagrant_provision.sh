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
	make

# git ssh forwarding
#ssh-keyscan -H github.com >> ~/.ssh/known_hosts

## GSTREAMER INSTALL ##

# install gstreamer
mkdir Developments
chown -R vagrant Developments
cd Developments
git clone https://gitlab.freedesktop.org/gstreamer/gstreamer.git
chown -R vagrant gstreamer
cd gstreamer
git checkout 1.20.5

# gst-plugins-devialet
# permissions required
#git -C subprojects clone git@github.com:devialet/gst-plugins-devialet.git
#meson setup --wipe builddir -Dcustom_subprojects=gst-plugins-devialet -Dgstreamer:tools=enabled --prefix=/tmp/gst
#meson compile -C builddir
#meson install -C builddir

## GST DAEMON INSTALL ##

# install gstd dependencies
sudo apt-get install -y \
	automake \
	libtool \
	pkg-config \
	libgstreamer1.0-dev \
	libgstreamer-plugins-base1.0-dev \
	libglib2.0-dev \
	libjson-glib-dev \
	gtk-doc-tools \
	libreadline-dev \
	libncursesw5-dev \
	libdaemon-dev \
	libjansson-dev \
	libsoup2.4-dev \
	python3-pip \
	libedit-dev 

# install daemon
cd /home/vagrant/Developments
git clone https://github.com/RidgeRun/gstd-1.x.git
cd /home/vagrant/Developments/gstd-1.x
sudo ./autogen.sh
sudo ./configure
sudo make

# install binaries
sudo make install

# build
sudo meson build
sudo ninja -C build

# install binaries!!
sudo ninja -C build install
