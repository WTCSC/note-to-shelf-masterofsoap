# Note-Taking Tool

This is a simple command-line note-taking tool written in Bash. It allows users to add, list, and search notes directly from the terminal. All notes are stored in a plain text file with timestamps for easy organization.

## Features
- **Add a Note**: Quickly add a new note with a timestamp.
- **List All Notes**: View all stored notes in chronological order.
- **Search Notes**: Search for notes containing specific keywords, ignoring timestamps in the output.

## Requirements
- A Unix-like operating system with Bash installed.
- Basic terminal knowledge to execute the script.
- `grep` and `sed` utilities (pre-installed on most Unix systems).

## Usage
To use the script, navigate to the directory containing it and execute the commands as follows:

### Adding a Note
To add a note, use the `add` command followed by the note text in quotes:
```bash
./note.sh add "Your note text here"
Example:

bash
Copy code
$ ./note.sh add "Buy groceries"
Note added successfully.
Listing All Notes
To list all notes, use the list command:

bash
Copy code
./note.sh list
Example:

bash
Copy code
$ ./note.sh list
2025-01-15 14:30:00 - Buy groceries
2025-01-15 14:45:00 - Schedule dentist appointment
Searching Notes
To search for a specific keyword, use the search command followed by the keyword:

bash
Copy code
./note.sh search "keyword"
Example:

bash
Copy code
$ ./note.sh search "dentist"
Schedule dentist appointment
Help
If you use an invalid command or incorrect syntax, the script displays usage instructions:

bash
Copy code
Usage: ./note.sh {add "note text"|list|search "keyword"}
