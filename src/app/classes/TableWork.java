package app.classes;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import static java.nio.charset.StandardCharsets.UTF_8;

public class TableWork {

    public List<String> readFile() {
        File file = new File("F:\\scv\\table_fo_Java.csv");
        Path p = Paths.get(String.valueOf(file));
        if(Files.exists(p)){
            try{
                List<String> list = Files.readAllLines(Paths.get(String.valueOf(file)), UTF_8);
                return list;
            }catch(IOException e){
                System.out.println(e);
            }

        }
        return null;
    }

}
