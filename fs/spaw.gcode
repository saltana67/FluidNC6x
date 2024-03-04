(power on relay board)
(M64: turn on digital output immediately)
(P0: config.yaml:user_outputs: digital0_pin: gpio.12:high:pd)
M64 P0
(start spindle speed 1, any speed >0 will do, config.yaml:relay:)
M3 S1
(incremental mode for movements)
G91
(start zigzag: 2mm left to right X, 1mm in negative Y)
(first step: 1mm to side and 1mm forward)
G1 F3 X1 Y-1
(14mm zigzag)
G1 F3 X-2 Y-1
G1 F3 X2 Y-1
G1 F3 X-2 Y-1
G1 F3 X2 Y-1
G1 F3 X-2 Y-1
G1 F3 X2 Y-1
G1 F3 X-2 Y-1
G1 F3 X2 Y-1
G1 F3 X-2 Y-1
G1 F3 X2 Y-1
G1 F3 X-2 Y-1
G1 F3 X2 Y-1
G1 F3 X-2 Y-1
G1 F3 X2 Y-1
(last 1mm to centerline)
G1 F3 X-1 Y-1
(back to global positioning)
G90
(spindel off)
M5
(power off relay board)
M65 P0
