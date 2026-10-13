package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;
import com.google.android.gms.internal.measurement.b4.a;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public abstract class b4<MessageType extends b4<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends j2<MessageType, BuilderType> {
    private static Map<Object, b4<?, ?>> zzaib = new ConcurrentHashMap();
    protected u6 zzahz = u6.d();
    private int zzaia = -1;

    /* loaded from: classes.dex */
    public static abstract class b<MessageType extends b<MessageType, BuilderType>, BuilderType> extends b4<MessageType, BuilderType> implements m5 {
        protected r3<Object> zzaic = r3.g();

        /* JADX INFO: Access modifiers changed from: package-private */
        public final r3<Object> n() {
            if (this.zzaic.b()) {
                this.zzaic = (r3) this.zzaic.clone();
            }
            return this.zzaic;
        }
    }

    /* loaded from: classes.dex */
    public static class c<T extends b4<T, ?>> extends k2<T> {

        /* renamed from: a, reason: collision with root package name */
        private final T f11764a;

        public c(T t) {
            this.f11764a = t;
        }

        @Override // com.google.android.gms.internal.measurement.s5
        public final /* synthetic */ Object a(f3 f3Var, o3 o3Var) {
            return b4.a(this.f11764a, f3Var, o3Var);
        }
    }

    /* loaded from: classes.dex */
    public enum d {

        /* renamed from: a, reason: collision with root package name */
        public static final int f11765a = 1;

        /* renamed from: b, reason: collision with root package name */
        public static final int f11766b = 2;

        /* renamed from: c, reason: collision with root package name */
        public static final int f11767c = 3;

        /* renamed from: d, reason: collision with root package name */
        public static final int f11768d = 4;

        /* renamed from: e, reason: collision with root package name */
        public static final int f11769e = 5;

        /* renamed from: f, reason: collision with root package name */
        public static final int f11770f = 6;

        /* renamed from: g, reason: collision with root package name */
        public static final int f11771g = 7;

        /* renamed from: h, reason: collision with root package name */
        private static final /* synthetic */ int[] f11772h = {f11765a, f11766b, f11767c, f11768d, f11769e, f11770f, f11771g};

        /* renamed from: i, reason: collision with root package name */
        public static final int f11773i = 1;

        /* renamed from: j, reason: collision with root package name */
        public static final int f11774j = 2;

        /* renamed from: k, reason: collision with root package name */
        public static final int f11775k = 1;

        /* renamed from: l, reason: collision with root package name */
        public static final int f11776l = 2;

        static {
            int[] iArr = {f11773i, f11774j};
            int[] iArr2 = {f11775k, f11776l};
        }

        public static int[] a() {
            return (int[]) f11772h.clone();
        }
    }

    /* loaded from: classes.dex */
    public static class e<ContainingType extends k5, Type> extends n3<ContainingType, Type> {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static g4 j() {
        return d4.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static j4 l() {
        return z4.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> i4<E> m() {
        return x5.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object a(int i2, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.measurement.j2
    final void a(int i2) {
        this.zzaia = i2;
    }

    @Override // com.google.android.gms.internal.measurement.k5
    public final int b() {
        if (this.zzaia == -1) {
            this.zzaia = u5.a().a((u5) this).b(this);
        }
        return this.zzaia;
    }

    @Override // com.google.android.gms.internal.measurement.k5
    public final /* synthetic */ j5 c() {
        return (a) a(d.f11769e, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.measurement.k5
    public final /* synthetic */ j5 d() {
        a aVar = (a) a(d.f11769e, (Object) null, (Object) null);
        aVar.a((a) this);
        return aVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (((b4) a(d.f11770f, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return u5.a().a((u5) this).a(this, (b4<MessageType, BuilderType>) obj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.j2
    final int f() {
        return this.zzaia;
    }

    protected final void g() {
        u5.a().a((u5) this).d(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <MessageType extends b4<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> BuilderType h() {
        return (BuilderType) a(d.f11769e, (Object) null, (Object) null);
    }

    public int hashCode() {
        int i2 = this.zzact;
        if (i2 != 0) {
            return i2;
        }
        this.zzact = u5.a().a((u5) this).c(this);
        return this.zzact;
    }

    public final BuilderType i() {
        BuilderType buildertype = (BuilderType) a(d.f11769e, (Object) null, (Object) null);
        buildertype.a(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.measurement.m5
    public final boolean isInitialized() {
        return a(this, Boolean.TRUE.booleanValue());
    }

    public String toString() {
        return l5.a(this, super.toString());
    }

    /* loaded from: classes.dex */
    public static abstract class a<MessageType extends b4<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends l2<MessageType, BuilderType> {

        /* renamed from: e, reason: collision with root package name */
        private final MessageType f11761e;

        /* renamed from: f, reason: collision with root package name */
        protected MessageType f11762f;

        /* renamed from: g, reason: collision with root package name */
        private boolean f11763g = false;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(MessageType messagetype) {
            this.f11761e = messagetype;
            this.f11762f = (MessageType) messagetype.a(d.f11768d, null, null);
        }

        private final BuilderType b(byte[] bArr, int i2, int i3, o3 o3Var) {
            e();
            try {
                u5.a().a((u5) this.f11762f).a(this.f11762f, bArr, 0, i3 + 0, new o2(o3Var));
                return this;
            } catch (l4 e2) {
                throw e2;
            } catch (IOException e3) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e3);
            } catch (IndexOutOfBoundsException unused) {
                throw l4.zzut();
            }
        }

        public final BuilderType a(MessageType messagetype) {
            e();
            a(this.f11762f, messagetype);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Object clone() {
            a aVar = (a) this.f11761e.a(d.f11769e, null, null);
            aVar.a((a) r());
            return aVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void e() {
            if (this.f11763g) {
                MessageType messagetype = (MessageType) this.f11762f.a(d.f11768d, null, null);
                a(messagetype, this.f11762f);
                this.f11762f = messagetype;
                this.f11763g = false;
            }
        }

        @Override // com.google.android.gms.internal.measurement.j5
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public MessageType r() {
            if (this.f11763g) {
                return this.f11762f;
            }
            this.f11762f.g();
            this.f11763g = true;
            return this.f11762f;
        }

        @Override // com.google.android.gms.internal.measurement.j5
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public final MessageType t() {
            MessageType messagetype = (MessageType) r();
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw new s6(messagetype);
        }

        private static void a(MessageType messagetype, MessageType messagetype2) {
            u5.a().a((u5) messagetype).b(messagetype, messagetype2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.measurement.l2
        protected final /* synthetic */ l2 a(j2 j2Var) {
            a((a<MessageType, BuilderType>) j2Var);
            return this;
        }

        @Override // com.google.android.gms.internal.measurement.l2
        public final /* synthetic */ l2 a(byte[] bArr, int i2, int i3, o3 o3Var) {
            b(bArr, 0, i3, o3Var);
            return this;
        }

        @Override // com.google.android.gms.internal.measurement.m5
        public final /* synthetic */ k5 a() {
            return this.f11761e;
        }
    }

    @Override // com.google.android.gms.internal.measurement.k5
    public final void a(i3 i3Var) {
        u5.a().a((Class) getClass()).a((y5) this, (p7) l3.a(i3Var));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends b4<?, ?>> T a(Class<T> cls) {
        b4<?, ?> b4Var = zzaib.get(cls);
        if (b4Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                b4Var = zzaib.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        if (b4Var == null) {
            b4Var = (T) ((b4) x6.a(cls)).a(d.f11770f, (Object) null, (Object) null);
            if (b4Var != null) {
                zzaib.put(cls, b4Var);
            } else {
                throw new IllegalStateException();
            }
        }
        return (T) b4Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends b4<?, ?>> void a(Class<T> cls, T t) {
        zzaib.put(cls, t);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object a(k5 k5Var, String str, Object[] objArr) {
        return new w5(k5Var, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    protected static final <T extends b4<T, ?>> boolean a(T t, boolean z) {
        byte byteValue = ((Byte) t.a(d.f11765a, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean a2 = u5.a().a((u5) t).a(t);
        if (z) {
            t.a(d.f11766b, a2 ? t : null, null);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static j4 a(j4 j4Var) {
        int size = j4Var.size();
        return j4Var.zzap(size == 0 ? 10 : size << 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> i4<E> a(i4<E> i4Var) {
        int size = i4Var.size();
        return i4Var.zzap(size == 0 ? 10 : size << 1);
    }

    static <T extends b4<T, ?>> T a(T t, f3 f3Var, o3 o3Var) {
        T t2 = (T) t.a(d.f11768d, null, null);
        try {
            u5.a().a((u5) t2).a(t2, g3.a(f3Var), o3Var);
            t2.g();
            return t2;
        } catch (IOException e2) {
            if (e2.getCause() instanceof l4) {
                throw ((l4) e2.getCause());
            }
            throw new l4(e2.getMessage()).zzg(t2);
        } catch (RuntimeException e3) {
            if (e3.getCause() instanceof l4) {
                throw ((l4) e3.getCause());
            }
            throw e3;
        }
    }

    private static <T extends b4<T, ?>> T a(T t, byte[] bArr, int i2, int i3, o3 o3Var) {
        T t2 = (T) t.a(d.f11768d, null, null);
        try {
            u5.a().a((u5) t2).a(t2, bArr, 0, i3, new o2(o3Var));
            t2.g();
            if (t2.zzact == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e2) {
            if (e2.getCause() instanceof l4) {
                throw ((l4) e2.getCause());
            }
            throw new l4(e2.getMessage()).zzg(t2);
        } catch (IndexOutOfBoundsException unused) {
            throw l4.zzut().zzg(t2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends b4<T, ?>> T a(T t, byte[] bArr, o3 o3Var) {
        T t2 = (T) a(t, bArr, 0, bArr.length, o3Var);
        if (t2 == null || t2.isInitialized()) {
            return t2;
        }
        throw new l4(new s6(t2).getMessage()).zzg(t2);
    }

    @Override // com.google.android.gms.internal.measurement.m5
    public final /* synthetic */ k5 a() {
        return (b4) a(d.f11770f, (Object) null, (Object) null);
    }
}
