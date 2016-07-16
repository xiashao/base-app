package com.internet.monkey.autocomplete.service;


import com.internet.monkey.autocomplete.dao.AutoCompleteDao;
import com.internet.monkey.autocomplete.pojo.AutoComplete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("autoCompleteService")
public class CustomAutoCompleteServiceImpl extends AbstractAutoCompleteService implements CustomAutoCompleteService {

    @Autowired
    private AutoCompleteDao autoCompleteDao;

    @Override
    protected void initAutoCompleteMap() {
        Map<String, List<AutoComplete>> autoCompleteMap = new HashMap<>();
        autoCompleteMap.put("gAutoMenu",autoCompleteDao.gMenuList());
        setAutoCompleteMap(autoCompleteMap);
    }

    @Override
    public List<AutoComplete> gAutoMenuList(AutoComplete autoCompleteParam) {
        List<AutoComplete> autoCompleteList = autoCompleteDao.gMenuList();
        initAutoCompleteSpell(autoCompleteList);
        return getMatchAutoCompleteList(autoCompleteParam, autoCompleteList);
    }
}
