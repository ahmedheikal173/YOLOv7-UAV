<project xmlns="com.autoesl.autopilot.project" top="BRAM_filter" name="m5">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" setup="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../../tb/tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../src/tomatrix.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../src/tomatrix.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../src/RAM.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../src/BRAM_img.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../src/BRAM_img.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../src/BRAM_flt.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../src/BRAM_flt.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

