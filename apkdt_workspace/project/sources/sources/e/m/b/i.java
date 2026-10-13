package e.m.b;

import android.graphics.Point;
import com.mapbox.geojson.Polygon;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.log.Logger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Convert.java */
/* loaded from: classes2.dex */
class i {
    private static boolean a(Object obj) {
        return ((Boolean) obj).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CameraPosition b(Object obj) {
        Map<?, ?> l2 = l(obj);
        CameraPosition.b bVar = new CameraPosition.b();
        bVar.a(d(l2.get("bearing")));
        bVar.a(g(l2.get("target")));
        bVar.b(d(l2.get("tilt")));
        bVar.c(d(l2.get("zoom")));
        return bVar.a();
    }

    private static double c(Object obj) {
        return ((Number) obj).doubleValue();
    }

    private static float d(Object obj) {
        return ((Number) obj).floatValue();
    }

    private static Float e(Object obj) {
        if (obj == null) {
            return null;
        }
        return Float.valueOf(d(obj));
    }

    static int f(Object obj) {
        return ((Number) obj).intValue();
    }

    private static LatLng g(Object obj) {
        List<?> k2 = k(obj);
        return new LatLng(c(k2.get(0)), c(k2.get(1)));
    }

    private static LatLngBounds h(Object obj) {
        if (obj == null) {
            return null;
        }
        List<?> k2 = k(obj);
        List<LatLng> asList = Arrays.asList(g(k2.get(0)), g(k2.get(1)));
        LatLngBounds.b bVar = new LatLngBounds.b();
        bVar.a(asList);
        return bVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<LatLng> i(Object obj) {
        if (obj == null) {
            return null;
        }
        List<?> k2 = k(obj);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < k2.size(); i2++) {
            List<?> k3 = k(k2.get(i2));
            arrayList.add(new LatLng(c(k3.get(0)), c(k3.get(1))));
        }
        return arrayList;
    }

    private static List<List<LatLng>> j(Object obj) {
        if (obj == null) {
            return null;
        }
        List<?> k2 = k(obj);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < k2.size(); i2++) {
            arrayList.add(i(k2.get(i2)));
        }
        return arrayList;
    }

    private static List<?> k(Object obj) {
        return (List) obj;
    }

    static Map<?, ?> l(Object obj) {
        return (Map) obj;
    }

