module.exports =
  toggle: =>
    atom.config.set "tree-view.hideVcsIgnoredFiles", !atom.config.get("tree-view.hideVcsIgnoredFiles")
  activate: (state) ->
    atom.commands.add "atom-workspace", "git-hide:toggle-ignored-file-state", @toggle
