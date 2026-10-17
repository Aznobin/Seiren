package site.sprneko.server.dto.deepseek;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
public class DeepSeekRequest {
    private String model;
    private boolean think;
    private List<Message> messages;

    @Data
    @AllArgsConstructor
    public static class Message {
        private String role;
        private String content;
    }

}