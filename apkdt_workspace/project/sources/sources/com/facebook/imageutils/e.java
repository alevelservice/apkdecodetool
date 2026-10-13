package com.facebook.imageutils;

import java.io.InputStream;

/* compiled from: TiffUtil.java */
/* loaded from: classes.dex */
class e {

    /* renamed from: a, reason: collision with root package name */
    private static final Class<?> f4153a = e.class;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TiffUtil.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        boolean f4154a;

        /* renamed from: b, reason: collision with root package name */
        int f4155b;

        /* renamed from: c, reason: collision with root package name */
        int f4156c;

        private b() {
        }
    }

    e() {
    }

    public static int a(int i2) {
        if (i2 == 0 || i2 == 1) {
            return 0;
        }
        if (i2 == 3) {
            return 180;
        }
        if (i2 != 6) {
            return i2 != 8 ? 0 : 270;
        }
        return 90;
    }

    public static int a(InputStream inputStream, int i2) {
        b bVar = new b();
        int a2 = a(inputStream, i2, bVar);
        int i3 = bVar.f4156c - 8;
        if (a2 == 0 || i3 > a2) {
            return 0;
        }
        inputStream.skip(i3);
        return a(inputStream, a(inputStream, a2 - i3, bVar.f4154a, 274), bVar.f4154a);
    }

    private static int a(InputStream inputStream, int i2, b bVar) {
        if (i2 <= 8) {
            return 0;
        }
        bVar.f4155b = d.a(inputStream, 4, false);
        int i3 = i2 - 4;
        int i4 = bVar.f4155b;
        if (i4 != 1229531648 && i4 != 1296891946) {
            e.f.c.d.a.a(f4153a, "Invalid TIFF header");
            return 0;
        }
        bVar.f4154a = bVar.f4155b == 1229531648;
        bVar.f4156c = d.a(inputStream, 4, bVar.f4154a);
        int i5 = i3 - 4;
        int i6 = bVar.f4156c;
        if (i6 >= 8 && i6 - 8 <= i5) {
            return i5;
        }
        e.f.c.d.a.a(f4153a, "Invalid offset");
        return 0;
    }

    private static int a(InputStream inputStream, int i2, boolean z, int i3) {
        if (i2 < 14) {
            return 0;
        }
        int a2 = d.a(inputStream, 2, z);
        int i4 = i2 - 2;
        while (true) {
            int i5 = a2 - 1;
            if (a2 <= 0 || i4 < 12) {
                break;
            }
            int i6 = i4 - 2;
            if (d.a(inputStream, 2, z) == i3) {
                return i6;
            }
            inputStream.skip(10L);
            i4 = i6 - 10;
            a2 = i5;
        }
        return 0;
    }

    private static int a(InputStream inputStream, int i2, boolean z) {
        if (i2 < 10 || d.a(inputStream, 2, z) != 3 || d.a(inputStream, 4, z) != 1) {
            return 0;
        }
        int a2 = d.a(inputStream, 2, z);
        d.a(inputStream, 2, z);
        return a2;
    }
}
