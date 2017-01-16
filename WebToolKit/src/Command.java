import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Command {
	
	public static void main(String[] args) throws IOException, Exception {
		// TODO Auto-generated method stub
		String cmd = "dig www.google.com"; 
		Runtime run = Runtime.getRuntime(); 
		Process pr = run.exec(cmd); 
		pr.waitFor();
		BufferedReader buf = new BufferedReader(new InputStreamReader(pr.getInputStream())); 
		String line = ""; 
		
		while ((line=buf.readLine())!=null) { 
			System.out.println(line); 
			}
	}

}