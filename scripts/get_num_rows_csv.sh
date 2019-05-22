import java.io.File;
import java.io.FileReader;
import java.io.LineNumberReader;

String filename = args[0];
FileReader fileReader = new FileReader(new File(filename));
LineNumberReader lineReader = new LineNumberReader(fileReader);

int linenumber = 0;

while (lineReader.readLine() != null) {
    linenumber++;
}
linenumber--; // do not include header row
log.info("File: " + filename + " count total is "+linenumber);

//Could set var here but choosing to set in the jmx file
//vars.put("csv.numRows", Integer.toString(linenumber));

return linenumber;