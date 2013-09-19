#!/bin/sh

DIR=`pwd`

mkdir -p sublibs/public-transport-enabler/enabler/src/de/schildbach/pte/live

cat <<EOF > sublibs/public-transport-enabler/enabler/src/de/schildbach/pte/live/Secrets.java
package de.schildbach.pte.live;

/**
 * @author Andreas Schildbach
 */
public final class Secrets
{
        public static final String SBB_ACCESS_ID = "I have no secret :(";
        public static final String VGN_API_BASE = "I didn't get an API base :(";
}
EOF

cd sublibs/public-transport-enabler/enabler/

mvn clean package -DskipTests

cd $DIR

cp sublibs/public-transport-enabler/enabler/target/public-transport-enabler*.jar libs/public-transport-enabler.jar