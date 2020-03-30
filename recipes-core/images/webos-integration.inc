webos_integration() {
    if [ -e "${WEBOS_INTEGRATION_PREBUILT_DIR}" ]; then
        cp -rf ${WEBOS_INTEGRATION_PREBUILT_DIR}/* ${IMAGE_ROOTFS}/
    fi
}

ROOTFS_POSTPROCESS_COMMAND += "webos_integration; "
