package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;
import com.google.android.gms.internal.ads.e91.a;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public abstract class e91<MessageType extends e91<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends m71<MessageType, BuilderType> {
    private static Map<Object, e91<?, ?>> zzhkf = new ConcurrentHashMap();
    protected yb1 zzhkd = yb1.d();
    private int zzhke = -1;

    /* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
    /* loaded from: classes.dex */
    public static abstract class b<MessageType extends b<MessageType, BuilderType>, BuilderType> extends e91<MessageType, BuilderType> implements qa1 {
        protected t81<Object> zzhkg = t81.g();

        /* JADX INFO: Access modifiers changed from: package-private */
        public final t81<Object> k() {
            if (this.zzhkg.b()) {
                this.zzhkg = (t81) this.zzhkg.clone();
            }
            return this.zzhkg;
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
    /* loaded from: classes.dex */
    public static class c<T extends e91<T, ?>> extends o71<T> {
        public c(T t) {
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
    /* loaded from: classes.dex */
    public enum d {

        /* renamed from: a, reason: collision with root package name */
        public static final int f6372a = 1;

        /* renamed from: b, reason: collision with root package name */
        public static final int f6373b = 2;

        /* renamed from: c, reason: collision with root package name */
        public static final int f6374c = 3;

        /* renamed from: d, reason: collision with root package name */
        public static final int f6375d = 4;

        /* renamed from: e, reason: collision with root package name */
        public static final int f6376e = 5;

        /* renamed from: f, reason: collision with root package name */
        public static final int f6377f = 6;

        /* renamed from: g, reason: collision with root package name */
        public static final int f6378g = 7;

        /* renamed from: h, reason: collision with root package name */
        private static final /* synthetic */ int[] f6379h = {f6372a, f6373b, f6374c, f6375d, f6376e, f6377f, f6378g};

        /* renamed from: i, reason: collision with root package name */
        public static final int f6380i = 1;

        /* renamed from: j, reason: collision with root package name */
        public static final int f6381j = 2;

        /* renamed from: k, reason: collision with root package name */
        public static final int f6382k = 1;

        /* renamed from: l, reason: collision with root package name */
        public static final int f6383l = 2;

        static {
            int[] iArr = {f6380i, f6381j};
            int[] iArr2 = {f6382k, f6383l};
        }

        public static int[] a() {
            return (int[]) f6379h.clone();
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
    /* loaded from: classes.dex */
    public static class e<ContainingType extends oa1, Type> extends o81<ContainingType, Type> {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static j91 i() {
        return g91.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> l91<E> j() {
        return bb1.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object a(int i2, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.ads.m71
    final void a(int i2) {
        this.zzhke = i2;
    }

    @Override // com.google.android.gms.internal.ads.oa1
    public final /* synthetic */ na1 b() {
        a aVar = (a) a(d.f6376e, (Object) null, (Object) null);
        aVar.a((a) this);
        return aVar;
    }

    @Override // com.google.android.gms.internal.ads.oa1
    public final /* synthetic */ na1 c() {
        return (a) a(d.f6376e, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.oa1
    public final int d() {
        if (this.zzhke == -1) {
            this.zzhke = ya1.a().a((ya1) this).f(this);
        }
        return this.zzhke;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (((e91) a(d.f6377f, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return ya1.a().a((ya1) this).a(this, (e91<MessageType, BuilderType>) obj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.m71
    final int g() {
        return this.zzhke;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <MessageType extends e91<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> BuilderType h() {
        return (BuilderType) a(d.f6376e, (Object) null, (Object) null);
    }

    public int hashCode() {
        int i2 = this.zzhfc;
        if (i2 != 0) {
            return i2;
        }
        this.zzhfc = ya1.a().a((ya1) this).c(this);
        return this.zzhfc;
    }

    @Override // com.google.android.gms.internal.ads.qa1
    public final boolean isInitialized() {
        return a(this, Boolean.TRUE.booleanValue());
    }

    public String toString() {
        return pa1.a(this, super.toString());
    }

    /* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
    /* loaded from: classes.dex */
    public static abstract class a<MessageType extends e91<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends l71<MessageType, BuilderType> {

        /* renamed from: e, reason: collision with root package name */
        private final MessageType f6369e;

        /* renamed from: f, reason: collision with root package name */
        protected MessageType f6370f;

        /* renamed from: g, reason: collision with root package name */
        private boolean f6371g = false;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(MessageType messagetype) {
            this.f6369e = messagetype;
            this.f6370f = (MessageType) messagetype.a(d.f6375d, null, null);
        }

        private final BuilderType b(byte[] bArr, int i2, int i3, q81 q81Var) {
            g();
            try {
                ya1.a().a((ya1) this.f6370f).a(this.f6370f, bArr, 0, i3 + 0, new s71(q81Var));
                return this;
            } catch (o91 e2) {
                throw e2;
            } catch (IOException e3) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e3);
            } catch (IndexOutOfBoundsException unused) {
                throw o91.zzazx();
            }
        }

        public final BuilderType a(MessageType messagetype) {
            g();
            a(this.f6370f, messagetype);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Object clone() {
            a aVar = (a) this.f6369e.a(d.f6376e, null, null);
            aVar.a((a) p());
            return aVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void g() {
            if (this.f6371g) {
                MessageType messagetype = (MessageType) this.f6370f.a(d.f6375d, null, null);
                a(messagetype, this.f6370f);
                this.f6370f = messagetype;
                this.f6371g = false;
            }
        }

        @Override // com.google.android.gms.internal.ads.na1
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public MessageType p() {
            if (this.f6371g) {
                return this.f6370f;
            }
            MessageType messagetype = this.f6370f;
            ya1.a().a((ya1) messagetype).e(messagetype);
            this.f6371g = true;
            return this.f6370f;
        }

        @Override // com.google.android.gms.internal.ads.na1
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public final MessageType s() {
            MessageType messagetype = (MessageType) p();
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw new wb1(messagetype);
        }

        private static void a(MessageType messagetype, MessageType messagetype2) {
            ya1.a().a((ya1) messagetype).b(messagetype, messagetype2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.ads.l71
        protected final /* synthetic */ l71 a(m71 m71Var) {
            a((a<MessageType, BuilderType>) m71Var);
            return this;
        }

        public final /* synthetic */ l71 a(byte[] bArr, int i2, int i3, q81 q81Var) {
            b(bArr, 0, i3, q81Var);
            return this;
        }

        @Override // com.google.android.gms.internal.ads.qa1
        public final /* synthetic */ oa1 a() {
            return this.f6369e;
        }
    }

    @Override // com.google.android.gms.internal.ads.oa1
    public final void a(m81 m81Var) {
        ya1.a().a((ya1) this).a((db1) this, (tc1) n81.a(m81Var));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends e91<?, ?>> T a(Class<T> cls) {
        e91<?, ?> e91Var = zzhkf.get(cls);
        if (e91Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                e91Var = zzhkf.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        if (e91Var == null) {
            e91Var = (T) ((e91) bc1.a(cls)).a(d.f6377f, (Object) null, (Object) null);
            if (e91Var != null) {
                zzhkf.put(cls, e91Var);
            } else {
                throw new IllegalStateException();
            }
        }
        return (T) e91Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends e91<?, ?>> void a(Class<T> cls, T t) {
        zzhkf.put(cls, t);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object a(oa1 oa1Var, String str, Object[] objArr) {
        return new ab1(oa1Var, str, objArr);
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

    protected static final <T extends e91<T, ?>> boolean a(T t, boolean z) {
        byte byteValue = ((Byte) t.a(d.f6372a, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean d2 = ya1.a().a((ya1) t).d(t);
        if (z) {
            t.a(d.f6373b, d2 ? t : null, null);
        }
        return d2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static j91 a(j91 j91Var) {
        int size = j91Var.size();
        return j91Var.f(size == 0 ? 10 : size << 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> l91<E> a(l91<E> l91Var) {
        int size = l91Var.size();
        return l91Var.f(size == 0 ? 10 : size << 1);
    }

    private static <T extends e91<T, ?>> T a(T t, g81 g81Var, q81 q81Var) {
        T t2 = (T) t.a(d.f6375d, null, null);
        try {
            db1 a2 = ya1.a().a((ya1) t2);
            a2.a(t2, k81.a(g81Var), q81Var);
            a2.e(t2);
            return t2;
        } catch (IOException e2) {
            if (e2.getCause() instanceof o91) {
                throw ((o91) e2.getCause());
            }
            throw new o91(e2.getMessage()).zzo(t2);
        } catch (RuntimeException e3) {
            if (e3.getCause() instanceof o91) {
                throw ((o91) e3.getCause());
            }
            throw e3;
        }
    }

    private static <T extends e91<T, ?>> T a(T t, byte[] bArr, int i2, int i3, q81 q81Var) {
        T t2 = (T) t.a(d.f6375d, null, null);
        try {
            db1 a2 = ya1.a().a((ya1) t2);
            a2.a(t2, bArr, 0, i3, new s71(q81Var));
            a2.e(t2);
            if (t2.zzhfc == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e2) {
            if (e2.getCause() instanceof o91) {
                throw ((o91) e2.getCause());
            }
            throw new o91(e2.getMessage()).zzo(t2);
        } catch (IndexOutOfBoundsException unused) {
            throw o91.zzazx().zzo(t2);
        }
    }

    private static <T extends e91<T, ?>> T a(T t) {
        if (t == null || t.isInitialized()) {
            return t;
        }
        throw new o91(new wb1(t).getMessage()).zzo(t);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends e91<T, ?>> T a(T t, t71 t71Var) {
        T t2 = (T) a(t, t71Var, q81.b());
        a(t2);
        a(t2);
        return t2;
    }

    private static <T extends e91<T, ?>> T a(T t, t71 t71Var, q81 q81Var) {
        try {
            g81 zzaxk = t71Var.zzaxk();
            T t2 = (T) a(t, zzaxk, q81Var);
            try {
                zzaxk.a(0);
                return t2;
            } catch (o91 e2) {
                throw e2.zzo(t2);
            }
        } catch (o91 e3) {
            throw e3;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends e91<T, ?>> T a(T t, byte[] bArr) {
        T t2 = (T) a(t, bArr, 0, bArr.length, q81.b());
        a(t2);
        return t2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends e91<T, ?>> T a(T t, byte[] bArr, q81 q81Var) {
        T t2 = (T) a(t, bArr, 0, bArr.length, q81Var);
        a(t2);
        return t2;
    }

    @Override // com.google.android.gms.internal.ads.qa1
    public final /* synthetic */ oa1 a() {
        return (e91) a(d.f6377f, (Object) null, (Object) null);
    }
}
