# Gethdo

[![Build Status](https://travis-ci.org/braingourmets/gethdo.svg?branch=master)](https://travis-ci.org/braingourmets/gethdo)
[![Code Climate](https://codeclimate.com/github/braingourmets/gethdo.svg)](https://codeclimate.com/github/braingourmets/gethdo)
[![Coverage Status](https://coveralls.io/repos/braingourmets/gethdo/badge.png)](https://coveralls.io/r/braingourmets/gethdo)
[![Dependency Status](https://gemnasium.com/braingourmets/gethdo.svg)](https://gemnasium.com/braingourmets/gethdo)

Gethdo is a time management and to-do application that implements the Getting
Things Done approach by David Allen.

## Rake tasks

### yard

The `yard` rake task builds the documentation in `doc/api/`. If there already is
some documentation in this directory, this task will overwrite it.

### doc

The `doc` rake task builds the documentation in `doc/`. If there already is
some documentation in this directory, this task will _not_ overwrite it.

It is recommended to generally use the `yard` task instead.
