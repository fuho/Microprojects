# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

#FUHO: My edits below
## Fancy colors
red='\[\e[0;31m\]'
RED='\[\e[1;31m\]'
blue='\[\e[0;34m\]'
BLUE='\[\e[1;34m\]'
cyan='\[\e[0;36m\]'
CYAN='\[\e[1;36m\]'
black='\[\e[0;30m\]'
BLACK='\[\e[1;30m\]'
green='\[\e[0;32m\]'
GREEN='\[\e[1;32m\]'
yellow='\[\e[0;33m\]'
YELLOW='\[\e[1;33m\]'
magenta='\[\e[0;35m\]'
MAGENTA='\[\e[1;35m\]'
white='\[\e[0;37m\]'
WHITE='\[\e[1;37m\]'
NC='\[\e[0m\]' # No Color

#set my command prompt:
#classic colourful:
#PS1="${GREEN}\u${NC}@${green}\h${BLUE}\w${NC}${YELLOW}\$ ${NC}"
#enhanced squiglyful
#Prints green snake underneath first line of prompt all the way accross the terminal window, correctly
#changes length of snake when terminal window is resized
PROMPT_COMMAND='python -c "import sys,os; sys.stdout.write( \"\\033[1;32m\\033(0\" + (\"prsssrpooo\"*100)[:int(os.popen(\"tput cols\",\"r\").read().strip())] + \"\\033(B\\r\")"'
PS1="${GREEN}\u${NC}@${green}\h${NC} ${MAGENTA}\D{%a.%Y%m%d.%H%M%S}${NC} ${BLUE}[\w]${NC}\n${YELLOW}\$ ${NC}"
