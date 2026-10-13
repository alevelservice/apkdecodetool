package com.google.android.gms.internal.clearcut;

import java.lang.reflect.Field;
import java.util.Arrays;

/* loaded from: classes.dex */
final class x2 {
    private int A;
    private int B;
    private Field C;
    private Object D;
    private Object E;
    private Object F;

    /* renamed from: a, reason: collision with root package name */
    private final y2 f11599a;

    /* renamed from: b, reason: collision with root package name */
    private final Object[] f11600b;

    /* renamed from: c, reason: collision with root package name */
    private Class<?> f11601c;

    /* renamed from: d, reason: collision with root package name */
    private final int f11602d;

    /* renamed from: e, reason: collision with root package name */
    private final int f11603e;

    /* renamed from: f, reason: collision with root package name */
    private final int f11604f;

    /* renamed from: g, reason: collision with root package name */
    private final int f11605g;

    /* renamed from: h, reason: collision with root package name */
    private final int f11606h;

    /* renamed from: i, reason: collision with root package name */
    private final int f11607i;

    /* renamed from: j, reason: collision with root package name */
    private final int f11608j;

    /* renamed from: k, reason: collision with root package name */
    private final int f11609k;

    /* renamed from: l, reason: collision with root package name */
    private final int f11610l;
    private final int m;
    private final int[] n;
    private int o;
    private int p;
    private int q = Integer.MAX_VALUE;
    private int r = e.b.b.a.a.a.c.ALL_INT;
    private int s = 0;
    private int t = 0;
    private int u = 0;
    private int v = 0;
    private int w = 0;
    private int x;
    private int y;
    private int z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x2(Class<?> cls, String str, Object[] objArr) {
        this.f11601c = cls;
        this.f11599a = new y2(str);
        this.f11600b = objArr;
        this.f11602d = this.f11599a.b();
        this.f11603e = this.f11599a.b();
        if (this.f11603e == 0) {
            this.f11604f = 0;
            this.f11605g = 0;
            this.f11606h = 0;
            this.f11607i = 0;
            this.f11608j = 0;
            this.f11610l = 0;
            this.f11609k = 0;
            this.m = 0;
            this.n = null;
            return;
        }
        this.f11604f = this.f11599a.b();
        this.f11605g = this.f11599a.b();
        this.f11606h = this.f11599a.b();
        this.f11607i = this.f11599a.b();
        this.f11610l = this.f11599a.b();
        this.f11609k = this.f11599a.b();
        this.f11608j = this.f11599a.b();
        this.m = this.f11599a.b();
        int b2 = this.f11599a.b();
        this.n = b2 != 0 ? new int[b2] : null;
        this.o = (this.f11604f << 1) + this.f11605g;
    }

    private static Field a(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    private final Object p() {
        Object[] objArr = this.f11600b;
        int i2 = this.o;
        this.o = i2 + 1;
        return objArr[i2];
    }

    private final boolean q() {
        return (this.f11602d & 1) == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d0, code lost:
    
        if (q() != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d2, code lost:
    
        r5.E = p();
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x015e, code lost:
    
        if (((r5.y & 2048) != 0) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0165, code lost:
    
        if (q() != false) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a() {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.x2.a():boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b() {
        return this.x;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int c() {
        return this.z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d() {
        return this.z > y0.MAP.id();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Field e() {
        int i2 = this.A << 1;
        Object obj = this.f11600b[i2];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field a2 = a(this.f11601c, (String) obj);
        this.f11600b[i2] = a2;
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Field f() {
        int i2 = (this.A << 1) + 1;
        Object obj = this.f11600b[i2];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field a2 = a(this.f11601c, (String) obj);
        this.f11600b[i2] = a2;
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Field g() {
        return this.C;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean h() {
        return q() && this.z <= y0.GROUP.id();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Field i() {
        int i2 = (this.f11604f << 1) + (this.B / 32);
        Object obj = this.f11600b[i2];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field a2 = a(this.f11601c, (String) obj);
        this.f11600b[i2] = a2;
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int j() {
        return this.B % 32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean k() {
        return (this.y & 256) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean l() {
        return (this.y & 512) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object m() {
        return this.D;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object n() {
        return this.E;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object o() {
        return this.F;
    }
}
