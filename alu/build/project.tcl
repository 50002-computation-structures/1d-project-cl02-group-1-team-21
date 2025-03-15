set projDir "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/vivado"
set projName "alu"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir"]} { file delete -force "$projDir" }
create_project $projName "$projDir" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/source/alchitry_top.sv" "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/source/reset_conditioner.sv" "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/source/rca.sv" "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/source/fa.sv" "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/source/bit_reverse.sv" "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/source/boolean.sv" "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/source/compare.sv" "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/source/shifter.sv" "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/source/multiplier.sv" "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/source/alu.sv" "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/source/adder.sv" "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/source/alu_manual_tester.sv" "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/source/mux_4.sv" "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/source/mux_2.sv" "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/source/x_bit_left_shifter.sv" "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/source/blinker.sv" "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/source/lucid_globals.sv" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/constraint/alchitry.xdc" "/media/share/alchitry-utm/1d-project-cl02-group-1-team-21/alu/build/constraint/au_props.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 4
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
