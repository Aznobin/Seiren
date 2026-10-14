package site.sprneko.server;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import site.sprneko.server.client.DeepSeekClient;

@SpringBootTest
public class DeepSeekClientTest {
    @Autowired
    private DeepSeekClient deepSeekClient;
    @Test
    public void test() {
        deepSeekClient.test();
    }
}
