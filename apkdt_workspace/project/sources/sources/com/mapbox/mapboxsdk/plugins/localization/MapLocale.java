package com.mapbox.mapboxsdk.plugins.localization;

import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes2.dex */
public final class MapLocale {
    public static final MapLocale A;
    public static final MapLocale B;
    public static final MapLocale C;
    public static final MapLocale D;
    private static final Map<Locale, MapLocale> E;

    /* renamed from: b, reason: collision with root package name */
    static final LatLngBounds f16214b;

    /* renamed from: c, reason: collision with root package name */
    static final LatLngBounds f16215c;

    /* renamed from: d, reason: collision with root package name */
    static final LatLngBounds f16216d;

    /* renamed from: e, reason: collision with root package name */
    static final LatLngBounds f16217e;

    /* renamed from: f, reason: collision with root package name */
    static final LatLngBounds f16218f;

    /* renamed from: g, reason: collision with root package name */
    static final LatLngBounds f16219g;

    /* renamed from: h, reason: collision with root package name */
    static final LatLngBounds f16220h;

    /* renamed from: i, reason: collision with root package name */
    static final LatLngBounds f16221i;

    /* renamed from: j, reason: collision with root package name */
    static final LatLngBounds f16222j;

    /* renamed from: k, reason: collision with root package name */
    static final LatLngBounds f16223k;

    /* renamed from: l, reason: collision with root package name */
    static final LatLngBounds f16224l;
    static final LatLngBounds m;
    static final LatLngBounds n;
    public static final MapLocale o;
    public static final MapLocale p;
    public static final MapLocale q;
    public static final MapLocale r;
    public static final MapLocale s;
    public static final MapLocale t;
    public static final MapLocale u;
    public static final MapLocale v;
    public static final MapLocale w;
    public static final MapLocale x;
    public static final MapLocale y;
    public static final MapLocale z;

    /* renamed from: a, reason: collision with root package name */
    private final String f16225a;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Languages {
    }

