#!/bin/bash
echo "Enter permissions (e.g., rwxr-xr--):"
read perms
echo $(( ( $(echo $perms | cut -c1-3 | tr -cd 'rwx' | wc -c) * 4 ) + ( $(echo $perms | cut -c4-6 | tr -cd 'rwx' | wc -c) * 2 ) + ( $(echo $perms | cut -c7-9 | tr -cd 'rwx' | wc -c) * 1 ) ))

