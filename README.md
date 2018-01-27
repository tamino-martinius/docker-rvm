# Docker RVM for CI

This repository contains some `Dockerfile` code for building containers which
come pre-baked with RVM.

## Tags

### Ruby Versions

The `taminomartinius/rvm` image alone is simply the latest Ubuntu LTS release
(currently) `ubuntu:xenial` with the latest stable [RVM](http://rvm.io)
installed on it. There are however additional tags with Rubies pre-installed:

* `taminomartinius/rvm:2.3.0` - Ruby (MRI) 2.3.0
* `taminomartinius/rvm:jruby` - JRuby, whichever version RVM aliases to
* `taminomartinius/rvm:ruby-head` - Ruby (MRI)'s latest `HEAD` at the time of image
  creation

### Ubuntu Releases

If you want to use a different Ubuntu release you can add the release name as suffix:

* `taminomartinius/rvm:2.3.0-trusty` - Ruby (MRI) 2.3.0 on Ubuntu Trusty Tahr
* `taminomartinius/rvm:2.3.1-utopic` - Ruby (MRI) 2.3.1 on Ubuntu Utopic Unicorn

Please Note: Ubuntu releases which are in end of life have their package sources
changed to `old-releases` archive of ubuntu.

## Rubies

* `2.2.5`
* `2.2.6`
* `2.3.0`
* `2.3.1`
* `jruby`
* `jruby-9.1.2.0`
* `ruby-head`

## Ubuntu

### Current

* `trusty`
* `xenial`
* `artful`
* `bionic`

### End Of Life

* `lucid`
* `maverick`
* `natty`
* `oneiric`
* `precise`
* `quantal`
* `raring`
* `saucy`
* `utopic`
* `vivid`
* `wily`
* `yakkety`
* `zesty`
