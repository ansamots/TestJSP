package app.classes;

public class TestingPath {
    public static void main(String[] args){
        CheckDirJar checkDirJar = new CheckDirJar();
        String b = checkDirJar.checkExistingFile();
        System.out.println(b);
    }
}
