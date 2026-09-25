package site.sprneko.server.controller;

import org.springframework.web.bind.annotation.*;
import site.sprneko.server.dto.WordRequest;
import site.sprneko.server.entity.Word;
import site.sprneko.server.service.WordService;

@CrossOrigin
@RestController
@RequestMapping("/api")

public class WordController {

    private final WordService wordService;
    public WordController(WordService wordService) {
        this.wordService = wordService;
    }

    @PostMapping("/word")
    public Word recordWord(@RequestBody WordRequest request) {
        return wordService.recordWord(request.getWord());
    }

}


