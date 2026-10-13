package com.mapbox.mapboxsdk.t.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.style.layers.LineLayer;

/* compiled from: LineManager.java */
/* loaded from: classes2.dex */
public class p extends b<LineLayer, n, q, Object, w, Object> {
    @UiThread
    public p(@NonNull MapView mapView, @NonNull com.mapbox.mapboxsdk.maps.n nVar, @NonNull Style style) {
        this(mapView, nVar, style, null, null);
    }

    @Override // com.mapbox.mapboxsdk.t.a.b
    String a() {
        return "id";
    }

    @Override // com.mapbox.mapboxsdk.t.a.b
    public void a(@NonNull com.mapbox.mapboxsdk.u.a.a aVar) {
        this.f16289e = aVar;
        ((LineLayer) this.f16294j).a(this.f16289e);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.mapbox.mapboxsdk.t.a.b
    protected void b(@NonNull String str) {
        char c2;
        switch (str.hashCode()) {
            case -1842775392:
                if (str.equals("line-blur")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -1842534557:
                if (str.equals("line-join")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1763440266:
                if (str.equals("line-gap-width")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -1290458038:
                if (str.equals("line-color")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1272173907:
                if (str.equals("line-width")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -1101375694:
                if (str.equals("line-opacity")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1014430580:
                if (str.equals("line-offset")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -625259849:
                if (str.equals("line-pattern")) {
                    c2 = 7;
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
                ((LineLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.y(com.mapbox.mapboxsdk.u.a.a.a("line-join")));
                return;
            case 1:
                ((LineLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.A(com.mapbox.mapboxsdk.u.a.a.a("line-opacity")));
                return;
            case 2:
                ((LineLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.w(com.mapbox.mapboxsdk.u.a.a.a("line-color")));
                return;
            case 3:
                ((LineLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.C(com.mapbox.mapboxsdk.u.a.a.a("line-width")));
                return;
            case 4:
                ((LineLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.x(com.mapbox.mapboxsdk.u.a.a.a("line-gap-width")));
                return;
            case 5:
                ((LineLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.z(com.mapbox.mapboxsdk.u.a.a.a("line-offset")));
                return;
            case 6:
                ((LineLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.v(com.mapbox.mapboxsdk.u.a.a.a("line-blur")));
                return;
            case 7:
                ((LineLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.B(com.mapbox.mapboxsdk.u.a.a.a("line-pattern")));
                return;
            default:
                return;
        }
    }

    @Override // com.mapbox.mapboxsdk.t.a.b
    void c() {
        this.f16287c.put("line-join", false);
        this.f16287c.put("line-opacity", false);
        this.f16287c.put("line-color", false);
        this.f16287c.put("line-width", false);
        this.f16287c.put("line-gap-width", false);
        this.f16287c.put("line-offset", false);
        this.f16287c.put("line-blur", false);
        this.f16287c.put("line-pattern", false);
    }

    @UiThread
    public p(@NonNull MapView mapView, @NonNull com.mapbox.mapboxsdk.maps.n nVar, @NonNull Style style, @Nullable String str, @Nullable com.mapbox.mapboxsdk.style.sources.a aVar) {
        this(mapView, nVar, style, new o(), str, aVar, i.a(mapView, nVar));
    }

    @VisibleForTesting
    p(@NonNull MapView mapView, @NonNull com.mapbox.mapboxsdk.maps.n nVar, @NonNull Style style, @NonNull h<LineLayer> hVar, @Nullable String str, @Nullable com.mapbox.mapboxsdk.style.sources.a aVar, i iVar) {
        super(mapView, nVar, style, hVar, iVar, str, aVar);
    }
}
