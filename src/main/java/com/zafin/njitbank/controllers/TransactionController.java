package com.zafin.njitbank.controllers;

import com.zafin.njitbank.Service.TransactionService;
import com.zafin.njitbank.dto.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@Controller
public class TransactionController {
    @Autowired
    TransactionService transactionService;
@RequestMapping("/showfile")
    public void readLinesFromFile() throws IOException {
        List<String> lines = new ArrayList<>();
        String filePath="src\\main\\resources\\transaction";

        BufferedReader br = new BufferedReader(new FileReader(filePath));
        String line;
        while ((line = br.readLine()) != null) {
            lines.add(line);

            String[] tValue=line.split(",");

            Transaction transaction=new Transaction(tValue[0],tValue[1],tValue[2],tValue[3],tValue[4],Integer.parseInt(tValue[5]),Integer.parseInt(tValue[6]),tValue[7],tValue[8]);
            transactionService.calculatePrice(transaction);
        }
        br.close();

        System.out.println(lines);





    }

}



