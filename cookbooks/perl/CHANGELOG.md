# perl Cookbook CHANGELOG

This file is used to list changes made in each version of the perl cookbook.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## 8.0.0 - *2022-02-08*

- Enable `unified_mode` and require Chef >= 15.3
- Remove delivery and move to calling RSpec directly via a reusable workflow
- Update tested platforms
- Standardise files with files in sous-chefs/repo-management

## 7.1.3 - *2022-02-08*

- Remove delivery folder

## 7.1.2 - *2021-08-30*

- Standardise files with files in sous-chefs/repo-management

## 7.1.1 (2021-05-11)

- Standardise files with files in sous-chefs/repo-management

## 7.1.0 (2020-11-05)

### Changed

- Sous Chefs Adoption
- Update Changelog to Sous Chefs
- Update to use Sous Chefs GH workflow
- Update README to sous-chefs
- Update metadata.rb to Sous Chefs
- Update test-kitchen to Sous Chefs

### Fixed

- ChefSpec fixes
- Yamllint fixes
- Fix FreeBSD installation

### Added

- Add mdlrc
- Add Ubuntu 20.04 testing

### Removed

- Remove EL 6 testing
- Remove Amazon Linux 1 testing

## 7.0.1 (2018-07-24)

- Fix readme chef version requirement

## 7.0.0 (2018-07-24)

- Remove windows cookbook dependency and require Chef 13.4+

## 6.0.1 (2018-02-16)

- Allow suppressing the `cpanm` diff with a new attribute
- Remove the ChefSpec matchers that are autogenerated now

## 6.0.0 (2017-11-27)

### Breaking changes

- On Windows this cookbook now uses the Chocolatey package manager to install Strawberry Perl instead of downloading the zip file and manually installing it. This does require chocolatey to first be installed on the system and will use the C:\strawberry\perl path

### Other Changes

- Fixed Amazon Linux support on Chef 13
- Removed build-essential from the Berksfile since it wasn't needed there
- Fixed cpan_module resource to work on Windows as well
- Added Windows 2016 Testing
- Improved attribute and resource documentation in the readme

## 5.3.0 (2017-11-27)

- Fixing the removal of the leading `v` and the conversion of the underscores to dots in Perl module versions when the version strings already have dots (ex: v1.2.0)
- Enable FC016 testing again
- Use the latest cpanm which has 4 years of bug fixes and enhancements

## 5.2.1 (2017-08-30)

- Do not use an explicit owner and group on Windows. Let Chef do the right thing here which prevents breakage when the Administrator account has been renamed

## 5.2.0 (2017-05-06)

- Fix license string to be a SPDX standard license string
- Simplify true/false statement
- Depend on a modern windows cookbook
- Require Chef 12.7+ to workaround an action_class bug

## 5.1.0 (2017-03-01)

- Resolve resource cloning in the test cookbook
- Test with Local Delivery instead of Rake
- Use the root_group attribute from Ohai instead of defining it ourselves
- Use multi-package to speed up installs in the default recipe
- Don't use "module" as a resource property since its reserved. Instead use module_name and wire it up so a user can actually define a module name here instead of the module name coming from the name of the resource

## 5.0.0 (2017-02-27)

- Convert the existing HWRP to a custom resource and require Chef 12.5 and later

## 4.0.0 (2016-09-03)

- Testing updates
- Require Chef 12 or later

## v3.1.0 (2016-08-05)

- Added support for SUSE / openSUSE and IBM zlinux

## v3.0.0 (2016-04-07)

- Removed installation of the libwww-perl package, which is not required for Perl to function out of the box and can be installed by CPAN instead
- Resolved Chef 13 compatibility warnings in the cpan_module provider
- Updated the Windows Perl download URL to the new server
- Updated Perl to 5.22.1.3 on Windows
- Added the windows cookbook as a dependency so the Windows install converges
- Added module install / uninstall to the default Test Kitchen suite
- Added a basic Kitchen Inspec test to ensure perl is installed
- Added build-essential to the test cookbook so module installs would complete
- Added perl-devel to RHEL 6+ hosts

## v2.0.0 (2015-09-24)

- Rewrote cpan_module definition as a LWRP with Chefspec tests and matchers
- Add the ability to select version in the cpan_module LWRP
- Fixed cpan_module incompatibility with Chef 12
- Fixed download location for cpanm to prevent failures on the redirect
- Removed Chef 10 compatibility. This cookbook now requires 11+
- Added libwww-perl installation on Debian systems
- Added support for RHEL/CentOS 7 and Fedora to the default.rb recipe
- Added source_url and issues_url metadata
- Added a chefignore file to limit files uploaded to the server
- Updated Contributing and Testing docs
- Added a rakefile for simplified testing
- Added maintainers.md and maintainers.toml file and a Rake task for generating MD from TOML
- Updated platforms tested in Kitchen CI and update the Kitchen config format
- Updated to the standard chef .rubocop.yml file
- Updated all testing and development gems to the latest
- Add basic Chefspec test
- Updated Travis CI to test on modern ruby versions and reenabled rspec and foodcritic testing
- Added cookbook version and Travis CI badges to the readme
- Added a .foodcritic file to skip FC015
- Removed all references to Opscode
- Remove the Gemfile.lock that shouldn't have been committed

## v1.2.4 (2014-06-16)

- [COOK-4725] Use windows_path to set the PATH

## v1.2.2

### New Feature

- **[COOK-4013](https://tickets.chef.io/browse/COOK-4013)** - add omnios support to perl cookbook

## v1.2.0

### Improvement

- **[COOK-3230](https://tickets.chef.io/browse/COOK-3230)** - Upgrade cpanm
- **[COOK-2998](https://tickets.chef.io/browse/COOK-2998)** - Improve install speed by using `--notest`

## v1.1.2

### Bug

- [COOK-2973]: perl cookbook has foodcritic errors

## v1.1.0

- [COOK-1765] - Install Strawberry Perl on Windows in Perl Cookbook

## v1.0.2

- [COOK-1300] - add support for Mac OS X

## v1.0.0

- [COOK-1129] - move lists of perl packages to attributes by platform
- [COOK-1279] - resolve regression from COOK-1129
- [COOK-1299] - use App::cpanminus (cpanm) to install "cpan packages"

## v0.10.2

- [COOK-1279] Re-factor recipe and fix platform_version 5 bug for redhat family platforms

## v0.10.1

- [COOK-1129] centos/redhat needs the CPAN RPM installed

## v0.10.0

- Current released version