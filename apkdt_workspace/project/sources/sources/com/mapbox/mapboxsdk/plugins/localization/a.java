package com.mapbox.mapboxsdk.plugins.localization;

import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.maps.n;
import com.mapbox.mapboxsdk.style.layers.Layer;
import com.mapbox.mapboxsdk.style.layers.SymbolLayer;
import com.mapbox.mapboxsdk.style.layers.c;
import com.mapbox.mapboxsdk.style.layers.d;
import com.mapbox.mapboxsdk.style.sources.Source;
import com.mapbox.mapboxsdk.style.sources.VectorSource;
import com.mapbox.mapboxsdk.style.types.Formatted;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* compiled from: LocalizationPlugin.java */
@UiThread
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: c, reason: collision with root package name */
    private static final List<String> f16226c = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    private MapLocale f16227a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private Style f16228b;

    /* compiled from: LocalizationPlugin.java */
    /* renamed from: com.mapbox.mapboxsdk.plugins.localization.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0164a implements MapView.s {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f16229a;

        /* compiled from: LocalizationPlugin.java */
        /* renamed from: com.mapbox.mapboxsdk.plugins.localization.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0165a implements Style.c {
            C0165a() {
            }

            @Override // com.mapbox.mapboxsdk.maps.Style.c
            public void a(@NonNull Style style) {
                a.this.f16228b = style;
                if (a.this.f16227a != null) {
                    a aVar = a.this;
                    aVar.a(aVar.f16227a);
                }
            }
        }

        C0164a(n nVar) {
            this.f16229a = nVar;
        }

        @Override // com.mapbox.mapboxsdk.maps.MapView.s
        public void a() {
            this.f16229a.a(new C0165a());
        }
    }

    static {
        f16226c.add("mapbox.mapbox-streets-v6");
        f16226c.add("mapbox.mapbox-streets-v7");
        f16226c.add("mapbox.mapbox-streets-v8");
    }

    public a(@NonNull MapView mapView, @NonNull n nVar, @NonNull Style style) {
        this.f16228b = style;
        if (style.e()) {
            mapView.addOnDidFinishLoadingStyleListener(new C0164a(nVar));
            return;
        }
        throw new RuntimeException("The style has to be non-null and fully loaded.");
    }

    private boolean b(Source source) {
        String a2;
        return (source instanceof VectorSource) && (a2 = ((VectorSource) source).a()) != null && a2.contains("mapbox.mapbox-streets-v7");
    }

    private boolean c(Source source) {
        String a2;
        return (source instanceof VectorSource) && (a2 = ((VectorSource) source).a()) != null && a2.contains("mapbox.mapbox-streets-v8");
    }

    private MapLocale a(MapLocale mapLocale, boolean z) {
        if (z) {
            return mapLocale.equals(MapLocale.u) ? mapLocale : MapLocale.s;
        }
        return MapLocale.s;
    }

    public void a() {
        a(Locale.getDefault(), false);
    }

    public void a(String str) {
        a(new MapLocale(str));
    }

    public void a(@NonNull Locale locale, boolean z) {
        MapLocale a2 = MapLocale.a(locale, z);
        if (a2 == null) {
            l.a.a.a("Couldn't match Locale %s %s to a MapLocale", locale.toString(), locale.getDisplayName());
        } else {
            l.a.a.a("Locale: %s, set MapLocale: %s", locale.toString(), a2.a());
            a(a2);
        }
    }

    public void a(@NonNull MapLocale mapLocale) {
        this.f16227a = mapLocale;
        if (this.f16228b.e()) {
            List<Layer> b2 = this.f16228b.b();
            for (Source source : this.f16228b.c()) {
                if (a(source)) {
                    boolean c2 = c(source);
                    for (Layer layer : b2) {
                        if (layer instanceof SymbolLayer) {
                            d<Formatted> f2 = ((SymbolLayer) layer).f();
                            if (f2.b()) {
                                if (c2) {
                                    a(mapLocale, layer, f2);
                                } else {
                                    a(mapLocale, layer, f2, b(source));
                                }
                            }
                        }
                    }
                } else {
                    String a2 = source instanceof VectorSource ? ((VectorSource) source).a() : null;
                    if (a2 == null) {
                        a2 = "not found";
                    }
                    l.a.a.a("The %s (%s) source is not based on Mapbox Vector Tiles. Supported sources:\n %s", source.getId(), a2, f16226c);
                }
            }
        }
    }

    private void a(@NonNull MapLocale mapLocale, Layer layer, d<?> dVar, boolean z) {
        com.mapbox.mapboxsdk.u.a.a a2 = dVar.a();
        if (a2 != null) {
            if (mapLocale.a().startsWith("name_zh")) {
                mapLocale = a(mapLocale, z);
                l.a.a.a("reset mapLocale to: %s", mapLocale.a());
            }
            String replaceAll = a2.toString().replaceAll("\\b(name|name_.{2,7})\\b", mapLocale.a());
            if (replaceAll.startsWith("[\"step") && a2.b().length % 2 == 0) {
                replaceAll = replaceAll.replaceAll("\\[\"zoom\"], ", "[\"zoom\"], \"\", ");
            }
            layer.a(c.G(com.mapbox.mapboxsdk.u.a.a.c(replaceAll)));
        }
    }

    private void a(@NonNull MapLocale mapLocale, Layer layer, d<?> dVar) {
        com.mapbox.mapboxsdk.u.a.a a2 = dVar.a();
        if (a2 != null) {
            String replaceAll = a2.toString().replaceAll("\\[\"match\", \"(name|name_.{2,7})\", \"name_zh-Hant\", \\[\"coalesce\", \\[\"get\", \"name_zh-Hant\"], \\[\"get\", \"name_zh-Hans\"], \\[\"match\", \\[\"get\", \"name_script\"], \"Latin\", \\[\"get\", \"name\"], \\[\"get\", \"name_en\"]], \\[\"get\", \"name\"]], \\[\"coalesce\", \\[\"get\", \"(name|name_.{2,7})\"], \\[\"match\", \\[\"get\", \"name_script\"], \"Latin\", \\[\"get\", \"name\"], \\[\"get\", \"name_en\"]], \\[\"get\", \"name\"]]]", "[\"get\", \"name_en\"], [\"get\", \"name\"]");
            String a3 = mapLocale.a();
            if (!a3.equals("name_en")) {
                if (a3.equals("name_zh")) {
                    a3 = "name_zh-Hans";
                }
                replaceAll = replaceAll.replaceAll("\\[\"get\", \"name_en\"], \\[\"get\", \"name\"]", String.format(Locale.US, "[\"match\", \"%s\", \"name_zh-Hant\", [\"coalesce\", [\"get\", \"name_zh-Hant\"], [\"get\", \"name_zh-Hans\"], [\"match\", [\"get\", \"name_script\"], \"Latin\", [\"get\", \"name\"], [\"get\", \"name_en\"]], [\"get\", \"name\"]], [\"coalesce\", [\"get\", \"%s\"], [\"match\", [\"get\", \"name_script\"], \"Latin\", [\"get\", \"name\"], [\"get\", \"name_en\"]], [\"get\", \"name\"]]]", a3, a3));
            }
            layer.a(c.G(com.mapbox.mapboxsdk.u.a.a.c(replaceAll)));
        }
    }

    private boolean a(Source source) {
        String a2;
        if (!(source instanceof VectorSource) || (a2 = ((VectorSource) source).a()) == null) {
            return false;
        }
        Iterator<String> it = f16226c.iterator();
        while (it.hasNext()) {
            if (a2.contains(it.next())) {
                return true;
            }
        }
        return false;
    }
}
