.model small
.stack
.data

OPA dw -459
OPB dw 470
OPC dw 32756
OPD dw 1

.code
.startup

add ax, OPA
add ax, OPB
add ax, OPC
add ax, OPD

.exit
end

si è generato overflow. Prevedibile...