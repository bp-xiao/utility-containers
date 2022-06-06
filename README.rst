==================
Utility containers
==================

Various utility containers for situations where:

* You'd like to know what happens when a container just exits with an abnormal status code
* You need a *placeholder* container while launching the first ECS service

THe directory structure
=======================

::

  .
  |-- docker-compose.yml
  `-- oneshot  # The oneshot command
      |-- Dockerfile
      `-- main.sh

Build and push the container images
====================================

::

  $ docker-compose build
  $ docker-compose push
