package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.d1;
import com.google.android.gms.internal.clearcut.d1.a;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public abstract class d1<MessageType extends d1<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends p<MessageType, BuilderType> {
    private static Map<Object, d1<?, ?>> zzjr = new ConcurrentHashMap();
    protected s3 zzjp = s3.d();
    private int zzjq = -1;

    /* loaded from: classes.dex */
    public static abstract class a<MessageType extends d1<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends q<MessageType, BuilderType> {

        /* renamed from: e, reason: collision with root package name */
        private final MessageType f11385e;

        /* renamed from: f, reason: collision with root package name */
        protected MessageType f11386f;

        /* renamed from: g, reason: collision with root package name */
        protected boolean f11387g = false;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(MessageType messagetype) {
            this.f11385e = messagetype;
            this.f11386f = (MessageType) messagetype.a(e.f11393d, null, null);
        }

        private static void a(MessageType messagetype, MessageType messagetype2) {
            u2.a().a((u2) messagetype).b(messagetype, messagetype2);
        }

        public final BuilderType a(MessageType messagetype) {
            f();
            a(this.f11386f, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.clearcut.k2
        public final /* synthetic */ i2 a() {
            return this.f11385e;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.clearcut.q
        protected final /* synthetic */ q a(p pVar) {
            a((a<MessageType, BuilderType>) pVar);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Object clone() {
            a aVar = (a) this.f11385e.a(e.f11394e, null, null);
            aVar.a((a) q());
            return aVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void f() {
            if (this.f11387g) {
                MessageType messagetype = (MessageType) this.f11386f.a(e.f11393d, null, null);
                a(messagetype, this.f11386f);
                this.f11386f = messagetype;
                this.f11387g = false;
            }
        }

        @Override // com.google.android.gms.internal.clearcut.j2
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public MessageType q() {
            if (this.f11387g) {
                return this.f11386f;
            }
            MessageType messagetype = this.f11386f;
            u2.a().a((u2) messagetype).f(messagetype);
            this.f11387g = true;
            return this.f11386f;
        }

        public final MessageType h() {
            MessageType messagetype = (MessageType) q();
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) messagetype.a(e.f11390a, null, null)).byteValue();
            boolean z = true;
            if (byteValue != 1) {
                if (byteValue == 0) {
                    z = false;
                } else {
                    z = u2.a().a((u2) messagetype).e(messagetype);
                    if (booleanValue) {
                        messagetype.a(e.f11391b, z ? messagetype : null, null);
                    }
                }
            }
            if (z) {
                return messagetype;
            }
            throw new q3(messagetype);
        }

        @Override // com.google.android.gms.internal.clearcut.j2
        public final /* synthetic */ i2 o() {
            d1 d1Var = (d1) q();
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) d1Var.a(e.f11390a, (Object) null, (Object) null)).byteValue();
            boolean z = true;
            if (byteValue != 1) {
                if (byteValue == 0) {
                    z = false;
                } else {
                    z = u2.a().a((u2) d1Var).e(d1Var);
                    if (booleanValue) {
                        d1Var.a(e.f11391b, z ? d1Var : null, (Object) null);
                    }
                }
            }
            if (z) {
                return d1Var;
            }
            throw new q3(d1Var);
        }
    }

    /* loaded from: classes.dex */
    public static class b<T extends d1<T, ?>> extends r<T> {
        public b(T t) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class c<MessageType extends c<MessageType, BuilderType>, BuilderType extends Object<MessageType, BuilderType>> extends d1<MessageType, BuilderType> implements k2 {
        protected u0<d> zzjv = u0.i();
    }

    /* loaded from: classes.dex */
    static final class d implements x0<d> {

        /* renamed from: e, reason: collision with root package name */
        final int f11388e;

        /* renamed from: f, reason: collision with root package name */
        final g4 f11389f;

        @Override // com.google.android.gms.internal.clearcut.x0
        public final l4 B() {
            return this.f11389f.zzek();
        }

        @Override // com.google.android.gms.internal.clearcut.x0
        public final boolean D() {
            return false;
        }

        @Override // com.google.android.gms.internal.clearcut.x0
        public final g4 G() {
            return this.f11389f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.clearcut.x0
        public final j2 a(j2 j2Var, i2 i2Var) {
            return ((a) j2Var).a((a) i2Var);
        }

        @Override // com.google.android.gms.internal.clearcut.x0
        public final o2 a(o2 o2Var, o2 o2Var2) {
            throw new UnsupportedOperationException();
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            return this.f11388e - ((d) obj).f11388e;
        }

        @Override // com.google.android.gms.internal.clearcut.x0
        public final boolean z() {
            return false;
        }

        @Override // com.google.android.gms.internal.clearcut.x0
        public final int zzc() {
            return this.f11388e;
        }
    }

    /* loaded from: classes.dex */
    public enum e {

        /* renamed from: a, reason: collision with root package name */
        public static final int f11390a = 1;

        /* renamed from: b, reason: collision with root package name */
        public static final int f11391b = 2;

        /* renamed from: c, reason: collision with root package name */
        public static final int f11392c = 3;

        /* renamed from: d, reason: collision with root package name */
        public static final int f11393d = 4;

        /* renamed from: e, reason: collision with root package name */
        public static final int f11394e = 5;

        /* renamed from: f, reason: collision with root package name */
        public static final int f11395f = 6;

        /* renamed from: g, reason: collision with root package name */
        public static final int f11396g = 7;

        /* renamed from: h, reason: collision with root package name */
        private static final /* synthetic */ int[] f11397h = {f11390a, f11391b, f11392c, f11393d, f11394e, f11395f, f11396g};

        /* renamed from: i, reason: collision with root package name */
        public static final int f11398i = 1;

        /* renamed from: j, reason: collision with root package name */
        public static final int f11399j = 2;

        /* renamed from: k, reason: collision with root package name */
        public static final int f11400k = 1;

        /* renamed from: l, reason: collision with root package name */
        public static final int f11401l = 2;

        static {
            int[] iArr = {f11398i, f11399j};
            int[] iArr2 = {f11400k, f11401l};
        }

        public static int[] a() {
            return (int[]) f11397h.clone();
        }
    }

    private static <T extends d1<T, ?>> T a(T t, byte[] bArr) {
        T t2 = (T) t.a(e.f11393d, null, null);
        try {
            u2.a().a((u2) t2).a(t2, bArr, 0, bArr.length, new v());
            u2.a().a((u2) t2).f(t2);
            if (t2.zzex == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e2) {
            if (e2.getCause() instanceof j1) {
                throw ((j1) e2.getCause());
            }
            throw new j1(e2.getMessage()).zzg(t2);
        } catch (IndexOutOfBoundsException unused) {
            throw j1.zzbl().zzg(t2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends d1<?, ?>> T a(Class<T> cls) {
        T t = (T) zzjr.get(cls);
        if (t == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                t = (T) zzjr.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        if (t != null) {
            return t;
        }
        String valueOf = String.valueOf(cls.getName());
        throw new IllegalStateException(valueOf.length() != 0 ? "Unable to get default instance for: ".concat(valueOf) : new String("Unable to get default instance for: "));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object a(i2 i2Var, String str, Object[] objArr) {
        return new w2(i2Var, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends d1<?, ?>> void a(Class<T> cls, T t) {
        zzjr.put(cls, t);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends d1<T, ?>> T b(T t, byte[] bArr) {
        T t2 = (T) a(t, bArr);
        if (t2 != null) {
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) t2.a(e.f11390a, null, null)).byteValue();
            boolean z = true;
            if (byteValue != 1) {
                if (byteValue == 0) {
                    z = false;
                } else {
                    z = u2.a().a((u2) t2).e(t2);
                    if (booleanValue) {
                        t2.a(e.f11391b, z ? t2 : null, null);
                    }
                }
            }
            if (!z) {
                throw new j1(new q3(t2).getMessage()).zzg(t2);
            }
        }
        return t2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> i1<E> g() {
        return v2.b();
    }

    @Override // com.google.android.gms.internal.clearcut.k2
    public final /* synthetic */ i2 a() {
        return (d1) a(e.f11395f, (Object) null, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object a(int i2, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.clearcut.p
    final void a(int i2) {
        this.zzjq = i2;
    }

    @Override // com.google.android.gms.internal.clearcut.i2
    public final void a(k0 k0Var) {
        u2.a().a((Class) getClass()).a((z2) this, (m4) m0.a(k0Var));
    }

    @Override // com.google.android.gms.internal.clearcut.i2
    public final /* synthetic */ j2 b() {
        a aVar = (a) a(e.f11394e, (Object) null, (Object) null);
        aVar.a((a) this);
        return aVar;
    }

    @Override // com.google.android.gms.internal.clearcut.i2
    public final /* synthetic */ j2 d() {
        return (a) a(e.f11394e, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.clearcut.i2
    public final int e() {
        if (this.zzjq == -1) {
            this.zzjq = u2.a().a((u2) this).d(this);
        }
        return this.zzjq;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (((d1) a(e.f11395f, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return u2.a().a((u2) this).a(this, (d1<MessageType, BuilderType>) obj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.clearcut.p
    final int f() {
        return this.zzjq;
    }

    public int hashCode() {
        int i2 = this.zzex;
        if (i2 != 0) {
            return i2;
        }
        this.zzex = u2.a().a((u2) this).c(this);
        return this.zzex;
    }

    @Override // com.google.android.gms.internal.clearcut.k2
    public final boolean isInitialized() {
        boolean booleanValue = Boolean.TRUE.booleanValue();
        byte byteValue = ((Byte) a(e.f11390a, (Object) null, (Object) null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean e2 = u2.a().a((u2) this).e(this);
        if (booleanValue) {
            a(e.f11391b, e2 ? this : null, (Object) null);
        }
        return e2;
    }

    public String toString() {
        return l2.a(this, super.toString());
    }
}
