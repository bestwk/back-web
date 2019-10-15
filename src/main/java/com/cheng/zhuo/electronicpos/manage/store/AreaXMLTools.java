package com.cheng.zhuo.electronicpos.manage.store;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import jdk.internal.org.objectweb.asm.Handle;
import org.springframework.util.ResourceUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class AreaXMLTools {
    public static Map findCity(Map map,String name) throws Exception {
        Document document = getDocument(name);
        NodeList list = document.getElementsByTagName("RECORD");
        for (int i = 0; i < list.getLength(); i++) {
            Element element = (Element) list.item(i);
            String city_name = element.getElementsByTagName("CITY_NAME").item(0).getTextContent();
            String city_code = element.getElementsByTagName("CITY_CODE").item(0).getTextContent();
            map.put(city_name,city_code);
        }
        return map;
    }
    public static Map findDistrict(Map map,String name) throws Exception {
        Document document = getDocument(name);
        NodeList list = document.getElementsByTagName("RECORD");
        for (int i = 0; i < list.getLength(); i++) {
            Element element = (Element) list.item(i);
            String city_name = element.getElementsByTagName("DISTRICT_NAME").item(0).getTextContent();
            String city_code = element.getElementsByTagName("DISTRICT_CODE").item(0).getTextContent();
            map.put(city_name,city_code);
        }
        return map;
    }

    public static Map findProvince(Map map,String name) throws Exception {
        Document document = getDocument(name);
        NodeList list = document.getElementsByTagName("RECORD");
        for (int i = 0; i < list.getLength(); i++) {
            Element element = (Element) list.item(i);
            String city_name = element.getElementsByTagName("NAME").item(0).getTextContent();
            String city_code = element.getElementsByTagName("PROVINCE_CODE").item(0).getTextContent();
            map.put(city_name,city_code);
        }
        return map;
    }

    private static Document getDocument(String name) throws ParserConfigurationException,
            IOException, org.xml.sax.SAXException {
        String path = Thread.currentThread().getContextClassLoader().getResource("").getPath()+"/areaXML/"+name+".xml";
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document document = builder.parse(new File(path));
        Element e = document.getDocumentElement();
        return document;
    }

    public static void main(String[] args) throws Exception {
        Map map = new HashMap();
        map=findCity(map,"t_dic_city");
        map=findDistrict(map,"t_dic_district");
        map=findProvince(map,"t_dic_province");
        System.out.println(map);
    }
}
