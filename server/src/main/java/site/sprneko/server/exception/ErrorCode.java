package site.sprneko.server.exception;

import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
public enum ErrorCode {
    EMPTY_WORD(
            "W001",
            "输入单词不能为空",
            HttpStatus.BAD_REQUEST
    ),
    INVALID_CHARACTER(
            "W002",
            "输入单词不能包含非字母字符",
            HttpStatus.BAD_REQUEST
    ),
    SPACE_TOO_LONG(
            "W003",
            "输入单词不能包含多个连续空格",
            HttpStatus.BAD_REQUEST),
    WORD_SYMBOL(
            "W004",
            "输入单词不能包含多个连续特殊字符",
            HttpStatus.BAD_REQUEST
    ),
    WORD_TOO_LONG(
            "W005",
            "输入单词不能超过100个字符",
            HttpStatus.BAD_REQUEST
    )
    ;

    ErrorCode(String code, String message, HttpStatus status) {
        this.code = code;
        this.message = message;
        this.status = status;
    }

    private final String code;
    private final String message;
    private final HttpStatus status;

}
