package com.mapbox.mapboxsdk.t.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.style.layers.CircleLayer;

/* compiled from: CircleManager.java */
/* loaded from: classes2.dex */
public class e extends b<CircleLayer, c, f, Object, u, Object> {
    @UiThread
    public e(@NonNull MapView mapView, @NonNull com.mapbox.mapboxsdk.maps.n nVar, @NonNull Style style) {
        this(mapView, nVar, style, null, null);
    }

    @Override // com.mapbox.mapboxsdk.t.a.b
    String a() {
        return "id";
    }

    @Override // com.mapbox.mapboxsdk.t.a.b
    public void a(@NonNull com.mapbox.mapboxsdk.u.a.a aVar) {
        this.f16289e = aVar;
        ((CircleLayer) this.f16294j).a(this.f16289e);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.mapbox.mapboxsdk.t.a.b
    protected void b(@NonNull String str) {
        char c2;
        switch (str.hashCode()) {
            case -1290287090:
                if (str.equals("circle-opacity")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -939323345:
                if (str.equals("circle-radius")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -585897621:
                if (str.equals("circle-stroke-color")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -567613490:
                if (str.equals("circle-stroke-width")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -113174716:
                if (str.equals("circle-blur")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 787555366:
                if (str.equals("circle-color")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1671319571:
                if (str.equals("circle-stroke-opacity")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                ((CircleLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.d(com.mapbox.mapboxsdk.u.a.a.a("circle-radius")));
                return;
            case 1:
                ((CircleLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.b(com.mapbox.mapboxsdk.u.a.a.a("circle-color")));
                return;
            case 2:
                ((CircleLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.a(com.mapbox.mapboxsdk.u.a.a.a("circle-blur")));
                return;
            case 3:
                ((CircleLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.c(com.mapbox.mapboxsdk.u.a.a.a("circle-opacity")));
                return;
            case 4:
                ((CircleLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.g(com.mapbox.mapboxsdk.u.a.a.a("circle-stroke-width")));
                return;
            case 5:
                ((CircleLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.e(com.mapbox.mapboxsdk.u.a.a.a("circle-stroke-color")));
                return;
            case 6:
                ((CircleLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.f(com.mapbox.mapboxsdk.u.a.a.a("circle-stroke-opacity")));
                return;
            default:
                return;
        }
    }

    @Override // com.mapbox.mapboxsdk.t.a.b
    void c() {
        this.f16287c.put("circle-radius", false);
        this.f16287c.put("circle-color", false);
        this.f16287c.put("circle-blur", false);
        this.f16287c.put("circle-opacity", false);
        this.f16287c.put("circle-stroke-width", false);
        this.f16287c.put("circle-stroke-color", false);
        this.f16287c.put("circle-stroke-opacity", false);
    }

    @UiThread
    public e(@NonNull MapView mapView, @NonNull com.mapbox.mapboxsdk.maps.n nVar, @NonNull Style style, @Nullable String str, @Nullable com.mapbox.mapboxsdk.style.sources.a aVar) {
        this(mapView, nVar, style, new d(), str, aVar, i.a(mapView, nVar));
    }

    @VisibleForTesting
    e(@NonNull MapView mapView, @NonNull com.mapbox.mapboxsdk.maps.n nVar, @NonNull Style style, @NonNull h<CircleLayer> hVar, @Nullable String str, @Nullable com.mapbox.mapboxsdk.style.sources.a aVar, i iVar) {
        super(mapView, nVar, style, hVar, iVar, str, aVar);
    }
}