    static {
        LatLngBounds.b bVar = new LatLngBounds.b();
        bVar.a(new LatLng(49.388611d, -124.733253d));
        bVar.a(new LatLng(24.544245d, -66.954811d));
        f16214b = bVar.a();
        LatLngBounds.b bVar2 = new LatLngBounds.b();
        bVar2.a(new LatLng(59.360249d, -8.623555d));
        bVar2.a(new LatLng(49.906193d, 1.759d));
        f16215c = bVar2.a();
        LatLngBounds.b bVar3 = new LatLngBounds.b();
        bVar3.a(new LatLng(83.110626d, -141.0d));
        bVar3.a(new LatLng(41.67598d, -52.636291d));
        f16216d = bVar3.a();
        LatLngBounds.b bVar4 = new LatLngBounds.b();
        bVar4.a(new LatLng(53.56086d, 73.557693d));
        bVar4.a(new LatLng(15.775416d, 134.773911d));
        f16217e = bVar4.a();
        LatLngBounds.b bVar5 = new LatLngBounds.b();
        bVar5.a(new LatLng(26.389444d, 118.115255566105d));
        bVar5.a(new LatLng(21.733333d, 122.107778d));
        f16218f = bVar5.a();
        LatLngBounds.b bVar6 = new LatLngBounds.b();
        bVar6.a(new LatLng(55.055637d, 5.865639d));
        bVar6.a(new LatLng(47.275776d, 15.039889d));
        f16219g = bVar6.a();
        LatLngBounds.b bVar7 = new LatLngBounds.b();
        bVar7.a(new LatLng(38.612446d, 125.887108d));
        bVar7.a(new LatLng(33.190945d, 129.584671d));
        f16220h = bVar7.a();
        LatLngBounds.b bVar8 = new LatLngBounds.b();
        bVar8.a(new LatLng(45.52314d, 122.93853d));
        bVar8.a(new LatLng(24.249472d, 145.820892d));
        f16221i = bVar8.a();
        LatLngBounds.b bVar9 = new LatLngBounds.b();
        bVar9.a(new LatLng(51.092804d, -5.142222d));
        bVar9.a(new LatLng(41.371582d, 9.561556d));
        f16222j = bVar9.a();
        LatLngBounds.b bVar10 = new LatLngBounds.b();
        bVar10.a(new LatLng(81.856903d, -168.997849d));
        bVar10.a(new LatLng(41.185902d, 19.638861d));
        f16223k = bVar10.a();
        LatLngBounds.b bVar11 = new LatLngBounds.b();
        bVar11.a(new LatLng(27.4335426d, -18.3936845d));
        bVar11.a(new LatLng(43.9933088d, 4.5918885d));
        f16224l = bVar11.a();
        LatLngBounds.b bVar12 = new LatLngBounds.b();
        bVar12.a(new LatLng(27.4335426d, -18.3936845d));
        bVar12.a(new LatLng(42.280468655d, -6.3890876937d));
        m = bVar12.a();
        LatLngBounds.b bVar13 = new LatLngBounds.b();
        bVar13.a(new LatLng(5.2842873d, -33.8689056d));
        bVar13.a(new LatLng(-28.6341164d, -73.9830625d));
        n = bVar13.a();
        o = new MapLocale("name_fr", f16222j);
        p = new MapLocale("name_de", f16219g);
        q = new MapLocale("name_ja", f16221i);
        r = new MapLocale("name_ko", f16220h);
        s = new MapLocale("name_zh-Hans", f16217e);
        t = new MapLocale("name_zh-Hant", f16218f);
        u = new MapLocale("name_zh-Hans");
        v = new MapLocale("name_zh-Hant");
        w = new MapLocale("name_en", f16215c);
        x = new MapLocale("name_en", f16214b);
        y = new MapLocale("name_en", f16216d);
        z = new MapLocale("name_fr", f16216d);
        A = new MapLocale("name_ru", f16223k);
        B = new MapLocale("name_es", f16224l);
        C = new MapLocale("name_pt", m);
        D = new MapLocale("name_pt", n);
        E = new HashMap();
        E.put(Locale.US, x);
        E.put(Locale.CANADA_FRENCH, z);
        E.put(Locale.CANADA, y);
        E.put(Locale.CHINA, u);
        E.put(Locale.TAIWAN, t);
        E.put(Locale.UK, w);
        E.put(Locale.JAPAN, q);
        E.put(Locale.KOREA, r);
        E.put(Locale.GERMANY, p);
        E.put(Locale.FRANCE, o);
        E.put(new Locale("ru", "RU"), A);
        E.put(new Locale("es", "ES"), B);
        E.put(new Locale("pt", "PT"), C);
        E.put(new Locale("pt", "BR"), D);
        if (Build.VERSION.SDK_INT >= 21) {
            Locale build = new Locale.Builder().setLanguage("zh").setRegion("CN").setScript("Hans").build();
            Locale build2 = new Locale.Builder().setLanguage("zh").setRegion("HK").setScript("Hans").build();
            Locale build3 = new Locale.Builder().setLanguage("zh").setRegion("MO").setScript("Hans").build();
            Locale build4 = new Locale.Builder().setLanguage("zh").setRegion("SG").setScript("Hans").build();
            Locale build5 = new Locale.Builder().setLanguage("zh").setRegion("TW").setScript("Hant").build();
            Locale build6 = new Locale.Builder().setLanguage("zh").setRegion("HK").setScript("Hant").build();
            Locale build7 = new Locale.Builder().setLanguage("zh").setRegion("MO").setScript("Hant").build();
            E.put(build, u);
            E.put(build2, u);
            E.put(build3, u);
            E.put(build4, u);
            E.put(build5, t);
            E.put(build6, v);
            E.put(build7, v);
        }
    }

    public MapLocale(@NonNull String str) {
        this(str, null);
    }

    @NonNull
    public String a() {
        return this.f16225a;
    }

    public MapLocale(@NonNull String str, @Nullable LatLngBounds latLngBounds) {
        this.f16225a = str;
    }

    @Nullable
    public static MapLocale a(@NonNull Locale locale, boolean z2) {
        MapLocale mapLocale = E.get(locale);
        return (z2 && mapLocale == null) ? a(locale) : mapLocale;
    }

    @Nullable
    private static MapLocale a(@NonNull Locale locale) {
        String substring = locale.getLanguage().substring(0, 2);
        for (Locale locale2 : E.keySet()) {
            if (locale2.getLanguage().equals(substring)) {
                return E.get(locale2);
            }
        }
        return null;
    }
}
