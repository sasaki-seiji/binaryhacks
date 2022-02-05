#!/bin/sh
grep -r "_chk " /usr/include | sed 's/.*\(__.*_chk\).*/\1/' | sort | uniq
