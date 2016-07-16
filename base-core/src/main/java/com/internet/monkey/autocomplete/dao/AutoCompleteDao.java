package com.internet.monkey.autocomplete.dao;

import com.internet.monkey.annotation.RepositoryImpl;
import com.internet.monkey.autocomplete.pojo.AutoComplete;

import java.util.List;

/**
 * Created by pzw on 2/9/2016.
 */
@RepositoryImpl
public interface AutoCompleteDao {

    List<AutoComplete> gMenuList();

}
