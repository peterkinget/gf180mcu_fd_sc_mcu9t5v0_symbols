# run with python do_text_replacements.py
 
import pathlib

# List of replacements: (old_text, new_text)
# first set on all cells
# replacements = [
#     ("prefix=sky130_fd_sc_hd__", "prefix=gf180mcu_fd_sc_mcu9t5v0__"),
#     ("verilogprefix=sky130_fd_sc_hd__", "verilogprefix=gf180mcu_fd_sc_mcu9t5v0__"),
#     ("VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR", "VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd"),
#     ( "@VGND @VNB @VPB @VPWR", "@VPWR @VNB @VPB @VGND")
# ]
# second set on inv
replacements = [("@@A @VPWR @VNB @VPB @VGND @@Y", "@@A @@Y @VPWR @VNB @VPB @VGND" )]

# Process all .sym files in current dir and subdirectories
sym_files = pathlib.Path('.').glob('inv*.sym')

for file in sym_files:
    text = file.read_text()
    new_text = text
    for old, new in replacements:
        new_text = new_text.replace(old, new)

    if new_text != text:
        file.write_text(new_text)
        print(f"Updated: {file}")