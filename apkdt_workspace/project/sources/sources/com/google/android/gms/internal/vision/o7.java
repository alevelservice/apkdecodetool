package com.google.android.gms.internal.vision;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class o7 {

    /* renamed from: a, reason: collision with root package name */
    private static final Logger f12461a = Logger.getLogger(o7.class.getName());

    /* renamed from: b, reason: collision with root package name */
    private static final Unsafe f12462b = c();

    /* renamed from: c, reason: collision with root package name */
    private static final Class<?> f12463c = f3.b();

    /* renamed from: d, reason: collision with root package name */
    private static final boolean f12464d = d(Long.TYPE);

    /* renamed from: e, reason: collision with root package name */
    private static final boolean f12465e = d(Integer.TYPE);

    /* renamed from: f, reason: collision with root package name */
    private static final d f12466f;

    /* renamed from: g, reason: collision with root package name */
    private static final boolean f12467g;

    /* renamed from: h, reason: collision with root package name */
    private static final boolean f12468h;

    /* renamed from: i, reason: collision with root package name */
    private static final long f12469i;

    /* renamed from: j, reason: collision with root package name */
    static final boolean f12470j;

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    static final class b extends d {
        b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final void a(Object obj, long j2, byte b2) {
            this.f12471a.putByte(obj, j2, b2);
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final boolean c(Object obj, long j2) {
            return this.f12471a.getBoolean(obj, j2);
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final float d(Object obj, long j2) {
            return this.f12471a.getFloat(obj, j2);
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final double e(Object obj, long j2) {
            return this.f12471a.getDouble(obj, j2);
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final byte f(Object obj, long j2) {
            return this.f12471a.getByte(obj, j2);
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final void a(Object obj, long j2, boolean z) {
            this.f12471a.putBoolean(obj, j2, z);
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final void a(Object obj, long j2, float f2) {
            this.f12471a.putFloat(obj, j2, f2);
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final void a(Object obj, long j2, double d2) {
            this.f12471a.putDouble(obj, j2, d2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static abstract class d {

        /* renamed from: a, reason: collision with root package name */
        Unsafe f12471a;

        d(Unsafe unsafe) {
            this.f12471a = unsafe;
        }

        public final int a(Object obj, long j2) {
            return this.f12471a.getInt(obj, j2);
        }

        public abstract void a(Object obj, long j2, byte b2);

        public abstract void a(Object obj, long j2, double d2);

        public abstract void a(Object obj, long j2, float f2);

        public abstract void a(Object obj, long j2, boolean z);

        public final long b(Object obj, long j2) {
            return this.f12471a.getLong(obj, j2);
        }

        public abstract boolean c(Object obj, long j2);

        public abstract float d(Object obj, long j2);

        public abstract double e(Object obj, long j2);

        public abstract byte f(Object obj, long j2);

        public final void a(Object obj, long j2, int i2) {
            this.f12471a.putInt(obj, j2, i2);
        }

        public final void a(Object obj, long j2, long j3) {
            this.f12471a.putLong(obj, j2, j3);
        }
    }

    static {
        d dVar;
        d dVar2 = null;
        if (f12462b != null) {
            if (f3.a()) {
                if (f12464d) {
                    dVar2 = new c(f12462b);
                } else if (f12465e) {
                    dVar2 = new a(f12462b);
                }
            } else {
                dVar2 = new b(f12462b);
            }
        }
        f12466f = dVar2;
        f12467g = e();
        f12468h = d();
        f12469i = b(byte[].class);
        b(boolean[].class);
        c(boolean[].class);
        b(int[].class);
        c(int[].class);
        b(long[].class);
        c(long[].class);
        b(float[].class);
        c(float[].class);
        b(double[].class);
        c(double[].class);
        b(Object[].class);
        c(Object[].class);
        Field f2 = f();
        if (f2 != null && (dVar = f12466f) != null) {
            dVar.f12471a.objectFieldOffset(f2);
        }
        f12470j = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private o7() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return f12468h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b() {
        return f12467g;
    }

    private static int c(Class<?> cls) {
        if (f12468h) {
            return f12466f.f12471a.arrayIndexScale(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float d(Object obj, long j2) {
        return f12466f.d(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double e(Object obj, long j2) {
        return f12466f.e(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object f(Object obj, long j2) {
        return f12466f.f12471a.getObject(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte g(Object obj, long j2) {
        return (byte) (a(obj, (-4) & j2) >>> ((int) (((j2 ^ (-1)) & 3) << 3)));
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T a(Class<T> cls) {
        try {
            return (T) f12462b.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    private static int b(Class<?> cls) {
        if (f12468h) {
            return f12466f.f12471a.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static boolean d() {
        Unsafe unsafe = f12462b;
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
            if (f3.a()) {
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
            Logger logger = f12461a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    private static boolean e() {
        Unsafe unsafe = f12462b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (f() == null) {
                return false;
            }
            if (f3.a()) {
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
            Logger logger = f12461a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    static final class a extends d {
        a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final void a(Object obj, long j2, byte b2) {
            if (o7.f12470j) {
                o7.a(obj, j2, b2);
            } else {
                o7.b(obj, j2, b2);
            }
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final boolean c(Object obj, long j2) {
            return o7.f12470j ? o7.i(obj, j2) : o7.j(obj, j2);
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final float d(Object obj, long j2) {
            return Float.intBitsToFloat(a(obj, j2));
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final double e(Object obj, long j2) {
            return Double.longBitsToDouble(b(obj, j2));
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final byte f(Object obj, long j2) {
            return o7.f12470j ? o7.g(obj, j2) : o7.h(obj, j2);
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final void a(Object obj, long j2, boolean z) {
            if (!o7.f12470j) {
                o7.c(obj, j2, z);
            } else {
                o7.b(obj, j2, z);
            }
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final void a(Object obj, long j2, float f2) {
            a(obj, j2, Float.floatToIntBits(f2));
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final void a(Object obj, long j2, double d2) {
            a(obj, j2, Double.doubleToLongBits(d2));
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    static final class c extends d {
        c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final void a(Object obj, long j2, byte b2) {
            if (o7.f12470j) {
                o7.a(obj, j2, b2);
            } else {
                o7.b(obj, j2, b2);
            }
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final boolean c(Object obj, long j2) {
            return o7.f12470j ? o7.i(obj, j2) : o7.j(obj, j2);
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final float d(Object obj, long j2) {
            return Float.intBitsToFloat(a(obj, j2));
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final double e(Object obj, long j2) {
            return Double.longBitsToDouble(b(obj, j2));
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final byte f(Object obj, long j2) {
            return o7.f12470j ? o7.g(obj, j2) : o7.h(obj, j2);
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final void a(Object obj, long j2, boolean z) {
            if (!o7.f12470j) {
                o7.c(obj, j2, z);
            } else {
                o7.b(obj, j2, z);
            }
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final void a(Object obj, long j2, float f2) {
            a(obj, j2, Float.floatToIntBits(f2));
        }

        @Override // com.google.android.gms.internal.vision.o7.d
        public final void a(Object obj, long j2, double d2) {
            a(obj, j2, Double.doubleToLongBits(d2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(Object obj, long j2) {
        return f12466f.c(obj, j2);
    }

    private static Field f() {
        Field a2;
        if (f3.a() && (a2 = a((Class<?>) Buffer.class, "effectiveDirectAddress")) != null) {
            return a2;
        }
        Field a3 = a((Class<?>) Buffer.class, "address");
        if (a3 == null || a3.getType() != Long.TYPE) {
            return null;
        }
        return a3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Object obj, long j2) {
        return f12466f.a(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(Object obj, long j2) {
        return f12466f.b(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Unsafe c() {
        try {
            return (Unsafe) AccessController.doPrivileged(new q7());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, int i2) {
        f12466f.a(obj, j2, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int i2 = (((int) j2) & 3) << 3;
        a(obj, j3, ((255 & b2) << i2) | (a(obj, j3) & ((255 << i2) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, long j3) {
        f12466f.a(obj, j2, j3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Object obj, long j2, boolean z) {
        b(obj, j2, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, boolean z) {
        f12466f.a(obj, j2, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Object obj, long j2, boolean z) {
        a(obj, j2, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, float f2) {
        f12466f.a(obj, j2, f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, double d2) {
        f12466f.a(obj, j2, d2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, Object obj2) {
        f12466f.f12471a.putObject(obj, j2, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte a(byte[] bArr, long j2) {
        return f12466f.f(bArr, f12469i + j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(byte[] bArr, long j2, byte b2) {
        f12466f.a((Object) bArr, f12469i + j2, b2);
    }

    private static Field a(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int i2 = ((((int) j2) ^ (-1)) & 3) << 3;
        a(obj, j3, ((255 & b2) << i2) | (a(obj, j3) & ((255 << i2) ^ (-1))));
    }

    private static boolean d(Class<?> cls) {
        if (!f3.a()) {
            return false;
        }
        try {
            Class<?> cls2 = f12463c;
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
}
