package Notebook.Controllers;

public class NotebookNotFoundException extends RuntimeException {
    NotebookNotFoundException(Integer id) {
        super("Could not find notebook " + id);
    }
}
