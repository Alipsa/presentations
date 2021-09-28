package se.alipsa.presentations;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.poi.xslf.usermodel.*;
import org.renjin.sexp.StringArrayVector;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class PptxExporter {

  public static void export(StringArrayVector presentation, StringArrayVector filePath) throws IOException {
    String json = presentation.getElementAsString(0);
    String path = filePath.getElementAsString(0);
    System.out.println("presentation = " + json);
    ObjectMapper objectMapper = new ObjectMapper();
    Presentation pres = objectMapper.readValue(json, Presentation.class);
    File file = new File(path);

    exportPresentation(pres, file);
  }

  public static void exportPresentation(Presentation presentation, File file) throws IOException {
    XMLSlideShow ppt = new XMLSlideShow();
    XSLFSlideMaster slideMaster = ppt.getSlideMasters().get(0);
    System.out.println("Presentation contains " + presentation.getSlides().size() + " slides");
    for (Slide slide : presentation.getSlides()) {
      XSLFSlideLayout layout = getLayout(slide.getLayout(), slideMaster);
      XSLFSlide pptSlide;
      if (layout == null) {
        //System.out.println("Creating a slide without layout");
        pptSlide = ppt.createSlide();
      } else {
        //System.out.println("Creating a slide with layout " + slide.getLayout());
        pptSlide = ppt.createSlide(layout);
      }
      pptSlide.setHidden(slide.isHidden());
    }

    try(FileOutputStream out = new FileOutputStream(file)) {
      ppt.write(out);
    }
    System.out.println("Wrote presentation to " + file.getAbsolutePath());
  }

  private static XSLFSlideLayout getLayout(String layout, XSLFSlideMaster slideMaster) {
    if (layout == null) {
      return null;
    }
    if ("NONE".equalsIgnoreCase(layout)) {
      return slideMaster.getLayout(SlideLayout.BLANK);
    }
    try {
      return slideMaster.getLayout(SlideLayout.valueOf(layout.toUpperCase()));
    } catch (IllegalArgumentException e) {
      System.err.println("Layout '" + layout + "', does not exist");
      return null;
    }
  }

}