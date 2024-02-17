package karatteAPICalls;


import org.junit.runner.RunWith;

import com.intuit.karate.core.KarateParser;
import com.intuit.karate.junit5.Karate;


public class TestRunner {
	
	@Karate.Test
    Karate testSample() {
        return Karate.run("sample").relativeTo(getClass());
    }

}
