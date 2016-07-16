package com.internet.monkey.complete;

import com.internet.monkey.autocomplete.pojo.AutoComplete;
import com.internet.monkey.autocomplete.service.AutoCompleteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by pzw on 2/9/2016.
 */
@Controller
@RequestMapping("/autoComplete")
public class AutoCompleteController {


    @Autowired
    private AutoCompleteService autoCompleteService;


    @RequestMapping
    @ResponseBody
    public List<AutoComplete> autoComplete(AutoComplete autoCompleteParam) {
        return autoCompleteService.getAutoCompleteResultList(autoCompleteParam);
    }
}
