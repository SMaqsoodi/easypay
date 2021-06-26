package capstoneproject.easypay;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class EasypayApplication {

	@RequestMapping("/")
	public String home() {
		    return "Hello Simplilearn! Thanks for the great DevOps course! this is just for the Capstone Project ";
		      }
	
	public static void main(String[] args) {
		SpringApplication.run(EasypayApplication.class, args);
	}

}
