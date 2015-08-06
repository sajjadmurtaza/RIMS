$(document).on 'ready page:load', ->

  $(document).on "mousedown", '.context-menu-one', (event) ->
    input = $(event.target)
    $.contextMenu('destroy',  ".context-menu-one" );
    $.contextMenu
      selector: ".context-menu-one"
      callback: (key, options, event) ->
        window.location.href = input.attr("data-url")

      items:

        edit:
          name: "Edit " + input.attr("data-category-name")