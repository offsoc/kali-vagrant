# kali-vagrant

## Setup
First, install packer and VirtualBox.
Then `cp kali-vars.json.template kali-vars.json` and fill the values.
Repeat for kali-light.

## Running the build

Run either (or both) of those commands:
```
packer build -var-file=kali-vars.json config.json
packer build -var-file=kali-light-vars.json config.json
```

This will upload to the Vagrant cloud.
To avoid doing that and keeping the build local, remove the `vagrant-cloud` post-processor from the config file.
