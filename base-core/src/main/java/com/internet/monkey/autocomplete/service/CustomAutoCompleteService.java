package com.internet.monkey.autocomplete.service;


import com.internet.monkey.autocomplete.pojo.AutoComplete;

import java.util.List;

public interface CustomAutoCompleteService {

    List<AutoComplete> gAutoMenuList(AutoComplete autoCompleteParam);

}
