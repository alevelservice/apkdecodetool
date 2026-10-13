package kotlin.coroutines.jvm.internal;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DebugMetadata.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bÂ\u0002\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\bR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lkotlin/coroutines/jvm/internal/ModuleNameRetriever;", "", "()V", "cache", "Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;", "notOnJava9", "buildCache", "continuation", "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "getModuleName", "", "Cache", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlin.coroutines.jvm.internal.h, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public final class ModuleNameRetriever {

    /* renamed from: b, reason: collision with root package name */
    @JvmField
    @Nullable
    public static a f19927b;

    /* renamed from: c, reason: collision with root package name */
    public static final ModuleNameRetriever f19928c = new ModuleNameRetriever();

    /* renamed from: a, reason: collision with root package name */
    private static final a f19926a = new a(null, null, null);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DebugMetadata.kt */
    /* renamed from: kotlin.coroutines.jvm.internal.h$a */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        @JvmField
        @Nullable
        public final Method f19929a;

        /* renamed from: b, reason: collision with root package name */
        @JvmField
        @Nullable
        public final Method f19930b;

        /* renamed from: c, reason: collision with root package name */
        @JvmField
        @Nullable
        public final Method f19931c;

        public a(@Nullable Method method, @Nullable Method method2, @Nullable Method method3) {
            this.f19929a = method;
            this.f19930b = method2;
            this.f19931c = method3;
        }
    }

    private ModuleNameRetriever() {
    }

    private final a b(kotlin.coroutines.jvm.internal.a aVar) {
        try {
            a aVar2 = new a(Class.class.getDeclaredMethod("getModule", new Class[0]), aVar.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), aVar.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]));
            f19927b = aVar2;
            return aVar2;
        } catch (Exception unused) {
            a aVar3 = f19926a;
            f19927b = aVar3;
            return aVar3;
        }
    }

    @Nullable
    public final String a(@NotNull kotlin.coroutines.jvm.internal.a aVar) {
        Method method;
        Object invoke;
        Method method2;
        Object invoke2;
        kotlin.jvm.d.h.b(aVar, "continuation");
        a aVar2 = f19927b;
        if (aVar2 == null) {
            aVar2 = b(aVar);
        }
        if (aVar2 == f19926a || (method = aVar2.f19929a) == null || (invoke = method.invoke(aVar.getClass(), new Object[0])) == null || (method2 = aVar2.f19930b) == null || (invoke2 = method2.invoke(invoke, new Object[0])) == null) {
            return null;
        }
        Method method3 = aVar2.f19931c;
        Object invoke3 = method3 != null ? method3.invoke(invoke2, new Object[0]) : null;
        if (!(invoke3 instanceof String)) {
            invoke3 = null;
        }
        return (String) invoke3;
    }
}
