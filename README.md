# kali-vagrant

## Setup
First, install [packer](https://www.packer.io/) and [VirtualBox](https://www.virtualbox.org/).
Then `cp kali-vars.json.template kali-vars.json` and fill the values.

## Running the build

```
packer build -var-file=kali-vars.json config.json
```

This will upload to the Vagrant cloud.
To avoid doing that and keeping the build local, remove the `vagrant-cloud` post-processor from the config file.

## kali-light
To build kali-light, it is possible to simply replace the variables inside `kali-vars.json`.
The `kali-light-vars.json.template` file is only provided as convenience for building the 2 versions without having to change the var file between the builds.
