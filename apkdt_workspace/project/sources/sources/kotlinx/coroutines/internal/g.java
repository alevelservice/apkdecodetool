package kotlinx.coroutines.internal;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Comparator;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Metadata;
import kotlin.Result;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: ExceptionsConstuctor.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u001a*\u0010\n\u001a\u0018\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0006j\u0004\u0018\u0001`\u00072\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH\u0002\u001a1\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0006j\u0002`\u00072\u0014\b\u0004\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0006H\u0082\b\u001a!\u0010\u000f\u001a\u0004\u0018\u0001H\u0010\"\b\b\u0000\u0010\u0010*\u00020\u00052\u0006\u0010\u0011\u001a\u0002H\u0010H\u0000¢\u0006\u0002\u0010\u0012\u001a\u001b\u0010\u0013\u001a\u00020\t*\u0006\u0012\u0002\b\u00030\u00042\b\b\u0002\u0010\u0014\u001a\u00020\tH\u0082\u0010\u001a\u0018\u0010\u0015\u001a\u00020\t*\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u0016\u001a\u00020\tH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"4\u0010\u0002\u001a(\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0006j\u0002`\u00070\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000*(\b\u0002\u0010\u0017\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00062\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0006¨\u0006\u0018"}, d2 = {"cacheLock", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "exceptionCtors", "Ljava/util/WeakHashMap;", "Ljava/lang/Class;", "", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/Ctor;", "throwableFields", "", "createConstructor", "constructor", "Ljava/lang/reflect/Constructor;", "safeCtor", "block", "tryCopyException", "E", HummerConstants.NORMAL_EXCEPTION, "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "fieldsCount", "accumulator", "fieldsCountOrDefault", "defaultValue", "Ctor", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15})
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    private static final int f20067a = b(Throwable.class, -1);

    /* renamed from: b, reason: collision with root package name */
    private static final ReentrantReadWriteLock f20068b = new ReentrantReadWriteLock();

    /* renamed from: c, reason: collision with root package name */
    private static final WeakHashMap<Class<? extends Throwable>, kotlin.jvm.c.b<Throwable, Throwable>> f20069c = new WeakHashMap<>();

    /* compiled from: ExceptionsConstuctor.kt */
    /* loaded from: classes2.dex */
    public static final class a extends kotlin.jvm.d.i implements kotlin.jvm.c.b<Throwable, Throwable> {
        final /* synthetic */ Constructor $constructor$inlined;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Constructor constructor) {
            super(1);
            this.$constructor$inlined = constructor;
        }

        @Override // kotlin.jvm.c.b
        @Nullable
        public final Throwable invoke(@NotNull Throwable th) {
            Object m23constructorimpl;
            Object newInstance;
            kotlin.jvm.d.h.b(th, "e");
            try {
                Result.Companion companion = Result.INSTANCE;
                newInstance = this.$constructor$inlined.newInstance(th.getMessage(), th);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                m23constructorimpl = Result.m23constructorimpl(kotlin.o.a(th2));
            }
            if (newInstance != null) {
                m23constructorimpl = Result.m23constructorimpl((Throwable) newInstance);
                if (Result.m28isFailureimpl(m23constructorimpl)) {
                    m23constructorimpl = null;
                }
                return (Throwable) m23constructorimpl;
            }
            throw new kotlin.r("null cannot be cast to non-null type kotlin.Throwable");
        }
    }

    /* compiled from: ExceptionsConstuctor.kt */
    /* loaded from: classes2.dex */
    public static final class b extends kotlin.jvm.d.i implements kotlin.jvm.c.b<Throwable, Throwable> {
        final /* synthetic */ Constructor $constructor$inlined;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Constructor constructor) {
            super(1);
            this.$constructor$inlined = constructor;
        }

        @Override // kotlin.jvm.c.b
        @Nullable
        public final Throwable invoke(@NotNull Throwable th) {
            Object m23constructorimpl;
            Object newInstance;
            kotlin.jvm.d.h.b(th, "e");
            try {
                Result.Companion companion = Result.INSTANCE;
                newInstance = this.$constructor$inlined.newInstance(th);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                m23constructorimpl = Result.m23constructorimpl(kotlin.o.a(th2));
            }
            if (newInstance != null) {
                m23constructorimpl = Result.m23constructorimpl((Throwable) newInstance);
                if (Result.m28isFailureimpl(m23constructorimpl)) {
                    m23constructorimpl = null;
                }
                return (Throwable) m23constructorimpl;
            }
            throw new kotlin.r("null cannot be cast to non-null type kotlin.Throwable");
        }
    }

    /* compiled from: ExceptionsConstuctor.kt */
    /* loaded from: classes2.dex */
    public static final class c extends kotlin.jvm.d.i implements kotlin.jvm.c.b<Throwable, Throwable> {
        final /* synthetic */ Constructor $constructor$inlined;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Constructor constructor) {
            super(1);
            this.$constructor$inlined = constructor;
        }

        @Override // kotlin.jvm.c.b
        @Nullable
        public final Throwable invoke(@NotNull Throwable th) {
            Object m23constructorimpl;
            Object newInstance;
            kotlin.jvm.d.h.b(th, "e");
            try {
                Result.Companion companion = Result.INSTANCE;
                newInstance = this.$constructor$inlined.newInstance(th.getMessage());
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                m23constructorimpl = Result.m23constructorimpl(kotlin.o.a(th2));
            }
            if (newInstance != null) {
                Throwable th3 = (Throwable) newInstance;
                th3.initCause(th);
                m23constructorimpl = Result.m23constructorimpl(th3);
                if (Result.m28isFailureimpl(m23constructorimpl)) {
                    m23constructorimpl = null;
                }
                return (Throwable) m23constructorimpl;
            }
            throw new kotlin.r("null cannot be cast to non-null type kotlin.Throwable");
        }
    }

    /* compiled from: ExceptionsConstuctor.kt */
    /* loaded from: classes2.dex */
    public static final class d extends kotlin.jvm.d.i implements kotlin.jvm.c.b<Throwable, Throwable> {
        final /* synthetic */ Constructor $constructor$inlined;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Constructor constructor) {
            super(1);
            this.$constructor$inlined = constructor;
        }

        @Override // kotlin.jvm.c.b
        @Nullable
        public final Throwable invoke(@NotNull Throwable th) {
            Object m23constructorimpl;
            Object newInstance;
            kotlin.jvm.d.h.b(th, "e");
            try {
                Result.Companion companion = Result.INSTANCE;
                newInstance = this.$constructor$inlined.newInstance(new Object[0]);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                m23constructorimpl = Result.m23constructorimpl(kotlin.o.a(th2));
            }
            if (newInstance != null) {
                Throwable th3 = (Throwable) newInstance;
                th3.initCause(th);
                m23constructorimpl = Result.m23constructorimpl(th3);
                if (Result.m28isFailureimpl(m23constructorimpl)) {
                    m23constructorimpl = null;
                }
                return (Throwable) m23constructorimpl;
            }
            throw new kotlin.r("null cannot be cast to non-null type kotlin.Throwable");
        }
    }

    /* compiled from: Comparisons.kt */
    /* loaded from: classes2.dex */
    public static final class e<T> implements Comparator<T> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            int a2;
            Constructor constructor = (Constructor) t2;
            kotlin.jvm.d.h.a((Object) constructor, "it");
            Integer valueOf = Integer.valueOf(constructor.getParameterTypes().length);
            Constructor constructor2 = (Constructor) t;
            kotlin.jvm.d.h.a((Object) constructor2, "it");
            a2 = kotlin.w.b.a(valueOf, Integer.valueOf(constructor2.getParameterTypes().length));
            return a2;
        }
    }

    /* compiled from: ExceptionsConstuctor.kt */
    /* loaded from: classes2.dex */
    static final class f extends kotlin.jvm.d.i implements kotlin.jvm.c.b {
        public static final f INSTANCE = new f();

        f() {
            super(1);
        }

        @Override // kotlin.jvm.c.b
        @Nullable
        public final Void invoke(@NotNull Throwable th) {
            kotlin.jvm.d.h.b(th, "it");
            return null;
        }
    }

    /* compiled from: ExceptionsConstuctor.kt */
    /* renamed from: kotlinx.coroutines.internal.g$g, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static final class C0263g extends kotlin.jvm.d.i implements kotlin.jvm.c.b {
        public static final C0263g INSTANCE = new C0263g();

        C0263g() {
            super(1);
        }

        @Override // kotlin.jvm.c.b
        @Nullable
        public final Void invoke(@NotNull Throwable th) {
            kotlin.jvm.d.h.b(th, "it");
            return null;
        }
    }

    @Nullable
    public static final <E extends Throwable> E a(@NotNull E e2) {
        Object m23constructorimpl;
        List<Constructor> c2;
        ReentrantReadWriteLock.ReadLock readLock;
        int readHoldCount;
        ReentrantReadWriteLock.WriteLock writeLock;
        kotlin.jvm.d.h.b(e2, HummerConstants.NORMAL_EXCEPTION);
        if (e2 instanceof kotlinx.coroutines.x) {
            try {
                Result.Companion companion = Result.INSTANCE;
                m23constructorimpl = Result.m23constructorimpl(((kotlinx.coroutines.x) e2).createCopy());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                m23constructorimpl = Result.m23constructorimpl(kotlin.o.a(th));
            }
            if (Result.m28isFailureimpl(m23constructorimpl)) {
                m23constructorimpl = null;
            }
            return (E) m23constructorimpl;
        }
        ReentrantReadWriteLock.ReadLock readLock2 = f20068b.readLock();
        readLock2.lock();
        try {
            kotlin.jvm.c.b<Throwable, Throwable> bVar = f20069c.get(e2.getClass());
            if (bVar != null) {
                return (E) bVar.invoke(e2);
            }
            int i2 = 0;
            if (f20067a != b(e2.getClass(), 0)) {
                ReentrantReadWriteLock reentrantReadWriteLock = f20068b;
                readLock = reentrantReadWriteLock.readLock();
                readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
                for (int i3 = 0; i3 < readHoldCount; i3++) {
                    readLock.unlock();
                }
                writeLock = reentrantReadWriteLock.writeLock();
                writeLock.lock();
                try {
                    f20069c.put(e2.getClass(), f.INSTANCE);
                    kotlin.t tVar = kotlin.t.f19946a;
                    return null;
                } finally {
                    while (i2 < readHoldCount) {
                        readLock.lock();
                        i2++;
                    }
                    writeLock.unlock();
                }
            }
            Constructor<?>[] constructors = e2.getClass().getConstructors();
            kotlin.jvm.d.h.a((Object) constructors, "exception.javaClass.constructors");
            c2 = kotlin.v.e.c(constructors, new e());
            kotlin.jvm.c.b<Throwable, Throwable> bVar2 = null;
            for (Constructor constructor : c2) {
                kotlin.jvm.d.h.a((Object) constructor, "constructor");
                bVar2 = a((Constructor<?>) constructor);
                if (bVar2 != null) {
                    break;
                }
            }
            ReentrantReadWriteLock reentrantReadWriteLock2 = f20068b;
            readLock = reentrantReadWriteLock2.readLock();
            readHoldCount = reentrantReadWriteLock2.getWriteHoldCount() == 0 ? reentrantReadWriteLock2.getReadHoldCount() : 0;
            for (int i4 = 0; i4 < readHoldCount; i4++) {
                readLock.unlock();
            }
            writeLock = reentrantReadWriteLock2.writeLock();
            writeLock.lock();
            try {
                f20069c.put(e2.getClass(), bVar2 != null ? bVar2 : C0263g.INSTANCE);
                kotlin.t tVar2 = kotlin.t.f19946a;
                while (i2 < readHoldCount) {
                    readLock.lock();
                    i2++;
                }
                writeLock.unlock();
                if (bVar2 != null) {
                    return (E) bVar2.invoke(e2);
                }
                return null;
            } finally {
                while (i2 < readHoldCount) {
                    readLock.lock();
                    i2++;
                }
                writeLock.unlock();
            }
        } finally {
            readLock2.unlock();
        }
    }

    private static final int b(@NotNull Class<?> cls, int i2) {
        Object m23constructorimpl;
        kotlin.jvm.a.a(cls);
        try {
            Result.Companion companion = Result.INSTANCE;
            m23constructorimpl = Result.m23constructorimpl(Integer.valueOf(a(cls, 0, 1, null)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m23constructorimpl = Result.m23constructorimpl(kotlin.o.a(th));
        }
        Integer valueOf = Integer.valueOf(i2);
        if (Result.m28isFailureimpl(m23constructorimpl)) {
            m23constructorimpl = valueOf;
        }
        return ((Number) m23constructorimpl).intValue();
    }

    private static final kotlin.jvm.c.b<Throwable, Throwable> a(Constructor<?> constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        int length = parameterTypes.length;
        if (length == 0) {
            return new d(constructor);
        }
        if (length != 1) {
            if (length == 2 && kotlin.jvm.d.h.a(parameterTypes[0], String.class) && kotlin.jvm.d.h.a(parameterTypes[1], Throwable.class)) {
                return new a(constructor);
            }
            return null;
        }
        Class<?> cls = parameterTypes[0];
        if (kotlin.jvm.d.h.a(cls, Throwable.class)) {
            return new b(constructor);
        }
        if (kotlin.jvm.d.h.a(cls, String.class)) {
            return new c(constructor);
        }
        return null;
    }

    static /* synthetic */ int a(Class cls, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = 0;
        }
        return a(cls, i2);
    }

    private static final int a(@NotNull Class<?> cls, int i2) {
        do {
            Field[] declaredFields = cls.getDeclaredFields();
            kotlin.jvm.d.h.a((Object) declaredFields, "declaredFields");
            int i3 = 0;
            for (Field field : declaredFields) {
                kotlin.jvm.d.h.a((Object) field, "it");
                if (!Modifier.isStatic(r4.getModifiers())) {
                    i3++;
                }
            }
            i2 += i3;
            cls = cls.getSuperclass();
        } while (cls != null);
        return i2;
    }
}
