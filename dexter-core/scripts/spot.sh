
#!/usr/bin/env bash

EXPECTED_ARGS=1
E_BADARGS=65

source scripts/config.sh

LOG=DEBUG

if [ $# -ne $EXPECTED_ARGS ];
then
  echo "Usage: `basename $0` spot-file"
  exit $E_BADARGS
fi

$JAVA it.cnr.isti.hpc.dexter.cli.spot.SpotCLI -input $1

