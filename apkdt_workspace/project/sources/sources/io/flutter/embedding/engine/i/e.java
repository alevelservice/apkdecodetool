package io.flutter.embedding.engine.i;

import android.os.Build;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* compiled from: LocalizationChannel.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final g.a.c.a.k f19136a;

    public e(@NonNull io.flutter.embedding.engine.e.a aVar) {
        this.f19136a = new g.a.c.a.k(aVar, "flutter/localization", g.a.c.a.g.f18222a);
    }

    public void a(@NonNull List<Locale> list) {
        g.a.b.c("LocalizationChannel", "Sending Locales to Flutter.");
        ArrayList arrayList = new ArrayList();
        for (Locale locale : list) {
            g.a.b.c("LocalizationChannel", "Locale (Language: " + locale.getLanguage() + ", Country: " + locale.getCountry() + ", Variant: " + locale.getVariant() + ")");
            arrayList.add(locale.getLanguage());
            arrayList.add(locale.getCountry());
            arrayList.add(Build.VERSION.SDK_INT >= 21 ? locale.getScript() : "");
            arrayList.add(locale.getVariant());
        }
        this.f19136a.a("setLocale", arrayList);
    }
}
