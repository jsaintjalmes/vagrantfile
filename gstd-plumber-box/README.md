# gstd/devialet plugins pipeline kit

[vagrant](https://www.vagrantup.com/) is an open-source virtual machine service that rely on virtual box but offers a lighter system, without graphical interface, which can be run from the command line. 

## setup
run ```setup.sh``` script from the root directory to install vagrant and its dependencies.
in gstd-plumber-box folder, run ```vagrant up``` to install the box, ```vagrant ssh``` to connect. 
the box is configured with a shared folder with the host, in the current directory. 

## documentation

* [gstreamer daemon overview and quick start guide](https://developer.ridgerun.com/wiki/index.php/GStreamer_Daemon)
* [gst-plugin-devialet source code and quick start](https://github.com/devialet/gst-plugins-devialet)
