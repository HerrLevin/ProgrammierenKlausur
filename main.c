#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/**
 * calculates the value of the resistor based on the numeric values of the rings
 *
 * @param ring1 - numeric value corresponding to the color of the first ring
 * @param ring2 - numeric value corresponding to the color of the second ring
 * @param ring3 - numeric value corresponding to the color of the third ring
 * @return
 */
double calcResistor(int ring1, int ring2, int ring3) {
    double resistorValue = 0;
    //defining multiplication values for the third ring
    double multiplier[12] = {1.0, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, 0.1, 0.01};

    //calculating by combining ring 1 & ring 2 and multiplying the result with the factor for ring 3
    resistorValue = ((ring1 * 10) + ring2) * multiplier[ring3];

    return resistorValue;
}

/**
 * returns an integer (0-12) for all corresponding ring-values (schwarz-keine)
 * e.g. 0 - schwarz; 1 - braun; 2 - rot..
 *
 * @param color - the color given as string
 * @return
 */
int colorValue(char color[]) {
    if (strcmp(color, "schwarz") == 0) {
        return 0;
    }
    else if (strcmp(color, "braun") == 0) {
        return 1;
    }
    else if (strcmp(color, "rot") == 0) {
        return 2;
    }
    else if (strcmp(color, "orange") == 0) {
        return 3;
    }
    else if (strcmp(color, "gelb") == 0) {
        return 4;
    }
    else if (strcmp(color, "gruen") == 0) {
        return 5;
    }
    else if (strcmp(color, "blau") == 0) {
        return 6;
    }
    else if (strcmp(color, "violett") == 0) {
        return 7;
    }
    else if (strcmp(color, "grau") == 0) {
        return 8;
    }
    else if (strcmp(color, "weiss") == 0) {
        return 9;
    }
    else if (strcmp(color, "gold") == 0) {
        return 10;
    }
    else if (strcmp(color, "silber") == 0) {
        return 11;
    }
    else {
        return 12;
    }
}

/**
 *
 * @param resistorValue - the resistor value given as double
 * @param toleranceRing - the numeric value corresponding to the color of the tolerance ring
 * @param returnType - type of tolerance to be returned: 0 - tolerance in percent, 1 - lower tolerance, 2- upper tolerance
 * @return
 */
double tolerance(double resistorValue, int toleranceRing, int returnType) {
    double toleranceValues[13] = {0, 0.01, 0.02, 0, 0, 0.005, 0, 0, 0, 0, 0.05, 0.10, 0.20};
    double tolerance = toleranceValues[toleranceRing];

    if (returnType == 0) { // return tolerance
        return (tolerance * 100);
    } else if (returnType == 1) { // return lower tolerance
        return (resistorValue * (1 - tolerance));
    } else if (returnType == 2) { // return upper tolerance
        return (resistorValue * (1 + tolerance));
    }
}

/**
 * read the values of the resistors and write them out
 *
 * @param readFile - file pointer for the file to be read
 * @param writefile - file pointer for the file to be written
 */
void processResistors(FILE *readFile, FILE *writefile) {
    char chunk[128];//size of line
    char *token;

    //going through readFile line by line
    while(fgets(chunk, sizeof(chunk), readFile) != NULL) {
        int i = 0;
        int values[4];
        double resistorValue = 0;

        //getting first part of string before the ; delimiter
        token = strtok(strtok(chunk, "\n"), ";");

        //retrieving parts of the string as long as there are ; delimiters
        while (token != NULL) {
            values[i] = colorValue(token);
            token = strtok(NULL, ";");
            i++;
        }

        resistorValue = calcResistor(values[0], values[1], values[2]);
        fprintf(writefile, "%.2f;%.2f;%.2f;%.2f\n", resistorValue, tolerance(resistorValue, values[3], 0), tolerance(resistorValue, values[3], 1), tolerance(resistorValue, values[3], 2));
    }
}

int main(int argc, char *argv[]) {
    //open the file given by arguments and check if the file exists
    char *readFileName;
    char *pathToFile;
    FILE *readFile;

    readFile = fopen(argv[argc-1], "r");
    pathToFile = realpath(argv[argc-1], NULL);

    if (readFile == NULL) {
        printf("No readable file found at path.\n");
        exit(1);
    }

    //readFileName = strrchr(pathToFile, '/');
    readFileName = strrchr(pathToFile, '\\');
    //this should process the absolute path for windows but somehow returns a 139 error.
    pathToFile[strlen(pathToFile)-strlen(readFileName)+1] = '\0';

    FILE *writeFile = fopen(strcat(pathToFile, "results.txt"), "w");
    if (writeFile == NULL) {
        printf("Cannot create writable file.\n Do you have enough rights?\n");
        exit(1);
    }

    processResistors(readFile, writeFile);

    fclose(readFile);
    fclose(writeFile);
    return 0;
}
