#!/usr/bin/env python3

import os
import shutil
import subprocess

# Paths
SRC_NETLIST = "/home/ecegridfs/a/559mg81/netlist"
DST_DIR     = "/home/ecegridfs/a/559mg81/wallace/nanotimewallace"
DST_NETLIST = os.path.join(DST_DIR, "1123netlist.sp")
NANOTIME_SCRIPT = "1123nano.scr"

def clean_netlist(lines):
    cleaned = []
    skip = False

    for line in lines:
        # 1. Start deleting at *.BIPOLAR
        if line.strip().startswith("*.BIPOLAR"):
            skip = True
            continue # Remove the *.BIPOLAR line itself

        # 2. While in skip mode...
        if skip:
            # Check if we hit the end marker (*.PIN)
            if line.strip().startswith("*.PIN"):
                skip = False
                cleaned.append(line) # <--- CRITICAL FIX: Keep the *.PIN line
            # If not *.PIN, continue skipping (delete intermediate lines)
            continue

        # 3. Normal mode: keep the line
        cleaned.append(line)

    # Perform replacements
    text = "".join(cleaned)
    text = text.replace("g45n1svt", "NMOS_VTL")
    text = text.replace("g45p1svt", "PMOS_VTL")
    return text

# Read original netlist
with open(SRC_NETLIST, "r") as f:
    raw_lines = f.readlines()

# Process content
updated_text = clean_netlist(raw_lines)

# Ensure output folder exists
os.makedirs(DST_DIR, exist_ok=True)

# Save new netlist
with open(DST_NETLIST, "w") as f:
    f.write(updated_text)

print("Netlist cleaned and saved to:", DST_NETLIST)

# ---------------------------------------------------------
# Run Nanotime
# ---------------------------------------------------------
print(f"Running Nanotime in {DST_DIR}...")

try:
    subprocess.run(
        ["nt_shell", "-f", NANOTIME_SCRIPT], 
        cwd=DST_DIR, 
        check=True
    )
    print("Nanotime simulation finished successfully.")

except FileNotFoundError:
    print("Error: 'nt_shell' command not found. Are the Cadence tools loaded?")
except subprocess.CalledProcessError:
    print("Error: Nanotime script encountered an error during execution.")
