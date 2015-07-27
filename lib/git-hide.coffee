utilities = require "./utilities.coffee"

class HideItems
  atom.deserializers.add this

  constructor : () ->
    @visible = !atom.config.get "git-hide.hideOnStartup"
    atom.packages.onDidActivatePackage @onPckgActivate

  onPckgActivate : (pkg) =>
    if pkg.name == "tree-view" and !@visible then @hideIgnoredItems()

  hideIgnoredItems : =>
    utilities.getPanel().classList.add "ignore-hidden"

  unhideIgnoredItems : =>
    utilities.getPanel().classList.remove "ignore-hidden"

  toggleIgnoredItems : =>
    if @visible
      @hideIgnoredItems()
    else
      @unhideIgnoredItems()

    @visible = !@visible
    atom.config.set "git-hide.hideOnStartup", !@visible

module.exports = HideItems
