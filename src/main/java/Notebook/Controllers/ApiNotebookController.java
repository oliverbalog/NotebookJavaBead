package Notebook.Controllers;

import Notebook.Models.Gep;
import Notebook.Repositories.GepRepository;
import com.sun.xml.bind.v2.model.core.ID;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@RestController
public class ApiNotebookController {

    private final GepRepository repository;

    ApiNotebookController(GepRepository gepRepository) {
        this.repository = gepRepository;
    }

    // Aggregate root
    // tag::get-aggregate-root[]
    @GetMapping(path="/api/notebooks", produces = "application/json")
    public Iterable<Gep> index() {
        return repository.findAll();
    }

    @PostMapping(path="/api/notebooks", produces = "application/json")
    public Gep store(@RequestBody Gep notebook) {
        return repository.save(notebook);
    }

    @GetMapping(path= "/api/notebooks/{id}", produces = "application/json")
    public Gep show(@PathVariable Integer id) {
        System.out.println(id);
        return repository.findById(id)
                .orElseThrow(() -> new NotebookNotFoundException(id));
    }

    @PutMapping(path="/api/notebooks/{id}", produces = "application/json")
    public Gep update(@RequestBody Gep notebook, @PathVariable Integer id) {
        return repository.findById(id)
                .map(n -> {
                    n.setGyarto(notebook.getGyarto());
                    n.setTipus(notebook.getTipus());
                    n.setKijelzo(notebook.getKijelzo());
                    n.setMemoria(notebook.getMemoria());
                    n.setMerevlemez(notebook.getMerevlemez());
                    n.setVideovezerlo(notebook.getVideovezerlo());
                    n.setAr(notebook.getAr());
                    n.setDb(notebook.getDb());
                    return repository.save(n);
                })
                .orElseGet(() -> {
                    notebook.setId(id);
                    return repository.save(notebook);
                });
    }

    @DeleteMapping(path="/api/notebooks/{id}", produces = "application/json")
    public void delete(@PathVariable Integer id) {
        repository.deleteById(id);
    }

}
