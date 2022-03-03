Getting Started
===============

macOS Details
-------------

see: 
 - https://github.com/overhangio/tutor/blob/master/tutor/templates/config/base.yml
 - https://github.com/stepwisemath/tutor-deploy/blob/main/.github/workflows/deploy_dev.yml#L51

**BIG CLUE** you can run L51 from your dev command line if you have all of the AWS and kubernetes and terra* stuff installed.

Installing pre-commit hooks for use with git
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This repository uses [pre-commit](https://pre-commit.com/) for managing its pre-commit hooks

The hooks are configured in the `.pre-commit-config.yaml` file in the root of this repository.
To take advantage of the hooks you'll first need to install the shim in your `.git/hooks` directory.

.. code-block:: shell

  pre-commit install


This will now run the hooks configured in `.pre-commit-config.yaml` when you run a git commit and will pass each hook the list of files staged as part of the commit. You can test the hooks by doing:


.. code-block:: shell

  pre-commit run


Repository structure
--------------------
This repository contains two main directories: 

- `components`
~~~~~~~~~~~~~~

This directory contains "components".
Components are small terraform modules that pack all the logic to deploy  
They can make use of more generic Terraform modules (community provided or custom designed) and aim to encapsulate the logic within each abstraction layer (VPC, EKS)

- `environments`
~~~~~~~~~~~~~~~~

This directory contains Terragrunt overrides (.hcl) to customize and deploy each of the stacks for a particular Open edX environment.

__Please refer the READMEs in each for more details.__


