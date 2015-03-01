# ----------------------------------------------------------------------------
#       _____
#      *     *
#     *____   *____
#    * *===*   *==*
#   *___*===*___**  AVNET
#        *======*
#         *====*
# ----------------------------------------------------------------------------
# 
#  This design is the property of Avnet.  Publication of this
#  design is not authorized without written consent from Avnet.
# 
#  Please direct any questions or issues to the MicroZed Community Forums:
#      http://www.microzed.org
# 
#  Disclaimer:
#     Avnet, Inc. makes no warranty for the use of this code or design.
#     This code is provided  "As Is". Avnet, Inc assumes no responsibility for
#     any errors, which may appear in this code, nor does it make a commitment
#     to update the information contained herein. Avnet, Inc specifically
#     disclaims any implied warranties of fitness for a particular purpose.
#                      Copyright(c) 2014 Avnet, Inc.
#                              All rights reserved.
# 
# ----------------------------------------------------------------------------
# 
#  Create Date:         February 27, 2015
#  Design Name:         
#  Module Name:         
#  Project Name:        
#  Target Devices:      
#  Hardware Boards:     MicroZed Embedded Vision Kit
# 
#  Tool versions:       
# 
#  Description:         Build Script for HDMI Passthrough design
# 
#  Dependencies:        make.tcl
# 
# ----------------------------------------------------------------------------

set argv [list board=MZ7010_EMBV project=embv_hdmi_passthrough no_close_project=no]
set argc [llength $argv]
source ./make.tcl -notrace

cd ${projects_folder}
exec >@stdout 2>@stderr xsdk -batch -source ../software/embv_hdmi_passthrough_sdk.tcl
exec >@stdout 2>@stderr bootgen -image ../software/embv_hdmi_passthrough_sd.bif -w -o BOOT.bin
cd ${scripts_folder}

set argv [list board=MZ7020_EMBV project=embv_hdmi_passthrough no_close_project=no]
set argc [llength $argv]
source ./make.tcl -notrace

cd ${projects_folder}
exec >@stdout 2>@stderr xsdk -batch -source ../software/embv_hdmi_passthrough_sdk.tcl
exec >@stdout 2>@stderr bootgen -image ../software/embv_hdmi_passthrough_sd.bif -w -o BOOT.bin
cd ${scripts_folder}

