#!/bin/bash
echo "connect server for put data"
cat commandput | tr "\n" " " > commandput.audit
cat commandput.audit | sh > commandput.record
cat commandput.record
echo ""
