#!/bin/bash

set -x
set -u

if [ $# -eq 0 ] ; then
   WORK_DIR="/srv/.raw"
else
   WORK_DIR="${1}"
fi

if [ ! -d "${WORK_DIR}" ] ; then
   echo "working directory does not exist: ${WORK_DIR}"
   exit 0
fi

DWH_RAW_DIR="${WORK_DIR}/raw-dwh"
MP4_RAW_DIR="${WORK_DIR}/raw-mp4"
MOV_RAW_DIR="${WORK_DIR}/raw-mov"

mkdir -p "${DWH_RAW_DIR}"
mkdir -p "${MP4_RAW_DIR}"
mkdir -p "${MOV_RAW_DIR}"

/home/pi/.files/bin/convert-dwh-if-needed \
   "${DWH_RAW_DIR}" \
   "${MOV_RAW_DIR}"

/home/pi/.files/bin/convert-mp4-if-needed \
   "${MP4_RAW_DIR}" \
   "${MOV_RAW_DIR}"

