package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;
import com.google.android.gms.internal.vision.s4.a;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public abstract class s4<MessageType extends s4<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends y2<MessageType, BuilderType> {
    private static Map<Object, s4<?, ?>> zzwf = new ConcurrentHashMap();
    protected l7 zzwd = l7.d();
    private int zzwe = -1;

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static class b<T extends s4<T, ?>> extends d3<T> {
        public b(T t) {
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    static final class c implements k4<c> {

        /* renamed from: e, reason: collision with root package name */
        final v4<?> f12506e;

        /* renamed from: f, reason: collision with root package name */
        final int f12507f;

        /* renamed from: g, reason: collision with root package name */
        final z7 f12508g;

        /* renamed from: h, reason: collision with root package name */
        final boolean f12509h;

        /* renamed from: i, reason: collision with root package name */
        final boolean f12510i;

        @Override // com.google.android.gms.internal.vision.k4
        public final boolean A() {
            return this.f12509h;
        }

        @Override // com.google.android.gms.internal.vision.k4
        public final boolean C() {
            return this.f12510i;
        }

        @Override // com.google.android.gms.internal.vision.k4
        public final z7 E() {
            return this.f12508g;
        }

        @Override // com.google.android.gms.internal.vision.k4
        public final c8 F() {
            return this.f12508g.zzip();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.vision.k4
        public final c6 a(c6 c6Var, d6 d6Var) {
            a aVar = (a) c6Var;
            aVar.a((a) d6Var);
            return aVar;
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            return this.f12507f - ((c) obj).f12507f;
        }

        @Override // com.google.android.gms.internal.vision.k4
        public final int zzag() {
            return this.f12507f;
        }

        @Override // com.google.android.gms.internal.vision.k4
        public final h6 a(h6 h6Var, h6 h6Var2) {
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static abstract class d<MessageType extends d<MessageType, BuilderType>, BuilderType extends Object<MessageType, BuilderType>> extends s4<MessageType, BuilderType> implements f6 {
        protected i4<c> zzwk = i4.g();

        /* JADX INFO: Access modifiers changed from: package-private */
        public final i4<c> m() {
            if (this.zzwk.b()) {
                this.zzwk = (i4) this.zzwk.clone();
            }
            return this.zzwk;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public enum e {

        /* renamed from: a, reason: collision with root package name */
        public static final int f12511a = 1;

        /* renamed from: b, reason: collision with root package name */
        public static final int f12512b = 2;

        /* renamed from: c, reason: collision with root package name */
        public static final int f12513c = 3;

        /* renamed from: d, reason: collision with root package name */
        public static final int f12514d = 4;

        /* renamed from: e, reason: collision with root package name */
        public static final int f12515e = 5;

        /* renamed from: f, reason: collision with root package name */
        public static final int f12516f = 6;

        /* renamed from: g, reason: collision with root package name */
        public static final int f12517g = 7;

        /* renamed from: h, reason: collision with root package name */
        private static final /* synthetic */ int[] f12518h = {f12511a, f12512b, f12513c, f12514d, f12515e, f12516f, f12517g};

        /* renamed from: i, reason: collision with root package name */
        public static final int f12519i = 1;

        /* renamed from: j, reason: collision with root package name */
        public static final int f12520j = 2;

        /* renamed from: k, reason: collision with root package name */
        public static final int f12521k = 1;

        /* renamed from: l, reason: collision with root package name */
        public static final int f12522l = 2;

        static {
            int[] iArr = {f12519i, f12520j};
            int[] iArr2 = {f12521k, f12522l};
        }

        public static int[] a() {
            return (int[]) f12518h.clone();
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static class f<ContainingType extends d6, Type> extends e4<ContainingType, Type> {

        /* renamed from: a, reason: collision with root package name */
        final d6 f12523a;

        /* renamed from: b, reason: collision with root package name */
        final c f12524b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.vision.x4, com.google.android.gms.internal.vision.u4] */
    public static x4 h() {
        return u4.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> z4<E> l() {
        return q6.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object a(int i2, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.vision.y2
    final void a(int i2) {
        this.zzwe = i2;
    }

    @Override // com.google.android.gms.internal.vision.d6
    public final /* synthetic */ c6 b() {
        return (a) a(e.f12515e, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.vision.f6
    public final /* synthetic */ d6 c() {
        return (s4) a(e.f12516f, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.vision.d6
    public final int d() {
        if (this.zzwe == -1) {
            this.zzwe = n6.a().a((n6) this).a(this);
        }
        return this.zzwe;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (((s4) a(e.f12516f, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return n6.a().a((n6) this).a(this, (s4<MessageType, BuilderType>) obj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.vision.y2
    final int f() {
        return this.zzwe;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <MessageType extends s4<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> BuilderType g() {
        return (BuilderType) a(e.f12515e, (Object) null, (Object) null);
    }

    public int hashCode() {
        int i2 = this.zzri;
        if (i2 != 0) {
            return i2;
        }
        this.zzri = n6.a().a((n6) this).c(this);
        return this.zzri;
    }

    @Override // com.google.android.gms.internal.vision.f6
    public final boolean isInitialized() {
        return a(this, Boolean.TRUE.booleanValue());
    }

    public String toString() {
        return e6.a(this, super.toString());
    }

    @Override // com.google.android.gms.internal.vision.d6
    public final void a(a4 a4Var) {
        n6.a().a((n6) this).a((r6) this, (e8) c4.a(a4Var));
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static abstract class a<MessageType extends s4<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends b3<MessageType, BuilderType> {

        /* renamed from: e, reason: collision with root package name */
        private final MessageType f12503e;

        /* renamed from: f, reason: collision with root package name */
        protected MessageType f12504f;

        /* renamed from: g, reason: collision with root package name */
        protected boolean f12505g = false;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(MessageType messagetype) {
            this.f12503e = messagetype;
            this.f12504f = (MessageType) messagetype.a(e.f12514d, null, null);
        }

        private final BuilderType b(byte[] bArr, int i2, int i3, d4 d4Var) {
            if (this.f12505g) {
                e();
                this.f12505g = false;
            }
            try {
                n6.a().a((n6) this.f12504f).a(this.f12504f, bArr, 0, i3 + 0, new g3(d4Var));
                return this;
            } catch (d5 e2) {
                throw e2;
            } catch (IOException e3) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e3);
            } catch (IndexOutOfBoundsException unused) {
                throw d5.zzgm();
            }
        }

        public final BuilderType a(MessageType messagetype) {
            if (this.f12505g) {
                e();
                this.f12505g = false;
            }
            a(this.f12504f, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.vision.f6
        public final /* synthetic */ d6 c() {
            return this.f12503e;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Object clone() {
            a aVar = (a) this.f12503e.a(e.f12515e, null, null);
            aVar.a((a) u());
            return aVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void e() {
            MessageType messagetype = (MessageType) this.f12504f.a(e.f12514d, null, null);
            a(messagetype, this.f12504f);
            this.f12504f = messagetype;
        }

        @Override // com.google.android.gms.internal.vision.c6
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public MessageType u() {
            if (this.f12505g) {
                return this.f12504f;
            }
            MessageType messagetype = this.f12504f;
            n6.a().a((n6) messagetype).e(messagetype);
            this.f12505g = true;
            return this.f12504f;
        }

        @Override // com.google.android.gms.internal.vision.c6
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public final MessageType j() {
            MessageType messagetype = (MessageType) u();
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw new j7(messagetype);
        }

        private static void a(MessageType messagetype, MessageType messagetype2) {
            n6.a().a((n6) messagetype).b(messagetype, messagetype2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.vision.b3
        protected final /* synthetic */ b3 a(y2 y2Var) {
            a((a<MessageType, BuilderType>) y2Var);
            return this;
        }

        public final /* synthetic */ b3 a(byte[] bArr, int i2, int i3, d4 d4Var) {
            b(bArr, 0, i3, d4Var);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends s4<?, ?>> T a(Class<T> cls) {
        s4<?, ?> s4Var = zzwf.get(cls);
        if (s4Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                s4Var = zzwf.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        if (s4Var == null) {
            s4Var = (T) ((s4) o7.a(cls)).a(e.f12516f, (Object) null, (Object) null);
            if (s4Var != null) {
                zzwf.put(cls, s4Var);
            } else {
                throw new IllegalStateException();
            }
        }
        return (T) s4Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends s4<?, ?>> void a(Class<T> cls, T t) {
        zzwf.put(cls, t);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object a(d6 d6Var, String str, Object[] objArr) {
        return new p6(d6Var, str, objArr);
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

    protected static final <T extends s4<T, ?>> boolean a(T t, boolean z) {
        byte byteValue = ((Byte) t.a(e.f12511a, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean b2 = n6.a().a((n6) t).b(t);
        if (z) {
            t.a(e.f12512b, b2 ? t : null, null);
        }
        return b2;
    }

    @Override // com.google.android.gms.internal.vision.d6
    public final /* synthetic */ c6 a() {
        a aVar = (a) a(e.f12515e, (Object) null, (Object) null);
        aVar.a((a) this);
        return aVar;
    }
}
