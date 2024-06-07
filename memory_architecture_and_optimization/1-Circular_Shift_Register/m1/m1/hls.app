<project xmlns="com.autoesl.autopilot.project" name="m1" top="circular_shift_reg">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="in">
        <SimFlow name="csim" setup="true" ldflags="" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../../tb/tb_shift_reg.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../src/shift_reg.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../src/shift_reg.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../src/circular_shift.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

