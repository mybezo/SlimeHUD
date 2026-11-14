#!/usr/bin/env bash
# Installs the official Slimefun (SlimefunGuguProject) release jar into the local
# Maven repository, because JitPack cannot build the latest Slimefun releases.
# Usage: .github/scripts/install-slimefun.sh [version]   (default: version from pom.xml)
set -euo pipefail
cd "$(dirname "$0")/../.."
VERSION="${1:-$(sed -n 's:.*<slimefun.version>\(.*\)</slimefun.version>.*:\1:p' pom.xml)}"
JAR="$(mktemp -d)/Slimefun-${VERSION}.jar"
curl -fsSL -o "$JAR" "https://github.com/SlimefunGuguProject/Slimefun4/releases/download/${VERSION}/Slimefun-${VERSION}.jar"
mvn -q install:install-file -Dfile="$JAR" -DgroupId=com.github.SlimefunGuguProject \
  -DartifactId=Slimefun4 -Dversion="$VERSION" -Dpackaging=jar -DgeneratePom=true
echo "Installed Slimefun $VERSION"
