package site.sprneko.server.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;
import site.sprneko.server.dto.word.WordRequest;
import site.sprneko.server.dto.word.WordResponse;
import site.sprneko.server.service.InputService;
import site.sprneko.server.validator.WordValidator;

@Slf4j
@CrossOrigin
@RestController
@RequestMapping("/api")

public class WordController {

    private final InputService inputService;

    public WordController(InputService inputService) {
        this.inputService = inputService;
    }

    @PostMapping("/word")
    public WordResponse recordWord(@RequestBody WordRequest request) {


        WordValidator.checkEmpty(request.getWord());

        String originalWord = request.getWord();
        originalWord = originalWord.trim();  // trim(): 去除字符串两端的空格

        WordValidator.checkSpace(originalWord);
        WordValidator.checkCharacter(originalWord);
        WordValidator.checkConsecutiveSymbols(originalWord);
        WordValidator.checkLength(originalWord);

        log.info("Recording originalWord: {}", originalWord);
        return inputService.recordWord(originalWord);
    }

}


