#!/bin/bash

#
# Copyright (c) 1989-2016 Private Technologies, Ltd.
# All rights reserved.
#
# author: ZhongWen Li (mailto:lizhongwen1989@gmail.com)
#

if [ -z "${ARCHIVA_HOME}" ]; then
    echo "[`date`] [ERROR] ARCHIVA_HOME environment variable not found."
    exit 1
fi
if [ ! -d "${ARCHIVA_HOME}" ]; then
    echo "[`date`] [ERROR] ARCHIVA_HOME=${ARCHIVA_HOME} not exists."
    exit 1
fi

if [ ! -x ${ARCHIVA_HOME}/bin/archiva ]; then
    chmod +x ${ARCHIVA_HOME}/bin/archiva
fi

#
# Modify jvm memory
#
if [ -n "${MAX_HEAP}" ] && [ "512" != "${MAX_HEAP}" ]; then
	sed -i -e "s/maxmemory=512/maxmemory=${MAX_HEAP}/g" ${ARCHIVA_HOME}/conf/wrapper.conf
fi
if [ -n "${MIN_HEAP}" ] && [ "512" != "${MIN_HEAP}" ]; then
	sed -i -e "s/initmemory=512/initmemory=${MIN_HEAP}/g" ${ARCHIVA_HOME}/conf/wrapper.conf
fi

#
# run in console mode
#
${ARCHIVA_HOME}/bin/archiva console
