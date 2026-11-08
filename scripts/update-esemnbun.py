#!/usr/bin/env python3
"""Refresh only eSemnBun definitions from the verified upstream release bundle."""
import hashlib,io,json,urllib.request,zipfile
from pathlib import Path
base='https://esemnbun.md/packages/'
try:
 r=json.load(urllib.request.urlopen(base+'version.json',timeout=30))
except urllib.error.HTTPError as error:
 if error.code==404:print('Package feed not deployed yet.');raise SystemExit(0)
 raise
url=base+'downloads/v'+r['version']+'/esemnbun-package-definitions.zip'
data=urllib.request.urlopen(url,timeout=90).read()
assert hashlib.sha256(data).hexdigest()==r['definitions_sha256']
root=Path(__file__).resolve().parents[1]
with zipfile.ZipFile(io.BytesIO(data)) as z:
 for name in ['esemnbun-cli.rb','bucket/esemnbun-cli.json']:
  info=z.getinfo(name);assert info.file_size<100000
  path=root/name;path.parent.mkdir(parents=True,exist_ok=True);path.write_bytes(z.read(name))
print('Refreshed eSemnBun',r['version'])
