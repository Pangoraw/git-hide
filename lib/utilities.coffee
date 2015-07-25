utilities =
  getIgnoredElements : ->
    atom.views.getView(atom.workspace).querySelectorAll ".status-ignored"

  getPanel : -> atom.views.getView(atom.workspace).querySelector "ol.tree-view"

module.exports = utilities
