# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.2] - 2020-06-08

### Fixed

- matchLabels have been changed to reflect Rancher expectations.
  (Wrong match labels lead to lots of error messages, when Rancher tries to
   update agents)

## [1.0.1] - 2020-06-08

### Fixed

- Rancher agent images can now be updated and are no longer
  ignored in the lifecycle configuration options.

## [1.0.0] - 2020-05-13

### Added

- Initial release.
