package com.mapbox.mapboxsdk.s.b;

import com.mapbox.mapboxsdk.c;

/* compiled from: LibraryLoaderProviderImpl.java */
/* loaded from: classes2.dex */
public class a implements c {

    /* compiled from: LibraryLoaderProviderImpl.java */
    /* loaded from: classes2.dex */
    private static class b extends com.mapbox.mapboxsdk.b {
        private b() {
        }

        @Override // com.mapbox.mapboxsdk.b
        public void a(String str) {
            System.loadLibrary(str);
        }
    }

    @Override // com.mapbox.mapboxsdk.c
    public com.mapbox.mapboxsdk.b a() {
        return new b();
    }
}
