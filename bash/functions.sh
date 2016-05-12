#!/bin/bash
# Defines a bunch of useful functions
function is_ubuntu {
  lsb_release -a |& grep -q "Ubuntu"
}
