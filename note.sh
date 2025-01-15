#!/bin/bash

# Defines the file to store notes
NOTES_FILE="notes.txt"

# Ensure the notes file exists
touch "$NOTES_FILE"

# Function to add a new note
add_note() {
    local note_text="$1"
    if [[ -z "$note_text" ]]; then
        echo "Error: Note text cannot be empty." >&2
        exit 1
    fi
    local timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    echo "$timestamp - $note_text" >> "$NOTES_FILE"
    echo "Note added successfully."
    exit 0
}

# Function to list all notes
list_notes() {
    if [[ ! -s "$NOTES_FILE" ]]; then
        echo "No notes found."
        exit 0
    fi
    cat "$NOTES_FILE"
    exit 0
}

# Function to search notes
search_notes() {
    local keyword="$1"
    if [[ -z "$keyword" ]]; then
        echo "Error: Search keyword cannot be empty." >&2
        exit 1
    fi
    grep -i "$keyword" "$NOTES_FILE" | sed 's/^.* - //' || {
        echo "No matching notes found." >&2
        exit 1
    }
    exit 0
}

# Main script logic
case "$1" in
    add)
        shift
        add_note "$*"
        ;;
    list)
        list_notes
        ;;
    search)
        shift
        search_notes "$*"
        ;;
    *)
        echo "Usage: $0 {add \"note text\"|list|search \"keyword\"}" >&2
        exit 1
        ;;
esac
