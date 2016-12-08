ansible-anyenv
====================================

[![Build Status](https://travis-ci.org/FGtatsuro/ansible-anyenv.svg?branch=master)](https://travis-ci.org/FGtatsuro/ansible-anyenv)

Ansible role for anyenv.

Requirements
------------

The dependencies on other softwares/librarys for this role.

- Debian
- OSX
  - Homebrew (>= 0.9.5)

Role Variables
--------------

The variables we can use in this role.

|name|description|default|
|---|---|---|
|anyenv_home|The directory anyenv(`.anyenv` directory) is put.|/root|
|anyenv_owner|User who uses anyenv. `anyenv_home` should also be home directory of this user.|root|
|anyenv_group|Group who uses anyenv. `.anyenv` directory is owned by this group.|root(This value is only valid on Linux. For OSX, please use `wheel` or `admin` as same means.)|
|anyenv_profile|Profile including anyenv settings. This profile is put under `anyenv_home`.|.profile|

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

Notes
-----

- This role just installs anyenv, doesn't install any Xenv(ex. pyenv, rbenv) automatically. If you want to use them, please install them manually.

  ```bash
  $ anyenv install rbenv
  ```

- If you want to use anyenv or Xenv in playbook after this role is assigned, you may need to reload `anyenv_profile` as follows.
  In this example, `anyenv_profile` is reloaded because /bin/bash is used as login shell.

  ```yaml
  - name: Install ruby 2.1.2
    shell: /bin/bash -lc "rbenv install 2.1.2 && rbenv rehash && rbenv global 2.1.2"
  ```

License
-------

MIT
