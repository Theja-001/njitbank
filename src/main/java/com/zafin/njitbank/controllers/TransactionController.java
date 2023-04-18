package com.zafin.njitbank.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@Controller
public class TransactionController {
@RequestMapping("/showfile")
    public void readLinesFromFile() throws IOException {
        List<String> lines = new ArrayList<>();
        String filePath="src\\main\\resources\\transaction";

        BufferedReader br = new BufferedReader(new FileReader(filePath));
        String line;
        while ((line = br.readLine()) != null) {
            lines.add(line);
        }
        br.close();

        System.out.println(lines);

        //return lines;
    }

}



