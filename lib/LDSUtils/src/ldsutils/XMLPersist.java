package ldsutils;

import java.beans.XMLDecoder;
import java.beans.XMLEncoder;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

public class XMLPersist {

    public static void saveToFile(Object obj, String filePath) throws FileNotFoundException {
        XMLEncoder encoder = new XMLEncoder(new BufferedOutputStream(new FileOutputStream(filePath)));
        encoder.writeObject(obj);
        encoder.close();
    }

    public static Object readFromFile(String filePath) throws FileNotFoundException {
        Object obj = null;
        XMLDecoder decoder = new XMLDecoder(new BufferedInputStream(new FileInputStream(filePath)));
        obj = decoder.readObject();
        decoder.close();
        return obj;
    }
}
