package com.mapbox.mapboxsdk.maps;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IconManager.java */
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private final Map<com.mapbox.mapboxsdk.annotations.d, Integer> f16038a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private q f16039b;

    /* renamed from: c, reason: collision with root package name */
    private int f16040c;

    /* renamed from: d, reason: collision with root package name */
    private int f16041d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(q qVar) {
        this.f16039b = qVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(@NonNull com.mapbox.mapboxsdk.annotations.d dVar) {
        double f2 = this.f16039b.f(dVar.b());
        double pixelRatio = this.f16039b.getPixelRatio();
        Double.isNaN(pixelRatio);
        return (int) (f2 * pixelRatio);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f16040c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        Iterator<com.mapbox.mapboxsdk.annotations.d> it = this.f16038a.keySet().iterator();
        while (it.hasNext()) {
            b(it.next());
        }
    }

    private void b(com.mapbox.mapboxsdk.annotations.d dVar) {
        Bitmap a2 = dVar.a();
        this.f16039b.a(dVar.b(), a2.getWidth(), a2.getHeight(), dVar.c(), dVar.d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.f16041d;
    }
}
