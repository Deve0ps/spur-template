
#!/bin/bash

echo "Building Spur"
. build.sh

echo "Pushing to test"

rsync -a --delete dist/ wildmind@wildmind.ch:~/public_html/hackerthemes/test.hackerthemes.com/spur/demo
rsync -a package/ wildmind@wildmind.ch:~/public_html/hackerthemes/test.hackerthemes.com/spur/package
