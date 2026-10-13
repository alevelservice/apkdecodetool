package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.n;
import com.google.gson.p;
import com.google.gson.r.c;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes2.dex */
public final class TimeTypeAdapter extends TypeAdapter<Time> {

    /* renamed from: b, reason: collision with root package name */
    public static final p f15382b = new p() { // from class: com.google.gson.internal.bind.TimeTypeAdapter.1
        @Override // com.google.gson.p
        public <T> TypeAdapter<T> create(Gson gson, com.google.gson.q.a<T> aVar) {
            if (aVar.getRawType() == Time.class) {
                return new TimeTypeAdapter();
            }
            return null;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final DateFormat f15383a = new SimpleDateFormat("hh:mm:ss a");

    @Override // com.google.gson.TypeAdapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized void write(c cVar, Time time) {
        cVar.d(time == null ? null : this.f15383a.format((Date) time));
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: read, reason: avoid collision after fix types in other method */
    public synchronized Time read2(com.google.gson.r.a aVar) {
        if (aVar.C() == com.google.gson.r.b.NULL) {
            aVar.A();
            return null;
        }
        try {
            return new Time(this.f15383a.parse(aVar.B()).getTime());
        } catch (ParseException e2) {
            throw new n(e2);
        }
    }
}
