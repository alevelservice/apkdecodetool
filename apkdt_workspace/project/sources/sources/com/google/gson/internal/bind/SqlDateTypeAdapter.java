package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.n;
import com.google.gson.p;
import com.google.gson.r.c;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* loaded from: classes2.dex */
public final class SqlDateTypeAdapter extends TypeAdapter<Date> {

    /* renamed from: b, reason: collision with root package name */
    public static final p f15380b = new p() { // from class: com.google.gson.internal.bind.SqlDateTypeAdapter.1
        @Override // com.google.gson.p
        public <T> TypeAdapter<T> create(Gson gson, com.google.gson.q.a<T> aVar) {
            if (aVar.getRawType() == Date.class) {
                return new SqlDateTypeAdapter();
            }
            return null;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final DateFormat f15381a = new SimpleDateFormat("MMM d, yyyy");

    @Override // com.google.gson.TypeAdapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized void write(c cVar, Date date) {
        cVar.d(date == null ? null : this.f15381a.format((java.util.Date) date));
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: read, reason: avoid collision after fix types in other method */
    public synchronized Date read2(com.google.gson.r.a aVar) {
        if (aVar.C() == com.google.gson.r.b.NULL) {
            aVar.A();
            return null;
        }
        try {
            return new Date(this.f15381a.parse(aVar.B()).getTime());
        } catch (ParseException e2) {
            throw new n(e2);
        }
    }
}
