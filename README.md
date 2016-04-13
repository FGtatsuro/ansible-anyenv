ansible-anyenv
====================================

[![Build Status](https://travis-ci.org/FGtatsuro/ansible-anyenv.svg?branch=master)](https://travis-ci.org/FGtatsuro/ansible-anyenv)

Ansible role for anyenv.

Requirements
------------

The dependencies on other softwares/librarys for this role.

- Debian
- Alpine Linux
- OSX
  - Homebrew (>= 0.9.5)

Role Variables
--------------

The variables we can use in this role.

|name|description|default|
|---|---|---|
|anyenv_home|The directory anyenv(`.anyenv` directory) is put.|/root|
|anyenv_owner|User who uses anyenv. `anyenv_home` should also be home directory of this user.|root|
|anyenv_group|Group who uses anyenv. `.anyenv` directory is owned by this group.|wheel|
|anyenv_profile|Profile including anyenv settings. This value is depended on shell `anyenv_owner` uses.|.profile|

Role Dependencies
-----------------

The dependencies on other roles for this role.

- FGtatsuro.python-requirements
- FGtatsuro.git

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: FGtatsuro.anyenv }

Test on local Docker host
-------------------------

This project run tests on Travis CI, but we can also run them on local Docker host.
Please check `install`, `before_script`, and `script` sections of `.travis.yml`.
We can use same steps of them for local Docker host.

Local requirements are as follows.

- Ansible (>= 2.0.0)
- Docker (>= 1.10.1)

License
-------

MIT
