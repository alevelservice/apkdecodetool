package com.mapbox.mapboxsdk.t.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.style.layers.SymbolLayer;

/* compiled from: SymbolManager.java */
/* loaded from: classes2.dex */
public class b0 extends b<SymbolLayer, z, c0, Object, x, Object> {
    @UiThread
    public b0(@NonNull MapView mapView, @NonNull com.mapbox.mapboxsdk.maps.n nVar, @NonNull Style style) {
        this(mapView, nVar, style, null, null);
    }

    @Override // com.mapbox.mapboxsdk.t.a.b
    String a() {
        return "id";
    }

    public void a(Boolean bool) {
        com.mapbox.mapboxsdk.style.layers.d<Boolean> a2 = com.mapbox.mapboxsdk.style.layers.c.a(bool);
        this.f16288d.put("icon-allow-overlap", a2);
        ((SymbolLayer) this.f16294j).a(a2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.mapbox.mapboxsdk.t.a.b
    protected void b(@NonNull String str) {
        char c2;
        switch (str.hashCode()) {
            case -2146810373:
                if (str.equals("text-rotate")) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case -2041493401:
                if (str.equals("icon-offset")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -1946894033:
                if (str.equals("icon-rotate")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -1717422239:
                if (str.equals("text-radial-offset")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case -1708933018:
                if (str.equals("icon-halo-color")) {
                    c2 = 19;
                    break;
                }
                c2 = 65535;
                break;
            case -1690648887:
                if (str.equals("icon-halo-width")) {
                    c2 = 20;
                    break;
                }
                c2 = 65535;
                break;
            case -1600683761:
                if (str.equals("icon-color")) {
                    c2 = 18;
                    break;
                }
                c2 = 65535;
                break;
            case -1595213049:
                if (str.equals("icon-image")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1436636971:
                if (str.equals("icon-size")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1336352187:
                if (str.equals("symbol-sort-key")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1262567732:
                if (str.equals("text-transform")) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case -1084154641:
                if (str.equals("text-font")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -1083772767:
                if (str.equals("text-size")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case -888013006:
                if (str.equals("text-halo-color")) {
                    c2 = 24;
                    break;
                }
                c2 = 65535;
                break;
            case -886443260:
                if (str.equals("icon-halo-blur")) {
                    c2 = 21;
                    break;
                }
                c2 = 65535;
                break;
            case -869728875:
                if (str.equals("text-halo-width")) {
                    c2 = 25;
                    break;
                }
                c2 = 65535;
                break;
            case -483024021:
                if (str.equals("text-opacity")) {
                    c2 = 22;
                    break;
                }
                c2 = 65535;
                break;
            case -465299984:
                if (str.equals("text-justify")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case 317300605:
                if (str.equals("text-max-width")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case 428355132:
                if (str.equals("text-letter-spacing")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case 525511352:
                if (str.equals("text-halo-blur")) {
                    c2 = 26;
                    break;
                }
                c2 = 65535;
                break;
            case 748171971:
                if (str.equals("text-color")) {
                    c2 = 23;
                    break;
                }
                c2 = 65535;
                break;
            case 750756954:
                if (str.equals("text-field")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 1419415223:
                if (str.equals("icon-opacity")) {
                    c2 = 17;
                    break;
                }
                c2 = 65535;
                break;
            case 1660037973:
                if (str.equals("text-anchor")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case 1859954313:
                if (str.equals("icon-anchor")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 2053557555:
                if (str.equals("text-offset")) {
                    c2 = 16;
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
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.D(com.mapbox.mapboxsdk.u.a.a.a("symbol-sort-key")));
                return;
            case 1:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.u(com.mapbox.mapboxsdk.u.a.a.a("icon-size")));
                return;
            case 2:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.q(com.mapbox.mapboxsdk.u.a.a.a("icon-image")));
                return;
            case 3:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.t(com.mapbox.mapboxsdk.u.a.a.a("icon-rotate")));
                return;
            case 4:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.r(com.mapbox.mapboxsdk.u.a.a.a("icon-offset")));
                return;
            case 5:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.l(com.mapbox.mapboxsdk.u.a.a.a("icon-anchor")));
                return;
            case 6:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.G(com.mapbox.mapboxsdk.u.a.a.a("text-field")));
                return;
            case 7:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.H(com.mapbox.mapboxsdk.u.a.a.a("text-font")));
                return;
            case '\b':
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.S(com.mapbox.mapboxsdk.u.a.a.a("text-size")));
                return;
            case '\t':
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.N(com.mapbox.mapboxsdk.u.a.a.a("text-max-width")));
                return;
            case '\n':
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.M(com.mapbox.mapboxsdk.u.a.a.a("text-letter-spacing")));
                return;
            case 11:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.L(com.mapbox.mapboxsdk.u.a.a.a("text-justify")));
                return;
            case '\f':
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.Q(com.mapbox.mapboxsdk.u.a.a.a("text-radial-offset")));
                return;
            case '\r':
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.E(com.mapbox.mapboxsdk.u.a.a.a("text-anchor")));
                return;
            case 14:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.R(com.mapbox.mapboxsdk.u.a.a.a("text-rotate")));
                return;
            case 15:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.T(com.mapbox.mapboxsdk.u.a.a.a("text-transform")));
                return;
            case 16:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.O(com.mapbox.mapboxsdk.u.a.a.a("text-offset")));
                return;
            case 17:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.s(com.mapbox.mapboxsdk.u.a.a.a("icon-opacity")));
                return;
            case 18:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.m(com.mapbox.mapboxsdk.u.a.a.a("icon-color")));
                return;
            case 19:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.o(com.mapbox.mapboxsdk.u.a.a.a("icon-halo-color")));
                return;
            case 20:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.p(com.mapbox.mapboxsdk.u.a.a.a("icon-halo-width")));
                return;
            case 21:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.n(com.mapbox.mapboxsdk.u.a.a.a("icon-halo-blur")));
                return;
            case 22:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.P(com.mapbox.mapboxsdk.u.a.a.a("text-opacity")));
                return;
            case 23:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.F(com.mapbox.mapboxsdk.u.a.a.a("text-color")));
                return;
            case 24:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.J(com.mapbox.mapboxsdk.u.a.a.a("text-halo-color")));
                return;
            case 25:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.K(com.mapbox.mapboxsdk.u.a.a.a("text-halo-width")));
                return;
            case 26:
                ((SymbolLayer) this.f16294j).a(com.mapbox.mapboxsdk.style.layers.c.I(com.mapbox.mapboxsdk.u.a.a.a("text-halo-blur")));
                return;
            default:
                return;
        }
    }

    @Override // com.mapbox.mapboxsdk.t.a.b
    void c() {
        this.f16287c.put("symbol-sort-key", false);
        this.f16287c.put("icon-size", false);
        this.f16287c.put("icon-image", false);
        this.f16287c.put("icon-rotate", false);
        this.f16287c.put("icon-offset", false);
        this.f16287c.put("icon-anchor", false);
        this.f16287c.put("text-field", false);
        this.f16287c.put("text-font", false);
        this.f16287c.put("text-size", false);
        this.f16287c.put("text-max-width", false);
        this.f16287c.put("text-letter-spacing", false);
        this.f16287c.put("text-justify", false);
        this.f16287c.put("text-radial-offset", false);
        this.f16287c.put("text-anchor", false);
        this.f16287c.put("text-rotate", false);
        this.f16287c.put("text-transform", false);
        this.f16287c.put("text-offset", false);
        this.f16287c.put("icon-opacity", false);
        this.f16287c.put("icon-color", false);
        this.f16287c.put("icon-halo-color", false);
        this.f16287c.put("icon-halo-width", false);
        this.f16287c.put("icon-halo-blur", false);
        this.f16287c.put("text-opacity", false);
        this.f16287c.put("text-color", false);
        this.f16287c.put("text-halo-color", false);
        this.f16287c.put("text-halo-width", false);
        this.f16287c.put("text-halo-blur", false);
    }

    public void d(Boolean bool) {
        com.mapbox.mapboxsdk.style.layers.d<Boolean> d2 = com.mapbox.mapboxsdk.style.layers.c.d(bool);
        this.f16288d.put("text-ignore-placement", d2);
        ((SymbolLayer) this.f16294j).a(d2);
    }

    @UiThread
    public b0(@NonNull MapView mapView, @NonNull com.mapbox.mapboxsdk.maps.n nVar, @NonNull Style style, @Nullable String str, @Nullable com.mapbox.mapboxsdk.style.sources.a aVar) {
        this(mapView, nVar, style, new a0(), str, aVar, i.a(mapView, nVar));
    }

    @VisibleForTesting
    b0(@NonNull MapView mapView, @NonNull com.mapbox.mapboxsdk.maps.n nVar, @NonNull Style style, @NonNull h<SymbolLayer> hVar, @Nullable String str, @Nullable com.mapbox.mapboxsdk.style.sources.a aVar, i iVar) {
        super(mapView, nVar, style, hVar, iVar, str, aVar);
    }

    @Override // com.mapbox.mapboxsdk.t.a.b
    public void a(@NonNull com.mapbox.mapboxsdk.u.a.a aVar) {
        this.f16289e = aVar;
        ((SymbolLayer) this.f16294j).a(this.f16289e);
    }

    public void c(Boolean bool) {
        com.mapbox.mapboxsdk.style.layers.d<Boolean> c2 = com.mapbox.mapboxsdk.style.layers.c.c(bool);
        this.f16288d.put("text-allow-overlap", c2);
        ((SymbolLayer) this.f16294j).a(c2);
    }

    public void b(Boolean bool) {
        com.mapbox.mapboxsdk.style.layers.d<Boolean> b2 = com.mapbox.mapboxsdk.style.layers.c.b(bool);
        this.f16288d.put("icon-ignore-placement", b2);
        ((SymbolLayer) this.f16294j).a(b2);
    }
}
