package se.alipsa.presentations;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;

public class PptxExporter {

  public static void export(String presentation, String filePath) throws JsonProcessingException {
    System.out.println("presentation = " + presentation);

    ObjectMapper objectMapper = new ObjectMapper();
    Presentation pres = objectMapper.readValue(presentation, Presentation.class);
    File file = new File(filePath);

    export(pres, file);
  }

  public static void export(Presentation presentation, File file) {
    System.out.println("export to pptx not yet implemented!");
  }

}