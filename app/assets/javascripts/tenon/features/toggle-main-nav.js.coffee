class Tenon.features.ToggleMainNav
  constructor: ->
    @hasStorage = typeof(Storage) != "undefined"
    @_checkStorage() if @hasStorage

    $('.toggle-drawer').on('click', @_toggle)

  _toggle: (e) =>
    e.preventDefault()
    target = $(e.currentTarget).data('target')

    $('body').toggleClass("#{target}-drawer--open")
    @_storeChange(target) if @hasStorage

  _storeChange: (target) ->
    if $('body').hasClass("#{target}-drawer--open")
      localStorage.setItem("#{target}-drawer--open", true)
    else
      localStorage.removeItem("#{target}-drawer--open")

  _checkStorage: ->
    navIsOpen = localStorage.getItem('main-nav-drawer--open')
    $('body').addClass('main-nav-drawer--open') if navIsOpen