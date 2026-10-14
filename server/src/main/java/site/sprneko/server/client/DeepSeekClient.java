package site.sprneko.server.client;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestClient;
import site.sprneko.server.config.DeepSeekProperties;
import site.sprneko.server.dto.deepseek.DeepSeekRequest;

import java.util.List;

@Component
public class DeepSeekClient {
    private final RestClient restClient = RestClient.create();

    private final DeepSeekProperties deepSeekProperties;
    public DeepSeekClient(DeepSeekProperties properties) {
        this.deepSeekProperties = properties;
    }

   public void test() {
       DeepSeekRequest request = new DeepSeekRequest();

       request.setModel("deepseek-flash");

       DeepSeekRequest.Message message = new DeepSeekRequest.Message();
       message.setRole("user");
       message.setContent("翻译 apple");

       request.setMessages(List.of(message));
       System.out.println(request);
       String resp = restClient.post()
               .uri("https://api.deepseek.com/chat/completions")
               .header("Authorization", "Bearer " + deepSeekProperties.getApiKey())
               .header("Content-Type", "application/json")
               .body(request)
               .retrieve()
               .body(String.class);
       System.out.println(resp);
   }

}
