Introduction
------------

To package Haskell modules we'd normally write and maintain a ``.cabal`` file.
There's various ways of creating this file, kickstarting with the ``cabal
init`` command or the summoner_ TUI [#]_ or by copying another cabal file and
changing field values by hand.

We offer another package format.  The dialect of field names is the same as
hpack_'s but Dhall_ gives us the power of a configuration programming language
with functions, types and imports. We can translate the default
``package.dhall`` file to the cabal format with the ``dhall-hpack-cabal``
command.

.. note::
   A package specified in a ``package.yaml`` file instead of a ``.cabal`` file
   is only good for packaging tools aware of ``hpack``.  We'd like to see both
   cabal2nix and stack drop support for hpack and recommend using ``hpack`` on
   its own to create the ``.cabal`` file.

   We welcome the growing number of alternative ways to describe packages but
   please use these upstream tools to convert to cabal package descriptions. It
   is the **common** architecture for building applications and libraries
   after all.


.. _summoner: https://kowainik.github.io/projects/summoner
.. _hpack: https://github.com/sol/hpack
.. _Dhall: https://dhall-lang.org/
.. [#] Terminal User Interface
