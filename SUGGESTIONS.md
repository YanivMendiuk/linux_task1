 Suggestions

### Project


### README
- Wonderful README file
- Missing link to
  - CONTRIBUTORS.md
  - TASKS.md

### SCRIPT
- `set -x` is left from development process, which is not optimal
- if you use too much sudo, may be prefer to check $EUID and run as root
- there is no validation in script that you are on debian based system in the bash script
- use `.tmpl` files instead of EOF/EOL
- use [[ and not [
