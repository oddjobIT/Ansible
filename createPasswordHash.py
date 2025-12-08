"""
Creates a SHA512 hash of a password
Password is located in config.py
"""

import crypt
import config


hashed = crypt.crypt(config.password,crypt.mksalt(crypt.METHOD_SHA512))

with open("phash.txt",'w') as outfile:
    outfile.write(hashed)

#print("hash written to phash.txt")
