packer-templates
================

Templates for https://www.packer.io/

## Current Boxes

64-bit boxes:

- CentOS 5.8 Desktop (64-bit)

## How to Build

#### Dependencies

- [Packer](https://www.packer.io/)

```
$ packer version
Packer v0.7.5
```

#### Clone This Repository

```
$ git clone git@github.com:mogproject/packer-templates.git
$ cd packer-templates
```

#### Build VirtualBox Image

```
$ cd centos
$ packer build -only=virtualbox-iso centos58-desktop.json
```

```centos58-desktop-nocm-0.1.0.box``` will be made in the ```box/virtualbox```  directory.

## Integrate with Vagrant

#### Dependencies

- [Vagrant](https://www.vagrantup.com/)

```
$ vagrant version
Installed Version: 1.7.2
Latest Version: 1.7.2
```

#### Add Box to Vagrant

```
$ vagrant box add centos58-desktop box/virtualbox/centos58-desktop-nocm-0.1.0.box
```

#### Boot the Virtual Machine

```
$ cd your/vagrant/project
$ vagrant init centos58-desktop
$ vagrant up
```

## Directory Structure

```
.
└── centos
    ├── box                      [i] Output directory for box files created by Packer
    ├── centos58-desktop.json    Settings file for Packer
    ├── http                     kickstart script for CentOS
    ├── iso                      [i] For storing manually downloaded ISO images (optional)
    ├── packer_cache             [i] Cache directory used by Packer
    ├── script                   Shell scripts for privisioning
    └── tpl                      Vagrant settings for Packer
```

Directories marked with ```[i]``` will be ignored by git.

## References

- https://github.com/boxcutter/centos

