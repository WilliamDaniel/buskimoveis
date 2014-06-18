package ldsutils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class TXTPersist {

    public static void saveToFile(List<String> linhas, String filePath) throws IOException {
        FileWriter fileWriter = new FileWriter(new File(filePath));
        PrintWriter printWriter = new PrintWriter(fileWriter, true);
        for (int i = 0; i < linhas.size(); i++) {
            printWriter.println(linhas.get(i));
        }
        printWriter.close();
        fileWriter.close();
    }

    public static List<String> readFromFile(String filePath) throws Exception {
        List<String> lines = new ArrayList<String>();
        FileReader fileReader = new FileReader(new File(filePath));
        BufferedReader bufferedReader = new BufferedReader(fileReader);
        while (bufferedReader.ready()) {
            lines.add(bufferedReader.readLine());
        }
        bufferedReader.close();
        fileReader.close();
        return (lines);
    }
}
