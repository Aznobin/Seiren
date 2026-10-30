package site.sprneko.server.dto.deepseek;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class DeepSeekRequest {
    private String model;
    private boolean think;
    private List<Message> messages;

    @Getter
    @Setter
    @AllArgsConstructor
    public static class Message {
        private String role;
        private String content;
    }

}