package app.classes;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class CheckDirJar {
//    private boolean checkDir(){
//        File file = new File("src/app/jarFiles");
//        Path p = Paths.get(String.valueOf(file));
//        if(Files.exists(p)){
//            return true;
//        }else{
//            return false;
//        }
//    }

    private boolean checkJar(){
        File file = new File("../../web/WEB-INF/lib/test.jar");
        Path p = Paths.get(String.valueOf(file));
        if(Files.exists(p)){
            return true;
        }else {
            return false;
        }
    }

    public String checkExistingFile(){
//        boolean b = checkDir();
//        if(!b){
//            return "Directories \"jarFiles\" not existing ";
//        }
//        boolean b = checkJar();
//        if(!b){
//            return "Jar file \"test.jar\" not existing";
//        }
        WorkJar workJar = new WorkJar();
        String s = workJar.printJar();
        return s;
    }
}