    private static String m(Object obj) {
        return (String) obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x002c, code lost:
    
        if (r2.equals("newCameraPosition") != false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mapbox.mapboxsdk.camera.a a(java.lang.Object r9, com.mapbox.mapboxsdk.maps.n r10, float r11) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.m.b.i.a(java.lang.Object, com.mapbox.mapboxsdk.maps.n, float):com.mapbox.mapboxsdk.camera.a");
    }

    private static Point c(Object obj, float f2) {
        List<?> k2 = k(obj);
        return new Point(b(k2.get(0), f2), b(k2.get(1), f2));
    }

    static int b(Object obj, float f2) {
        return (int) a(obj, f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(CameraPosition cameraPosition) {
        if (cameraPosition == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("bearing", Double.valueOf(cameraPosition.bearing));
        hashMap.put("target", a(cameraPosition.target));
        hashMap.put("tilt", Double.valueOf(cameraPosition.tilt));
        hashMap.put("zoom", Double.valueOf(cameraPosition.zoom));
        return hashMap;
    }

    private static Object a(LatLng latLng) {
        return Arrays.asList(Double.valueOf(latLng.a()), Double.valueOf(latLng.b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Polygon a(List<List<LatLng>> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (List<LatLng> list2 : list) {
            ArrayList arrayList2 = new ArrayList(list2.size());
            for (LatLng latLng : list2) {
                arrayList2.add(com.mapbox.geojson.Point.fromLngLat(latLng.b(), latLng.a()));
            }
            arrayList.add(arrayList2);
        }
        return Polygon.fromLngLats(arrayList);
    }

    private static float a(Object obj, float f2) {
        return d(obj) * f2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, t tVar) {
        Map<?, ?> l2 = l(obj);
        Object obj2 = l2.get("cameraTargetBounds");
        if (obj2 != null) {
            tVar.a(h(k(obj2).get(0)));
        }
        Object obj3 = l2.get("compassEnabled");
        if (obj3 != null) {
            tVar.a(a(obj3));
        }
        Object obj4 = l2.get("styleString");
        if (obj4 != null) {
            tVar.a(m(obj4));
        }
        Object obj5 = l2.get("minMaxZoomPreference");
        if (obj5 != null) {
            List<?> k2 = k(obj5);
            tVar.a(e(k2.get(0)), e(k2.get(1)));
        }
        Object obj6 = l2.get("rotateGesturesEnabled");
        if (obj6 != null) {
            tVar.e(a(obj6));
        }
        Object obj7 = l2.get("scrollGesturesEnabled");
        if (obj7 != null) {
            tVar.f(a(obj7));
        }
        Object obj8 = l2.get("tiltGesturesEnabled");
        if (obj8 != null) {
            tVar.c(a(obj8));
        }
        Object obj9 = l2.get("trackCameraPosition");
        if (obj9 != null) {
            tVar.b(a(obj9));
        }
        Object obj10 = l2.get("zoomGesturesEnabled");
        if (obj10 != null) {
            tVar.d(a(obj10));
        }
        Object obj11 = l2.get("myLocationEnabled");
        if (obj11 != null) {
            tVar.g(a(obj11));
        }
        Object obj12 = l2.get("myLocationTrackingMode");
        if (obj12 != null) {
            tVar.e(f(obj12));
        }
        Object obj13 = l2.get("myLocationRenderMode");
        if (obj13 != null) {
            tVar.b(f(obj13));
        }
        Object obj14 = l2.get("logoViewMargins");
        if (obj14 != null) {
            List<?> k3 = k(obj14);
            tVar.c(f(k3.get(0)), f(k3.get(1)));
        }
        Object obj15 = l2.get("compassViewPosition");
        if (obj15 != null) {
            tVar.d(f(obj15));
        }
        Object obj16 = l2.get("compassViewMargins");
        if (obj16 != null) {
            List<?> k4 = k(obj16);
            tVar.b(f(k4.get(0)), f(k4.get(1)));
        }
        Object obj17 = l2.get("attributionButtonMargins");
        if (obj17 != null) {
            List<?> k5 = k(obj17);
            tVar.a(f(k5.get(0)), f(k5.get(1)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, b0 b0Var) {
        Map<?, ?> l2 = l(obj);
        Object obj2 = l2.get("iconSize");
        if (obj2 != null) {
            b0Var.i(d(obj2));
        }
        Object obj3 = l2.get("iconImage");
        if (obj3 != null) {
            b0Var.g(m(obj3));
        }
        Object obj4 = l2.get("iconRotate");
        if (obj4 != null) {
            b0Var.k(d(obj4));
        }
        Object obj5 = l2.get("iconOffset");
        if (obj5 != null) {
            b0Var.a(new float[]{d(k(obj5).get(0)), d(k(obj5).get(1))});
        }
        Object obj6 = l2.get("iconAnchor");
        if (obj6 != null) {
            b0Var.h(m(obj6));
        }
        ArrayList arrayList = (ArrayList) l2.get("fontNames");
        if (arrayList != null) {
            b0Var.a((String[]) arrayList.toArray(new String[0]));
        }
        Object obj7 = l2.get("textField");
        if (obj7 != null) {
            b0Var.j(m(obj7));
        }
        Object obj8 = l2.get("textSize");
        if (obj8 != null) {
            b0Var.d(d(obj8));
        }
        Object obj9 = l2.get("textMaxWidth");
        if (obj9 != null) {
            b0Var.b(d(obj9));
        }
        Object obj10 = l2.get("textLetterSpacing");
        if (obj10 != null) {
            b0Var.m(d(obj10));
        }
        Object obj11 = l2.get("textJustify");
        if (obj11 != null) {
            b0Var.a(m(obj11));
        }
        Object obj12 = l2.get("textAnchor");
        if (obj12 != null) {
            b0Var.c(m(obj12));
        }
        Object obj13 = l2.get("textRotate");
        if (obj13 != null) {
            b0Var.c(d(obj13));
        }
        Object obj14 = l2.get("textTransform");
        if (obj14 != null) {
            b0Var.d(m(obj14));
        }
        Object obj15 = l2.get("textOffset");
        if (obj15 != null) {
            b0Var.b(new float[]{d(k(obj15).get(0)), d(k(obj15).get(1))});
        }
        Object obj16 = l2.get("iconOpacity");
        if (obj16 != null) {
            b0Var.j(d(obj16));
        }
        Object obj17 = l2.get("iconColor");
        if (obj17 != null) {
            b0Var.e(m(obj17));
        }
        Object obj18 = l2.get("iconHaloColor");
        if (obj18 != null) {
            b0Var.b(m(obj18));
        }
        Object obj19 = l2.get("iconHaloWidth");
        if (obj19 != null) {
            b0Var.l(d(obj19));
        }
        Object obj20 = l2.get("iconHaloBlur");
        if (obj20 != null) {
            b0Var.f(d(obj20));
        }
        Object obj21 = l2.get("textOpacity");
        if (obj21 != null) {
            b0Var.g(d(obj21));
        }
        Object obj22 = l2.get("textColor");
        if (obj22 != null) {
            b0Var.f(m(obj22));
        }
        Object obj23 = l2.get("textHaloColor");
        if (obj23 != null) {
            b0Var.i(m(obj23));
        }
        Object obj24 = l2.get("textHaloWidth");
        if (obj24 != null) {
            b0Var.e(d(obj24));
        }
        Object obj25 = l2.get("textHaloBlur");
        if (obj25 != null) {
            b0Var.a(d(obj25));
        }
        Object obj26 = l2.get("geometry");
        if (obj26 != null) {
            b0Var.a(g(obj26));
        }
        Object obj27 = l2.get("zIndex");
        if (obj27 != null) {
            b0Var.h(d(obj27));
        }
        Object obj28 = l2.get("draggable");
        if (obj28 != null) {
            b0Var.a(a(obj28));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, h hVar) {
        Map<?, ?> l2 = l(obj);
        Object obj2 = l2.get("circleRadius");
        if (obj2 != null) {
            hVar.a(d(obj2));
        }
        Object obj3 = l2.get("circleColor");
        if (obj3 != null) {
            hVar.a(m(obj3));
        }
        Object obj4 = l2.get("circleBlur");
        if (obj4 != null) {
            hVar.e(d(obj4));
        }
        Object obj5 = l2.get("circleOpacity");
        if (obj5 != null) {
            hVar.b(d(obj5));
        }
        Object obj6 = l2.get("circleStrokeWidth");
        if (obj6 != null) {
            hVar.c(d(obj6));
        }
        Object obj7 = l2.get("circleStrokeColor");
        if (obj7 != null) {
            hVar.b(m(obj7));
        }
        Object obj8 = l2.get("circleStrokeOpacity");
        if (obj8 != null) {
            hVar.d(d(obj8));
        }
        Object obj9 = l2.get("geometry");
        if (obj9 != null) {
            hVar.a(g(obj9));
        }
        Object obj10 = l2.get("draggable");
        if (obj10 != null) {
            hVar.a(a(obj10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, p pVar) {
        Map<?, ?> l2 = l(obj);
        Object obj2 = l2.get("lineJoin");
        if (obj2 != null) {
            Logger.e("Convert", "setLineJoin" + obj2);
            pVar.a(m(obj2));
        }
        Object obj3 = l2.get("lineOpacity");
        if (obj3 != null) {
            Logger.e("Convert", "setLineOpacity" + obj3);
            pVar.c(d(obj3));
        }
        Object obj4 = l2.get("lineColor");
        if (obj4 != null) {
            Logger.e("Convert", "setLineColor" + obj4);
            pVar.c(m(obj4));
        }
        Object obj5 = l2.get("lineWidth");
        if (obj5 != null) {
            Logger.e("Convert", "setLineWidth" + obj5);
            pVar.b(d(obj5));
        }
        Object obj6 = l2.get("lineGapWidth");
        if (obj6 != null) {
            Logger.e("Convert", "setLineGapWidth" + obj6);
            pVar.a(d(obj6));
        }
        Object obj7 = l2.get("lineOffset");
        if (obj7 != null) {
            Logger.e("Convert", "setLineOffset" + obj7);
            pVar.d(d(obj7));
        }
        Object obj8 = l2.get("lineBlur");
        if (obj8 != null) {
            Logger.e("Convert", "setLineBlur" + obj8);
            pVar.e(d(obj8));
        }
        Object obj9 = l2.get("linePattern");
        if (obj9 != null) {
            Logger.e("Convert", "setLinePattern" + obj9);
            pVar.b(m(obj9));
        }
        Object obj10 = l2.get("geometry");
        if (obj10 != null) {
            Logger.e("Convert", "SetGeometry");
            pVar.a(i(obj10));
        }
        Object obj11 = l2.get("draggable");
        if (obj11 != null) {
            Logger.e("Convert", "SetDraggable");
            pVar.a(a(obj11));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, l lVar) {
        Map<?, ?> l2 = l(obj);
        Object obj2 = l2.get("fillOpacity");
        if (obj2 != null) {
            lVar.a(d(obj2));
        }
        Object obj3 = l2.get("fillColor");
        if (obj3 != null) {
            lVar.c(m(obj3));
        }
        Object obj4 = l2.get("fillOutlineColor");
        if (obj4 != null) {
            lVar.a(m(obj4));
        }
        Object obj5 = l2.get("fillPattern");
        if (obj5 != null) {
            lVar.b(m(obj5));
        }
        Object obj6 = l2.get("geometry");
        if (obj6 != null) {
            lVar.a(j(obj6));
        }
        Object obj7 = l2.get("draggable");
        if (obj7 != null) {
            lVar.a(a(obj7));
        }
    }
}
