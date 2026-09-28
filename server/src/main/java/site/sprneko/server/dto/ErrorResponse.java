package site.sprneko.server.dto;

import lombok.Getter;

@Getter
public class ErrorResponse {
    private String code;
    private String message;

    public ErrorResponse(){

    }

    public ErrorResponse(String code, String message) {
        this.code = code;
        this.message = message;
    }
}
