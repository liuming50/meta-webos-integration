INHIBIT_PACKAGE_STRIP = "1"
INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
INSANE_SKIP_${PN} += "already-stripped"

do_install_append () {
    find ${D} -name "fibers.node" -exec rm -f {} \;
}
