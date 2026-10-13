package a.m.a;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.h;
import androidx.lifecycle.s;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: LoaderManager.java */
/* loaded from: classes.dex */
public abstract class a {

    /* compiled from: LoaderManager.java */
    /* renamed from: a.m.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0013a<D> {
        @NonNull
        @MainThread
        a.m.b.b<D> a(int i2, @Nullable Bundle bundle);

        @MainThread
        void a(@NonNull a.m.b.b<D> bVar);

        @MainThread
        void a(@NonNull a.m.b.b<D> bVar, D d2);
    }

    @NonNull
    public static <T extends h & s> a a(@NonNull T t) {
        return new b(t, t.getViewModelStore());
    }

    @NonNull
    @MainThread
    public abstract <D> a.m.b.b<D> a(int i2, @Nullable Bundle bundle, @NonNull InterfaceC0013a<D> interfaceC0013a);

    public abstract void a();

    @Deprecated
    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);
}
