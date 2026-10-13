package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.d;
import com.google.gson.internal.i;
import com.google.gson.n;
import com.google.gson.p;
import com.google.gson.r.c;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DateTypeAdapter extends TypeAdapter<Date> {

    /* renamed from: b, reason: collision with root package name */
    public static final p f15352b = new p() { // from class: com.google.gson.internal.bind.DateTypeAdapter.1
        @Override // com.google.gson.p
        public <T> TypeAdapter<T> create(Gson gson, com.google.gson.q.a<T> aVar) {
            if (aVar.getRawType() == Date.class) {
                return new DateTypeAdapter();
            }
            return null;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final List<DateFormat> f15353a = new ArrayList();

    public DateTypeAdapter() {
        this.f15353a.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f15353a.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (d.c()) {
            this.f15353a.add(i.a(2, 2));
        }
    }

    private synchronized Date a(String str) {
        Iterator<DateFormat> it = this.f15353a.iterator();
        while (it.hasNext()) {
            try {
                return it.next().parse(str);
            } catch (ParseException unused) {
            }
        }
        try {
            return com.google.gson.internal.bind.c.a.a(str, new ParsePosition(0));
        } catch (ParseException e2) {
            throw new n(str, e2);
        }
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: read, reason: avoid collision after fix types in other method */
    public Date read2(com.google.gson.r.a aVar) {
        if (aVar.C() == com.google.gson.r.b.NULL) {
            aVar.A();
            return null;
        }
        return a(aVar.B());
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized void write(c cVar, Date date) {
        if (date == null) {
            cVar.q();
        } else {
            cVar.d(this.f15353a.get(0).format(date));
        }
    }
}
