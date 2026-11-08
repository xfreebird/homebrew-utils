#!/usr/bin/env python3
"""Refresh only eSemnBun definitions from the verified upstream release bundle."""
import hashlib,io,json,urllib.request,zipfile
from pathlib import Path
r=json.load(urllib.request.urlopen('https://api.github.com/repos/xfreebird/smartcard/releases/latest',timeout=30))
if r['draft'] or r['prerelease']:raise SystemExit('Stable release required')
name='esemnbun-package-definitions.zip'
a=next((a for a in r['assets'] if a['name']==name),None)
if a is None:print('Definitions are not published yet; retaining current packages.');raise SystemExit(0)
url=f'https://github.com/xfreebird/smartcard/releases/download/{r["tag_name"]}/{name}'
assert a['browser_download_url']==url
data=urllib.request.urlopen(url,timeout=90).read()
assert a.get('digest')=='sha256:'+hashlib.sha256(data).hexdigest()
root=Path(__file__).resolve().parents[1]
with zipfile.ZipFile(io.BytesIO(data)) as z:
 for name in ['esemnbun-cli.rb','bucket/esemnbun-cli.json']:
  info=z.getinfo(name);assert info.file_size<100000
  path=root/name;path.parent.mkdir(parents=True,exist_ok=True);path.write_bytes(z.read(name))
print('Refreshed eSemnBun',r['tag_name'])
