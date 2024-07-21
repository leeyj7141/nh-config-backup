#!/bin/bash 


kubectl patch ns $1  -p '{"metadata":{"finalizers":null}}' --type=merge
