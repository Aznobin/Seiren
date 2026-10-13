package site.sprneko.server.dto.deepseek;

import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Value;

import java.util.List;

@Setter
@Getter
public class DeepSeekRequest {
    private String model;
    private List<Message> messages;

    @Setter
    @Getter
    public static class Message {
        private String role;
        private String content;

        public Message() {
        }

        public Message(String role, String content) {
            this.role = role;
            this.content = content;
        }

        public String toString() {
            return "Message{role = " + role + ", content = " + content + "}";
        }
    }

    public DeepSeekRequest() {
    }

    public DeepSeekRequest(String model, List<Message> messages) {
        this.model = model;
        this.messages = messages;
    }

    public String toString() {
        return "DeepSeekRequest{model = " + model + ", messages = " + messages + "}";
    }

}