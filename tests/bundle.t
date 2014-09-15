Load plugin from master.

  $ antigen-bundle $PLUGIN_DIR &> /dev/null
  $ hehe
  hehe

Load the plugin again. Just to see nothing happens.

  $ antigen-bundle $PLUGIN_DIR
  $ hehe
  hehe

Confirm there is still only one repository.

  $ ls $ADOTDIR/repos | wc -l
  1

Load a prezto style module. Should only source the `init.zsh` present in the
module.

  $ antigen-bundle $PLUGIN_DIR2 &> /dev/null
  $ hehe2
  hehe2

The alias defined in the other zsh file should not be available.

  $ unsourced-alias
  zsh: command not found: unsourced-alias
  [127]

Load a prezto style module. Should only source the `init.zsh` symbolic link
present in the module.

  $ antigen-bundle $PLUGIN_DIR3 &> /dev/null
  $ hehe3
  hehe3

The alias defined in the other zsh file should not be available.

  $ unsourced-alias3
  zsh: command not found: unsourced-alias3
  [127]

Load an oh-my-zsh style module. Should only source the `*.plugin.zsh` present in the
module.

  $ antigen-bundle $PLUGIN_DIR4 &> /dev/null
  $ hehe4
  hehe4

The alias defined in the other zsh file should not be available.

  $ unsourced-alias4
  zsh: command not found: unsourced-alias4
  [127]

Load an oh-my-zsh style module. Should only source the `*.plugin.zsh` symbolic link
present in the module.

  $ antigen-bundle $PLUGIN_DIR5 &> /dev/null
  $ hehe5
  hehe5

The alias defined in the other zsh file should not be available.

  $ unsourced-alias5
  zsh: command not found: unsourced-alias5
  [127]

Load zsh module. Should source all `*.zsh` files present in the module.

  $ antigen-bundle $PLUGIN_DIR6 &> /dev/null
  $ hehe6
  hehe6
  $ sourced-alias6
  sourced-alias6

The alias defined in the other sh file should not be available.

  $ unsourced-alias6
  zsh: command not found: unsourced-alias6
  [127]

Load sh module. Should source all `*.sh` files present in the module.

  $ antigen-bundle $PLUGIN_DIR7 &> /dev/null
  $ hehe7
  hehe7
  $ sourced-alias7
  sourced-alias7

Load not zsh module. Should not source any files present in the module.

  $ antigen-bundle $PLUGIN_DIR8 &> /dev/null
  $ unsourced-alias8
  zsh: command not found: unsourced-alias8
  [127]

