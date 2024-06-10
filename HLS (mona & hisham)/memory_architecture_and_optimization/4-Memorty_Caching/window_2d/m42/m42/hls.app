<project xmlns="com.autoesl.autopilot.project" name="m42" top="avg">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" setup="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../../tb/test_window_2d.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../src/window_2d_poor_arch.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../src/window_2d.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../src/window_2d.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../src/singleport_ram.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

