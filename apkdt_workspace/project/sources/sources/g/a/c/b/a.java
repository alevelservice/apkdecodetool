package g.a.c.b;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;
import androidx.annotation.NonNull;
import io.flutter.embedding.engine.i.e;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* compiled from: LocalizationPlugin.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final e f18241a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final Context f18242b;

    public a(@NonNull Context context, @NonNull e eVar) {
        this.f18242b = context;
        this.f18241a = eVar;
    }

    public Locale a(List<Locale> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            ArrayList arrayList = new ArrayList();
            LocaleList locales = this.f18242b.getResources().getConfiguration().getLocales();
            int size = locales.size();
            for (int i3 = 0; i3 < size; i3++) {
                Locale locale = locales.get(i3);
                arrayList.add(new Locale.LanguageRange(locale.toString().replace("_", "-")));
                arrayList.add(new Locale.LanguageRange(locale.getLanguage()));
                arrayList.add(new Locale.LanguageRange(locale.getLanguage() + "-*"));
            }
            Locale lookup = Locale.lookup(arrayList, list);
            return lookup != null ? lookup : list.get(0);
        }
        if (i2 >= 24) {
            LocaleList locales2 = this.f18242b.getResources().getConfiguration().getLocales();
            for (int i4 = 0; i4 < locales2.size(); i4++) {
                Locale locale2 = locales2.get(i4);
                for (Locale locale3 : list) {
                    if (locale2.equals(locale3)) {
                        return locale3;
                    }
                }
                for (Locale locale4 : list) {
                    if (locale2.getLanguage().equals(locale4.toLanguageTag())) {
                        return locale4;
                    }
                }
                for (Locale locale5 : list) {
                    if (locale2.getLanguage().equals(locale5.getLanguage())) {
                        return locale5;
                    }
                }
            }
            return list.get(0);
        }
        Locale locale6 = this.f18242b.getResources().getConfiguration().locale;
        if (locale6 != null) {
            for (Locale locale7 : list) {
                if (locale6.equals(locale7)) {
                    return locale7;
                }
            }
            for (Locale locale8 : list) {
                if (locale6.getLanguage().equals(locale8.toString())) {
                    return locale8;
                }
            }
        }
        return list.get(0);
    }

    public void a(@NonNull Configuration configuration) {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleList locales = configuration.getLocales();
            int size = locales.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(locales.get(i2));
            }
        } else {
            arrayList.add(configuration.locale);
        }
        this.f18241a.a(arrayList);
    }
}
