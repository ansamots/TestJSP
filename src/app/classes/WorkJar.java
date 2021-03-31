package app.classes;

import app.origin.Test;

public class WorkJar {
    public String printJar(){
        Test test = new Test();
        String s = test.getMessage();
        return s;
    }
}
