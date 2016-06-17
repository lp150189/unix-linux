#!/bin/sh

filename=test.txt
vi $filename <<EndOfCommands
i
This file was created automatically
from a shellscript
^[
ZZ
EndOfCommands
