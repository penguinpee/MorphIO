#!/usr/bin/env bash
BASE=$(git rev-parse --show-toplevel)

if [ "$RELEASE" == "true" ]; then
    CHANNEL=dev
else
    CHANNEL=dev
fi

for wheel in `ls $BASE/packaging/python_wheel/wheelhouse/morphio*.whl`; do
    upload2repo -t python -r $CHANNEL -f $wheel
done

git status
ls

# cleanup afterwards
docker run --rm \
    -v $BASE:/io:Z \
    bbpdocker.epfl.ch/morphio_wheel \
    /bin/rm -rf /io/packaging/python_wheel/wheelhouse