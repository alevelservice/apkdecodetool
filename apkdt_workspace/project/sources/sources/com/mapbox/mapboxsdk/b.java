package com.mapbox.mapboxsdk;

import com.mapbox.mapboxsdk.log.Logger;

/* compiled from: LibraryLoader.java */
/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    private static final b f15729a = Mapbox.getModuleProvider().c().a();

    /* renamed from: b, reason: collision with root package name */
    private static volatile b f15730b = f15729a;

    /* renamed from: c, reason: collision with root package name */
    private static boolean f15731c;

    public static synchronized void a() {
        synchronized (b.class) {
            try {
                if (!f15731c) {
                    f15731c = true;
                    f15730b.a("mapbox-gl");
                }
            } catch (UnsatisfiedLinkError e2) {
                f15731c = false;
                Logger.e("Mbgl-LibraryLoader", "Failed to load native shared library.", e2);
                d.a("Failed to load native shared library.", e2);
            }
        }
    }

    public abstract void a(String str);
}
