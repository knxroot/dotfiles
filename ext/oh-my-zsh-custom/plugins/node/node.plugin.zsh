# Open the node api for your current version to the optional section.
# TODO: Make the section part easier to use.
function node-docs {
  # get the open command
  local open_cmd
  if [[ $('uname') == 'Linux' ]]; then
      open_cmd='xdg-open'
  elif  [[ "$OSTYPE" = darwin* ]]; then
      open_cmd='open'
  elif  [[ "$OSTYPE" = cygwin* ]]; then
      open_cmd='cygstart'
  fi

  $open_cmd "http://nodejs.org/docs/$(node --version)/api/all.html#all_$1"
}



