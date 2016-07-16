package com.internet.monkey.autocomplete.service;

import com.internet.monkey.autocomplete.pojo.AutoComplete;

import java.util.List;

/**
 * Created by pzw on 2/9/2016.
 */
public interface AutoCompleteService {
    void initAutoComplete();

    List<AutoComplete> getAutoCompleteResultList(AutoComplete autoCompleteParam);
}
