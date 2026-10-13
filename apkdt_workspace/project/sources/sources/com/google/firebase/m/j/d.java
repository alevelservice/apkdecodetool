package com.google.firebase.m.j;

import androidx.annotation.NonNull;
import com.google.firebase.m.f;
import com.google.firebase.m.g;
import com.google.firebase.m.h;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* compiled from: JsonDataEncoderBuilder.java */
/* loaded from: classes.dex */
public final class d implements com.google.firebase.m.i.b<d> {

    /* renamed from: e, reason: collision with root package name */
    private static final com.google.firebase.m.e<Object> f15153e = com.google.firebase.m.j.a.a();

    /* renamed from: f, reason: collision with root package name */
    private static final g<String> f15154f = com.google.firebase.m.j.b.a();

    /* renamed from: g, reason: collision with root package name */
    private static final g<Boolean> f15155g = c.a();

    /* renamed from: h, reason: collision with root package name */
    private static final b f15156h = new b(null);

    /* renamed from: a, reason: collision with root package name */
    private final Map<Class<?>, com.google.firebase.m.e<?>> f15157a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private final Map<Class<?>, g<?>> f15158b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    private com.google.firebase.m.e<Object> f15159c = f15153e;

    /* renamed from: d, reason: collision with root package name */
    private boolean f15160d = false;

    /* compiled from: JsonDataEncoderBuilder.java */
    /* loaded from: classes.dex */
    private static final class b implements g<Date> {

        /* renamed from: a, reason: collision with root package name */
        private static final DateFormat f15162a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);

        static {
            f15162a.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        private b() {
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.google.firebase.m.g
        public void a(@NonNull Date date, @NonNull h hVar) {
            hVar.a(f15162a.format(date));
        }
    }

    public d() {
        a(String.class, f15154f);
        a(Boolean.class, f15155g);
        a(Date.class, f15156h);
    }

    @Override // com.google.firebase.m.i.b
    @NonNull
    public /* bridge */ /* synthetic */ d a(@NonNull Class cls, @NonNull com.google.firebase.m.e eVar) {
        a2(cls, eVar);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(Object obj, f fVar) {
        throw new com.google.firebase.m.c("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JsonDataEncoderBuilder.java */
    /* loaded from: classes.dex */
    public class a implements com.google.firebase.m.a {
        a() {
        }

        @Override // com.google.firebase.m.a
        public void a(@NonNull Object obj, @NonNull Writer writer) {
            e eVar = new e(writer, d.this.f15157a, d.this.f15158b, d.this.f15159c, d.this.f15160d);
            eVar.a(obj, false);
            eVar.a();
        }

        @Override // com.google.firebase.m.a
        public String a(@NonNull Object obj) {
            StringWriter stringWriter = new StringWriter();
            try {
                a(obj, stringWriter);
            } catch (IOException unused) {
            }
            return stringWriter.toString();
        }
    }

    @Override // com.google.firebase.m.i.b
    @NonNull
    /* renamed from: a, reason: avoid collision after fix types in other method */
    public <T> d a2(@NonNull Class<T> cls, @NonNull com.google.firebase.m.e<? super T> eVar) {
        this.f15157a.put(cls, eVar);
        this.f15158b.remove(cls);
        return this;
    }

    @NonNull
    public <T> d a(@NonNull Class<T> cls, @NonNull g<? super T> gVar) {
        this.f15158b.put(cls, gVar);
        this.f15157a.remove(cls);
        return this;
    }

    @NonNull
    public d a(@NonNull com.google.firebase.m.i.a aVar) {
        aVar.a(this);
        return this;
    }

    @NonNull
    public d a(boolean z) {
        this.f15160d = z;
        return this;
    }

    @NonNull
    public com.google.firebase.m.a a() {
        return new a();
    }
}
