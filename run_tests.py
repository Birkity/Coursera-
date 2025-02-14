from hyperon import MeTTa
import os

# Initialize MeTTa interpreter
metta = MeTTa()

# Load all list operations from the list_operations directory
operations_dir = "list_operations"
for filename in os.listdir(operations_dir):
    if filename.endswith(".metta"):
        with open(os.path.join(operations_dir, filename), "r") as file:
            code = file.read()
            print(f"Loading {filename}...")  # Debugging output
            metta.run(code)  # Ensure execution

# Load and run the test file
with open("test_only.metta", "r") as file:
    test_code = file.read()

# Ensure test cases execute and print results
print("\nRunning Tests...\n")
for line in test_code.split("\n"):
    if line.strip() and not line.startswith(";;"):  # Ignore comments
        result = metta.run(f"!{line.strip()}")
        print(f"{line.strip()} => {result}")

