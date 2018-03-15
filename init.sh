#!/bin/bash
git clone $(git remote show origin|grep Fetch|awk '{print $3}'|sed -e 's/deploy/module/') compose/extra-addons
