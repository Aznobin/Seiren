package site.sprneko.server.client;


import org.apache.logging.log4j.message.Message;
import site.sprneko.server.dto.deepseek.DeepSeekRequest;

import java.util.List;

public class DeepSeekClient {
   public void test() {
       DeepSeekRequest request = new DeepSeekRequest();

       request.setModel("deepseek-v4.1-flash");

       DeepSeekRequest.Message message = new DeepSeekRequest.Message();
       message.setRole("user");
       message.setContent("翻译 apple");

       request.setMessages(List.of(message));
   }

}
