#!/bin/bash
function classpath { 
    JAVA_PATH_SEP=${JAVA_PATH_SEP:=";"};
    for i in "$@";
    do
        export CLASSPATH="${CLASSPATH}${JAVA_PATH_SEP}$(cygpath -m "$i")";
    done
}

export CLASSPATH=
classpath classes jackson/lib/*.jar
echo $CLASSPATH

java com.ca.commons.security.cert.CertViewer "$@"
