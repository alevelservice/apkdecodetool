package com.google.gson;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class DefaultDateTypeAdapter extends TypeAdapter<Date> {

    /* renamed from: a, reason: collision with root package name */
    private final Class<? extends Date> f15302a;

    /* renamed from: b, reason: collision with root package name */
    private final List<DateFormat> f15303b = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultDateTypeAdapter(Class<? extends Date> cls, String str) {
        a(cls);
        this.f15302a = cls;
        this.f15303b.add(new SimpleDateFormat(str, Locale.US));
        if (Locale.getDefault().equals(Locale.US)) {
            return;
        }
        this.f15303b.add(new SimpleDateFormat(str));
    }

    private static Class<? extends Date> a(Class<? extends Date> cls) {
        if (cls == Date.class || cls == java.sql.Date.class || cls == Timestamp.class) {
            return cls;
        }
        throw new IllegalArgumentException("Date type must be one of " + Date.class + ", " + Timestamp.class + ", or " + java.sql.Date.class + " but was " + cls);
    }

    public String toString() {
        DateFormat dateFormat = this.f15303b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: read, reason: avoid collision after fix types in other method */
    public Date read2(com.google.gson.r.a aVar) {
        if (aVar.C() == com.google.gson.r.b.NULL) {
            aVar.A();
            return null;
        }
        Date a2 = a(aVar.B());
        Class<? extends Date> cls = this.f15302a;
        if (cls == Date.class) {
            return a2;
        }
        if (cls == Timestamp.class) {
            return new Timestamp(a2.getTime());
        }
        if (cls == java.sql.Date.class) {
            return new java.sql.Date(a2.getTime());
        }
        throw new AssertionError();
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void write(com.google.gson.r.c cVar, Date date) {
        if (date == null) {
            cVar.q();
            return;
        }
        synchronized (this.f15303b) {
            cVar.d(this.f15303b.get(0).format(date));
        }
    }

    public DefaultDateTypeAdapter(Class<? extends Date> cls, int i2, int i3) {
        a(cls);
        this.f15302a = cls;
        this.f15303b.add(DateFormat.getDateTimeInstance(i2, i3, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f15303b.add(DateFormat.getDateTimeInstance(i2, i3));
        }
        if (com.google.gson.internal.d.c()) {
            this.f15303b.add(com.google.gson.internal.i.a(i2, i3));
        }
    }

    private Date a(String str) {
        synchronized (this.f15303b) {
            Iterator<DateFormat> it = this.f15303b.iterator();
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
    }
}
