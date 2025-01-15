# Note-Taking Tool Documentation

/*
# This is a simple command-line note-taking tool written in Bash. It allows users to add, list, and search notes directly from the terminal. All notes are stored in a plain text file with timestamps for easy organization.
*/

## Features
/*
- **Add a Note**: Quickly add a new note with a timestamp.
- **List All Notes**: View all stored notes in chronological order.
- **Search Notes**: Search for notes containing specific keywords, ignoring timestamps in the output.
*/

## Requirements
/*
- A Unix-like operating system with Bash installed.
- Basic terminal knowledge to execute the script.
- `grep` and `sed` utilities (pre-installed on most Unix systems).
*/

## Usage
/*
To use the script, navigate to the directory containing it and execute the commands as follows:
*/

### Adding a Note
/*
To add a note, use the `add` command followed by the note text in quotes:

    ./note.sh add "Your note text here"
*/

Example:
 
$ ./note.sh add "Buy groceries"  
Note added successfully.

### Listing All Notes
/*
To list all notes, use the `list` command:

    ./note.sh list
*/

Example:

$ ./note.sh list  
2025-01-15 14:30:00 - Buy groceries  
2025-01-15 14:45:00 - Schedule dentist appointment  

### Searching Notes
/*
To search for a specific keyword, use the `search` command followed by the keyword:

    ./note.sh search "keyword"
*/

Example:

$ ./note.sh search "dentist"  
Schedule dentist appointment  

### Help
/*
If you use an invalid command or incorrect syntax, the script displays usage instructions:

    Usage: ./note.sh {add "note text"|list|search "keyword"}
*/

## File Management
/*
- Notes are stored in a plain text file named `notes.txt` in the script's directory.
- Each note is saved with a timestamp in the format `YYYY-MM-DD HH:MM:SS`.
*/

## Exit Codes
/*
- `0`: Command executed successfully.
- `1`: Command failed (e.g., empty input, invalid command, or no matching results).
*/

## Example Session
/*
$ ./note.sh add "Learn Bash scripting"  
Note added successfully.

$ ./note.sh list  
2025-01-15 14:00:00 - Learn Bash scripting

$ ./note.sh search "Bash"  
Learn Bash scripting
*/

## Testing
/*
Use the included `Vagrantfile` to spin up a Linux virtual machine for testing. The script is evaluated based on:

- Correct handling of input/output.
- Proper error handling and exit codes.
- Compatibility with special characters in notes.
- Correct timestamp formatting.
*/
