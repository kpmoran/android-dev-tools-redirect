#!/bin/bash
# Regenerates the redirect stubs from the map below. Run after editing the map.
set -e
cd "$(dirname "$0")"
NEW=https://kpmoran.com

stub() { # stub <output file> <target url>
  mkdir -p "$(dirname "$1")"
  cat > "$1" <<HTML
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>This page has moved</title>
<link rel="canonical" href="$2">
<meta http-equiv="refresh" content="0; url=$2">
<meta name="robots" content="noindex">
<script>location.replace("$2" + location.hash);</script>
</head>
<body>
<p>This page has moved to <a href="$2">$2</a>.</p>
</body>
</html>
HTML
}

stub index.html                               "$NEW/publications/"
stub home/index.html                          "$NEW/publications/"
stub fusion-home/index.html                   "$NEW/projects/fusion/"
stub crashscope-home/index.html               "$NEW/projects/crashscope/"
stub odbr/index.html                          "$NEW/projects/odbr/"
stub redraw/index.html                        "$NEW/projects/redraw/"
stub gvt/index.html                           "$NEW/projects/gvt/"
stub mdroid/index.html                        "$NEW/projects/mdroid/"
stub gcat/index.html                          "$NEW/projects/gcat/"
stub request-access-to-the-gvt-tool/index.html "$NEW/projects/gvt/#access"
