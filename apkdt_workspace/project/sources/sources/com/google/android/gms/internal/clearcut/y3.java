package com.google.android.gms.internal.clearcut;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class y3 {

    /* renamed from: a, reason: collision with root package name */
    private static final Logger f11626a = Logger.getLogger(y3.class.getName());

    /* renamed from: b, reason: collision with root package name */
    private static final Unsafe f11627b = d();

    /* renamed from: c, reason: collision with root package name */
    private static final Class<?> f11628c = t.b();

    /* renamed from: d, reason: collision with root package name */
    private static final boolean f11629d = c(Long.TYPE);

    /* renamed from: e, reason: collision with root package name */
    private static final boolean f11630e = c(Integer.TYPE);

    /* renamed from: f, reason: collision with root package name */
    private static final d f11631f;

    /* renamed from: g, reason: collision with root package name */
    private static final boolean f11632g;

    /* renamed from: h, reason: collision with root package name */
    private static final boolean f11633h;

    /* renamed from: i, reason: collision with root package name */
    private static final long f11634i;

    /* renamed from: j, reason: collision with root package name */
    private static final long f11635j;

    /* renamed from: k, reason: collision with root package name */
    private static final boolean f11636k;

    /* loaded from: classes.dex */
    static final class a extends d {
        a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(long j2, byte b2) {
            Memory.pokeByte((int) (j2 & (-1)), b2);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(Object obj, long j2, byte b2) {
            if (y3.f11636k) {
                y3.a(obj, j2, b2);
            } else {
                y3.b(obj, j2, b2);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(Object obj, long j2, double d2) {
            a(obj, j2, Double.doubleToLongBits(d2));
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(Object obj, long j2, float f2) {
            a(obj, j2, Float.floatToIntBits(f2));
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(Object obj, long j2, boolean z) {
            if (y3.f11636k) {
                y3.b(obj, j2, z);
            } else {
                y3.c(obj, j2, z);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(byte[] bArr, long j2, long j3, long j4) {
            Memory.pokeByteArray((int) (j3 & (-1)), bArr, (int) j2, (int) j4);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final boolean c(Object obj, long j2) {
            return y3.f11636k ? y3.i(obj, j2) : y3.j(obj, j2);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final float d(Object obj, long j2) {
            return Float.intBitsToFloat(a(obj, j2));
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final double e(Object obj, long j2) {
            return Double.longBitsToDouble(b(obj, j2));
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final byte f(Object obj, long j2) {
            return y3.f11636k ? y3.g(obj, j2) : y3.h(obj, j2);
        }
    }

    /* loaded from: classes.dex */
    static final class b extends d {
        b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(long j2, byte b2) {
            Memory.pokeByte(j2, b2);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(Object obj, long j2, byte b2) {
            if (y3.f11636k) {
                y3.a(obj, j2, b2);
            } else {
                y3.b(obj, j2, b2);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(Object obj, long j2, double d2) {
            a(obj, j2, Double.doubleToLongBits(d2));
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(Object obj, long j2, float f2) {
            a(obj, j2, Float.floatToIntBits(f2));
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(Object obj, long j2, boolean z) {
            if (y3.f11636k) {
                y3.b(obj, j2, z);
            } else {
                y3.c(obj, j2, z);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(byte[] bArr, long j2, long j3, long j4) {
            Memory.pokeByteArray(j3, bArr, (int) j2, (int) j4);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final boolean c(Object obj, long j2) {
            return y3.f11636k ? y3.i(obj, j2) : y3.j(obj, j2);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final float d(Object obj, long j2) {
            return Float.intBitsToFloat(a(obj, j2));
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final double e(Object obj, long j2) {
            return Double.longBitsToDouble(b(obj, j2));
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final byte f(Object obj, long j2) {
            return y3.f11636k ? y3.g(obj, j2) : y3.h(obj, j2);
        }
    }

    /* loaded from: classes.dex */
    static final class c extends d {
        c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(long j2, byte b2) {
            this.f11637a.putByte(j2, b2);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(Object obj, long j2, byte b2) {
            this.f11637a.putByte(obj, j2, b2);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(Object obj, long j2, double d2) {
            this.f11637a.putDouble(obj, j2, d2);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(Object obj, long j2, float f2) {
            this.f11637a.putFloat(obj, j2, f2);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(Object obj, long j2, boolean z) {
            this.f11637a.putBoolean(obj, j2, z);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final void a(byte[] bArr, long j2, long j3, long j4) {
            this.f11637a.copyMemory(bArr, y3.f11634i + j2, (Object) null, j3, j4);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final boolean c(Object obj, long j2) {
            return this.f11637a.getBoolean(obj, j2);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final float d(Object obj, long j2) {
            return this.f11637a.getFloat(obj, j2);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final double e(Object obj, long j2) {
            return this.f11637a.getDouble(obj, j2);
        }

        @Override // com.google.android.gms.internal.clearcut.y3.d
        public final byte f(Object obj, long j2) {
            return this.f11637a.getByte(obj, j2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class d {

        /* renamed from: a, reason: collision with root package name */
        Unsafe f11637a;

        d(Unsafe unsafe) {
            this.f11637a = unsafe;
        }

        public final int a(Object obj, long j2) {
            return this.f11637a.getInt(obj, j2);
        }

        public final long a(Field field) {
            return this.f11637a.objectFieldOffset(field);
        }

        public abstract void a(long j2, byte b2);

        public abstract void a(Object obj, long j2, byte b2);

        public abstract void a(Object obj, long j2, double d2);

        public abstract void a(Object obj, long j2, float f2);

        public final void a(Object obj, long j2, int i2) {
            this.f11637a.putInt(obj, j2, i2);
        }

        public final void a(Object obj, long j2, long j3) {
            this.f11637a.putLong(obj, j2, j3);
        }

        public abstract void a(Object obj, long j2, boolean z);

        public abstract void a(byte[] bArr, long j2, long j3, long j4);

        public final long b(Object obj, long j2) {
            return this.f11637a.getLong(obj, j2);
        }

        public abstract boolean c(Object obj, long j2);

        public abstract float d(Object obj, long j2);

        public abstract double e(Object obj, long j2);

        public abstract byte f(Object obj, long j2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00c6  */
    static {
        /*
            java.lang.Class<java.lang.Object[]> r0 = java.lang.Object[].class
            java.lang.Class<double[]> r1 = double[].class
            java.lang.Class<float[]> r2 = float[].class
            java.lang.Class<long[]> r3 = long[].class
            java.lang.Class<int[]> r4 = int[].class
            java.lang.Class<boolean[]> r5 = boolean[].class
            java.lang.Class<com.google.android.gms.internal.clearcut.y3> r6 = com.google.android.gms.internal.clearcut.y3.class
            java.lang.String r6 = r6.getName()
            java.util.logging.Logger r6 = java.util.logging.Logger.getLogger(r6)
            com.google.android.gms.internal.clearcut.y3.f11626a = r6
            sun.misc.Unsafe r6 = d()
            com.google.android.gms.internal.clearcut.y3.f11627b = r6
            java.lang.Class r6 = com.google.android.gms.internal.clearcut.t.b()
            com.google.android.gms.internal.clearcut.y3.f11628c = r6
            java.lang.Class r6 = java.lang.Long.TYPE
            boolean r6 = c(r6)
            com.google.android.gms.internal.clearcut.y3.f11629d = r6
            java.lang.Class r6 = java.lang.Integer.TYPE
            boolean r6 = c(r6)
            com.google.android.gms.internal.clearcut.y3.f11630e = r6
            sun.misc.Unsafe r6 = com.google.android.gms.internal.clearcut.y3.f11627b
            r7 = 0
            if (r6 != 0) goto L3b
        L39:
            r6 = r7
            goto L60
        L3b:
            boolean r6 = com.google.android.gms.internal.clearcut.t.a()
            if (r6 == 0) goto L59
            boolean r6 = com.google.android.gms.internal.clearcut.y3.f11629d
            if (r6 == 0) goto L4d
            com.google.android.gms.internal.clearcut.y3$b r6 = new com.google.android.gms.internal.clearcut.y3$b
            sun.misc.Unsafe r8 = com.google.android.gms.internal.clearcut.y3.f11627b
            r6.<init>(r8)
            goto L60
        L4d:
            boolean r6 = com.google.android.gms.internal.clearcut.y3.f11630e
            if (r6 == 0) goto L39
            com.google.android.gms.internal.clearcut.y3$a r6 = new com.google.android.gms.internal.clearcut.y3$a
            sun.misc.Unsafe r8 = com.google.android.gms.internal.clearcut.y3.f11627b
            r6.<init>(r8)
            goto L60
        L59:
            com.google.android.gms.internal.clearcut.y3$c r6 = new com.google.android.gms.internal.clearcut.y3$c
            sun.misc.Unsafe r8 = com.google.android.gms.internal.clearcut.y3.f11627b
            r6.<init>(r8)
        L60:
            com.google.android.gms.internal.clearcut.y3.f11631f = r6
            boolean r6 = f()
            com.google.android.gms.internal.clearcut.y3.f11632g = r6
            boolean r6 = e()
            com.google.android.gms.internal.clearcut.y3.f11633h = r6
            java.lang.Class<byte[]> r6 = byte[].class
            int r6 = a(r6)
            long r8 = (long) r6
            com.google.android.gms.internal.clearcut.y3.f11634i = r8
            a(r5)
            b(r5)
            a(r4)
            b(r4)
            a(r3)
            b(r3)
            a(r2)
            b(r2)
            a(r1)
            b(r1)
            a(r0)
            b(r0)
            java.lang.reflect.Field r0 = g()
            long r0 = b(r0)
            com.google.android.gms.internal.clearcut.y3.f11635j = r0
            java.lang.Class<java.lang.String> r0 = java.lang.String.class
            java.lang.String r1 = "value"
            java.lang.reflect.Field r0 = a(r0, r1)
            if (r0 == 0) goto Lb8
            java.lang.Class r1 = r0.getType()
            java.lang.Class<char[]> r2 = char[].class
            if (r1 != r2) goto Lb8
            goto Lb9
        Lb8:
            r0 = r7
        Lb9:
            b(r0)
            java.nio.ByteOrder r0 = java.nio.ByteOrder.nativeOrder()
            java.nio.ByteOrder r1 = java.nio.ByteOrder.BIG_ENDIAN
            if (r0 != r1) goto Lc6
            r0 = 1
            goto Lc7
        Lc6:
            r0 = 0
        Lc7:
            com.google.android.gms.internal.clearcut.y3.f11636k = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.y3.<clinit>():void");
    }

    private y3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte a(byte[] bArr, long j2) {
        return f11631f.f(bArr, f11634i + j2);
    }

    private static int a(Class<?> cls) {
        if (f11633h) {
            return f11631f.f11637a.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Object obj, long j2) {
        return f11631f.a(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(Field field) {
        return f11631f.a(field);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(ByteBuffer byteBuffer) {
        return f11631f.b(byteBuffer, f11635j);
    }

    private static Field a(Class<?> cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(long j2, byte b2) {
        f11631f.a(j2, b2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int i2 = ((((int) j2) ^ (-1)) & 3) << 3;
        a(obj, j3, ((255 & b2) << i2) | (a(obj, j3) & ((255 << i2) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, double d2) {
        f11631f.a(obj, j2, d2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, float f2) {
        f11631f.a(obj, j2, f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, int i2) {
        f11631f.a(obj, j2, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, long j3) {
        f11631f.a(obj, j2, j3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, Object obj2) {
        f11631f.f11637a.putObject(obj, j2, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, boolean z) {
        f11631f.a(obj, j2, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(byte[] bArr, long j2, byte b2) {
        f11631f.a((Object) bArr, f11634i + j2, b2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(byte[] bArr, long j2, long j3, long j4) {
        f11631f.a(bArr, j2, j3, j4);
    }

    private static int b(Class<?> cls) {
        if (f11633h) {
            return f11631f.f11637a.arrayIndexScale(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(Object obj, long j2) {
        return f11631f.b(obj, j2);
    }

    private static long b(Field field) {
        d dVar;
        if (field == null || (dVar = f11631f) == null) {
            return -1L;
        }
        return dVar.a(field);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int i2 = (((int) j2) & 3) << 3;
        a(obj, j3, ((255 & b2) << i2) | (a(obj, j3) & ((255 << i2) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Object obj, long j2, boolean z) {
        a(obj, j2, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b() {
        return f11633h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Object obj, long j2, boolean z) {
        b(obj, j2, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c() {
        return f11632g;
    }

    private static boolean c(Class<?> cls) {
        if (!t.a()) {
            return false;
        }
        try {
            Class<?> cls2 = f11628c;
            cls2.getMethod("peekLong", cls, Boolean.TYPE);
            cls2.getMethod("pokeLong", cls, Long.TYPE, Boolean.TYPE);
            cls2.getMethod("pokeInt", cls, Integer.TYPE, Boolean.TYPE);
            cls2.getMethod("peekInt", cls, Boolean.TYPE);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            cls2.getMethod("peekByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(Object obj, long j2) {
        return f11631f.c(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float d(Object obj, long j2) {
        return f11631f.d(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Unsafe d() {
        try {
            return (Unsafe) AccessController.doPrivileged(new z3());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double e(Object obj, long j2) {
        return f11631f.e(obj, j2);
    }

    private static boolean e() {
        Unsafe unsafe = f11627b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            cls.getMethod("getInt", Object.class, Long.TYPE);
            cls.getMethod("putInt", Object.class, Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            cls.getMethod("putLong", Object.class, Long.TYPE, Long.TYPE);
            cls.getMethod("getObject", Object.class, Long.TYPE);
            cls.getMethod("putObject", Object.class, Long.TYPE, Object.class);
            if (t.a()) {
                return true;
            }
            cls.getMethod("getByte", Object.class, Long.TYPE);
            cls.getMethod("putByte", Object.class, Long.TYPE, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, Long.TYPE);
            cls.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, Long.TYPE);
            cls.getMethod("putFloat", Object.class, Long.TYPE, Float.TYPE);
            cls.getMethod("getDouble", Object.class, Long.TYPE);
            cls.getMethod("putDouble", Object.class, Long.TYPE, Double.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger = f11626a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object f(Object obj, long j2) {
        return f11631f.f11637a.getObject(obj, j2);
    }

    private static boolean f() {
        Unsafe unsafe = f11627b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (g() == null) {
                return false;
            }
            if (t.a()) {
                return true;
            }
            cls.getMethod("getByte", Long.TYPE);
            cls.getMethod("putByte", Long.TYPE, Byte.TYPE);
            cls.getMethod("getInt", Long.TYPE);
            cls.getMethod("putInt", Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Long.TYPE);
            cls.getMethod("putLong", Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Long.TYPE, Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Object.class, Long.TYPE, Object.class, Long.TYPE, Long.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger = f11626a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte g(Object obj, long j2) {
        return (byte) (a(obj, (-4) & j2) >>> ((int) (((j2 ^ (-1)) & 3) << 3)));
    }

    private static Field g() {
        Field a2;
        if (t.a() && (a2 = a((Class<?>) Buffer.class, "effectiveDirectAddress")) != null) {
            return a2;
        }
        Field a3 = a((Class<?>) Buffer.class, "address");
        if (a3 == null || a3.getType() != Long.TYPE) {
            return null;
        }
        return a3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte h(Object obj, long j2) {
        return (byte) (a(obj, (-4) & j2) >>> ((int) ((j2 & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean i(Object obj, long j2) {
        return g(obj, j2) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean j(Object obj, long j2) {
        return h(obj, j2) != 0;
    }
}
