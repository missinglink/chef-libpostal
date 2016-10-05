# chef-libpostal

A chef recipe to install the [libpostal](https://github.com/openvenues/libpostal) parser.


## Usage
The `libpostal::default` recipe will download, compile and install libpostal, as well as the training data.

It requires about 4GB of space for all the training data, which is downloaded from S3.

By default, the code is downloaded to `/usr/local/libpostal` and the training data goes in `/usr/local/libpostal-data`.

if the `node[:libpostal][:extra_data_url` value is set, the script will attempt to download and extract a `gzip` archive from that
URL into the training data.
