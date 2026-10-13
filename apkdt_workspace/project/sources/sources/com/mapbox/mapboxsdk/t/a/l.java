package com.mapbox.mapboxsdk.t.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.style.layers.FillLayer;

/* compiled from: FillManager.java */
/* loaded from: classes2.dex */
public class l extends b<FillLayer, j, m, Object, v, Object> {
    @UiThread
    public l(@NonNull MapView mapView, @NonNull com.mapbox.mapboxsdk.maps.n nVar, @NonNull Style style) {
        this(mapView, nVar, style, null, null);
    }

    @Override // com.mapbox.mapboxsdk.t.a.b
    String a() {
        return "id";
    }

    @Override // com.mapbox.mapboxsdk.t.a.b
    public void a(@NonNull com.mapbox.mapboxsdk.u.a.a aVar) {
        this.f16289e = aVar;
        ((FillLayer) this.f16294j).a(this.f16289e);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.mapbox.mapboxsdk.t.a.b
    protected void b(@NonNull String str) {
        char c2;
        switch (str.hashCode()) {
            case -1679439207:
                if (str.equals("fill-color")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1250124351:
                if (str.equals("fill-opacity")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -774008506:
                if (str.equals("fill-pattern")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1201248078:
                if (str.equals("fill-outline-color")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            ((FillLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.i(com.mapbox.mapboxsdk.u.a.a.a("fill-opacity")));
            return;
        }
        if (c2 == 1) {
            ((FillLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.h(com.mapbox.mapboxsdk.u.a.a.a("fill-color")));
        } else if (c2 == 2) {
            ((FillLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.j(com.mapbox.mapboxsdk.u.a.a.a("fill-outline-color")));
        } else {
            if (c2 != 3) {
                return;
            }
            ((FillLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.k(com.mapbox.mapboxsdk.u.a.a.a("fill-pattern")));
        }
    }

    @Override // com.mapbox.mapboxsdk.t.a.b
    void c() {
        this.f16287c.put("fill-opacity", false);
        this.f16287c.put("fill-color", false);
        this.f16287c.put("fill-outline-color", false);
        this.f16287c.put("fill-pattern", false);
    }

    @UiThread
    public l(@NonNull MapView mapView, @NonNull com.mapbox.mapboxsdk.maps.n nVar, @NonNull Style style, @Nullable String str, @Nullable com.mapbox.mapboxsdk.style.sources.a aVar) {
        this(mapView, nVar, style, new k(), str, aVar, i.a(mapView, nVar));
    }

    @VisibleForTesting
    l(@NonNull MapView mapView, @NonNull com.mapbox.mapboxsdk.maps.n nVar, @NonNull Style style, @NonNull h<FillLayer> hVar, @Nullable String str, @Nullable com.mapbox.mapboxsdk.style.sources.a aVar, i iVar) {
        super(mapView, nVar, style, hVar, iVar, str, aVar);
    }
}
