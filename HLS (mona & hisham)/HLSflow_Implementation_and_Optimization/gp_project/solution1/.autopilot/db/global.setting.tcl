
set TopModule "conv_test"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 1
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xczu7ev:-ffvc1156:-1lv-i
set SourceFiles {sc {} c {../reluCBS3.cpp ../reluCBS2.cpp ../relu.cpp ../maxpooling.cpp ../conv_test.cpp ../conv_ref.cpp ../convMP1.cpp ../convCBS3.cpp ../convCBS2.cpp ../conv1_test.cpp ../catELAN1.cpp ../MaxPoolingMP1.cpp ../MP1.cpp ../LRNCBS3.cpp ../LRNCBS2.cpp ../LRN.cpp ../ELAN1.cpp ../CBSInput_ELAN1.cpp ../CBSELAN1.cpp ../CBS3.cpp ../CBS2.cpp ../CBS1.cpp}}
set SourceFlags {sc {} c {{} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {}}}
set DirectiveFile C:/Users/DELL/AppData/Roaming/Xilinx/Vivado/gp_project/solution1/solution1.directive
set TBFiles {verilog ../CBS1_tb.cpp bc ../CBS1_tb.cpp vhdl ../CBS1_tb.cpp sc ../CBS1_tb.cpp cas ../CBS1_tb.cpp c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../vivado_hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynquplus/zynquplus xilinx/zynquplus/zynquplus_fpv7}}}
set HPFPO 0
