package com.internet.monkey.datatables;

import java.util.List;

/**
 * Created by pzw on 2/9/2016.
 */
public class DataTablesResponse<T> {
    private List<T> data;
    private int recordsTotal;
    private int recordsFiltered;
    private int draw;

    public DataTablesResponse(DataTablesPage dataTablesPage, List<T> data) {
        if (dataTablesPage != null) {
            this.recordsTotal = dataTablesPage.getTotalResult();
            this.recordsFiltered = dataTablesPage.getTotalResult();
            this.draw = dataTablesPage.getDraw();
        }
        this.data = data;
    }

    public List getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

    public int getRecordsTotal() {
        return recordsTotal;
    }

    public void setRecordsTotal(int recordsTotal) {
        this.recordsTotal = recordsTotal;
    }

    public int getRecordsFiltered() {
        return recordsFiltered;
    }

    public void setRecordsFiltered(int recordsFiltered) {
        this.recordsFiltered = recordsFiltered;
    }

    public int getDraw() {
        return draw;
    }

    public void setDraw(int draw) {
        this.draw = draw;
    }
}
