import Text "mo:base/Text";
import List "mo:base/List";
import Debug "mo:base/Debug";

actor dkeeper {
  
  // User-defined datatype
  public type Note = {
    title: Text;
    content: Text;
  };

  // An array of Note objects
  var notes: List.List<Note> = List.nil<Note>();

  // Add new note to the backend
  public func createNote(titleText: Text, contentText: Text) {

    // Create a new note
    let newNote: Note = {
      title = titleText;
      content = contentText;
    };
    // Add the note to the list of notes (push returns a list, not modify the original list)
    notes := List.push(newNote, notes);
    
    Debug.print(debug_show(notes));

  }

};
