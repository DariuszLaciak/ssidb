package com.ssidb.helpers;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.util.ArrayList;

public class XMLUtils {

    public static <T> String User2Xml(T p) {
        XStream mapping = new XStream(new DomDriver());
        String xml = mapping.toXML(p);
        return xml;
    }

    public static <T> void arrayListUser2Xml(ArrayList<T> p,
            String filename) {
        if (filename != null) {
            try {
                FileWriter f = new FileWriter(filename);
                BufferedWriter out = new BufferedWriter(f);
                XStream mapping = new XStream(new DomDriver());
                String xml = mapping.toXML(p);
                out.write(xml);
                out.close();
                System.out.println("Użytkownicy: " + p
                        + " są zapisani w pliku -> " + filename);
            } catch (Exception e) {
                System.out.println("Error: " + e.getMessage());
            }
        }
    }

    public static <T> T xml2User(String xml) {
        XStream mapping = new XStream(new DomDriver());
        return (T) mapping.fromXML(xml);
    }

    public static <T> ArrayList<T> xml2ArrayListUser(String filename) {
        String xml = "";
        String strLine = "";
        if (filename != null) {
            try {
                FileInputStream f = new FileInputStream(filename);
                DataInputStream in = new DataInputStream(f);
                BufferedReader r = new BufferedReader(new InputStreamReader(in));
                while ((strLine = r.readLine()) != null) {
                    xml += strLine;
                }
                in.close();
                XStream mapping = new XStream(new DomDriver());
                return (ArrayList<T>) mapping.fromXML(xml);
            } catch (Exception e) {
                System.out.println("Error: " + e);
            }
        }
        return null;
    }
}