INHIBIT_PACKAGE_STRIP = "1"
INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
INSANE_SKIP_${PN} += "already-stripped file-rdeps"

do_install_append () {
    find ${D} -name "fibers.node" -exec rm -f {} \;
    find ${D} -name "binding.node" -exec rm -f {} \;
    rm -f ${D}${libdir}/node_modules/node-red/node_modules/chromedriver/lib/chromedriver/chromedriver
}
