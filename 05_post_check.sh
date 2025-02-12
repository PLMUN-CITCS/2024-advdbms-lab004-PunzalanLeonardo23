
# Expected table structure (adjust as needed)
EXPECTED_STRUCTURE=$(cat# Get the actual table structure
actual_structure=$(mysql -h 127.0.0.1 -P 4000 -u root UniversityDB -e "DESCRIBE>

# Format the expected structure for comparison (remove extra whitespace)
expected_formatted=$(echo "$EXPECTED_STRUCTURE" | sed 's/^[ \t]*//; s/[ \t]*$//>

# Format the actual structure for comparison (remove extra whitespace)
actual_formatted=$(echo "$actual_structure" | sed 's/^[ \t]*//; s/[ \t]*$//; s/>


# Compare the structures
if [[ "$expected_formatted" == "$actual_formatted" ]]; then
  echo "Table structure is correct."
else
  echo "Table structure is INCORRECT."
  echo "Expected:"
  echo "$expected_formatted"

