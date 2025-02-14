from hyperon import MeTTa
import os

# Initialize MeTTa interpreter
metta = MeTTa()

# Directory containing MeTTa files
operations_dir = "list_operations"

# Load and run all .metta files in the directory
for filename in os.listdir(operations_dir):
    if filename.endswith(".metta"):
        filepath = os.path.join(operations_dir, filename)
        with open(filepath, "r") as file:
            code = file.read()
            print(f"Running {filename}...")
            result = metta.run(code)
            print(f"Result: {result}\n")
