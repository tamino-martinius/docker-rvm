# Docker RVM for CI

This repository contains some `Dockerfile` code for building containers which
come pre-baked with RVM.

*Please Note:* There are currently not all Ubuntu Versions available - most are Work in Progress

## Tags

### Ruby Versions

The `taminomartinius/rvm` image alone is simply the latest Ubuntu LTS release
(currently) `ubuntu:xenial` with the latest stable [RVM](http://rvm.io)
installed on it. There are however additional tags with Rubies pre-installed:

* `taminomartinius/rvm:2.3.0` - Ruby (MRI) 2.3.0
* `taminomartinius/rvm:jruby` - JRuby, whichever version RVM aliases to
* `taminomartinius/rvm:ruby-head` - Ruby (MRI)'s latest `HEAD` at the time of image
  creation

The available Ruby Versions are:

* `2.2.0`
* `2.2.1`
* `2.2.2`
* `2.2.3`
* `2.2.4`
* `2.2.5`
* `2.2.6`
* `2.2.7`
* `2.2.8`
* `2.2.9`
* `2.3.0`
* `2.3.1`
* `2.3.2`
* `2.3.3`
* `2.3.4`
* `2.3.5`
* `2.3.6`
* `2.4.0`
* `2.4.1`
* `2.4.2`
* `2.4.3`
* `2.5.0`
* `jruby`
* `ruby-head`

### Ubuntu Releases

If you want to use a different Ubuntu release you can add the release name as suffix:

* `taminomartinius/rvm:2.3.0-trusty` - Ruby (MRI) 2.3.0 on Ubuntu Trusty Tahr
* `taminomartinius/rvm:2.3.1-utopic` - Ruby (MRI) 2.3.1 on Ubuntu Utopic Unicorn

The available Ubuntu Releases are:

#### Current

* `trusty`
* `xenial` (rubies are WIP)
* `artful` (rubies are WIP)
* `bionic` (rubies are WIP)

#### End Of Life

* `lucid` (release is WIP)
* `maverick` (release is WIP)
* `natty` (release is WIP)
* `oneiric` (release is WIP)
* `precise` (release is WIP)
* `quantal` (release is WIP)
* `raring` (release is WIP)
* `saucy` (release is WIP)
* `utopic` (release is WIP)
* `vivid` (release is WIP)
* `wily` (release is WIP)
* `yakkety` (release is WIP)
* `zesty` (release is WIP)

Please Note: Ubuntu releases which are in end of life have their package sources
changed to `old-releases` archive of ubuntu.
