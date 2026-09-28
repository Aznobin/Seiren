package site.sprneko.server.validator;

import lombok.extern.slf4j.Slf4j;
import site.sprneko.server.exception.BusinessException;
import site.sprneko.server.exception.ErrorCode;

import java.util.Set;

@Slf4j
public class WordValidator {

    // 输入单词不能为空
    public static void checkEmpty(String originalWord) {
        if (originalWord == null || originalWord.trim().isEmpty()) {
            log.warn("input word is empty: {}", originalWord);
            throw new BusinessException(ErrorCode.EMPTY_WORD);
        }
    }

    // 定义允许的符号
    private static final Set<Character> ALLOWED_SYMBOLS =
            Set.of(' ','\'', '-', '_', 'é', 'à', 'è', 'ì', 'ò', 'ù', '~', '(', ')');

    // 输入单词不能包含非字母字符
    public static void checkCharacter(String originalWord) {
        for (char c : originalWord.toCharArray()) {
            if (!(c >= 'a' && c <= 'z') && !(c >= 'A' && c <= 'Z') && !ALLOWED_SYMBOLS.contains(c)) {
                log.warn("input word contains non-letter characters: {}", originalWord);
                throw new BusinessException(ErrorCode.INVALID_CHARACTER);
            }
        }
    }

    // 输入单词不能包含多个连续符号
    public static void checkConsecutiveSymbols(String originalWord) {
        int count = 0;
        for (char c : originalWord.toCharArray()) {
            if (ALLOWED_SYMBOLS.contains(c) && c != ' ') {
                count++;
                if (count > 2) {
                    log.warn("input word contains more than two consecutive symbols: {}", originalWord);
                    throw new BusinessException(ErrorCode.WORD_SYMBOL);
                }
            } else {
                count = 0;
            }
        }
    }

    // 输入单词不能包含多个空格
    public static void checkSpace(String originalWord) {
        int spaceCount = 0;
        for (char c : originalWord.toCharArray()) {
            if (c == ' ') {
                spaceCount++;
                if (spaceCount > 2) {
                    log.warn("input word contains more than two spaces: {}", originalWord);
                    throw new BusinessException(ErrorCode.SPACE_TOO_LONG);
                }
            } else {
                spaceCount = 0;
            }
        }
    }

    public static void checkLength(String originalWord) {
        if (originalWord.length() > 100) {
            log.warn("input word length is greater than 100: {}", originalWord);
            throw new BusinessException(ErrorCode.WORD_TOO_LONG);
        }
    }

}
