HideItems = require "./lib/git-hide.coffee"

module.exports =

  config :
    hideOnStartup :
      type : 'boolean'
      default : true

  activate: (state) ->
    @hideItems = new HideItems()
    atom.commands.add "atom-workspace", "git-hide:toggle-ignored-file-state",
                               @hideItems.toggleIgnoredItems
