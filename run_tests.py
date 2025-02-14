from hyperon import MeTTa
import os

# Initialize MeTTa interpreter
metta = MeTTa()

operations_dir = "list_operations"
for filename in os.listdir(operations_dir):
    if filename.endswith(".metta"):
        with open(os.path.join(operations_dir, filename), "r") as file:
            metta.run(file.read())

# Load and run the test file
with open("test_only.metta", "r") as file:
    test_code = file.read()
    results = metta.run(test_code)


print("Test Results:")
for result in results:
    print(result)
