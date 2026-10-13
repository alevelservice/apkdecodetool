package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

/* compiled from: FragmentManager.java */
/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: f, reason: collision with root package name */
    static final e f2195f = new e();

    /* renamed from: e, reason: collision with root package name */
    private e f2196e = null;

    /* compiled from: FragmentManager.java */
    /* loaded from: classes.dex */
    public interface a {
    }

    /* compiled from: FragmentManager.java */
    /* loaded from: classes.dex */
    public static abstract class b {
        public abstract void a(@NonNull g gVar, @NonNull Fragment fragment);

        public abstract void a(@NonNull g gVar, @NonNull Fragment fragment, @NonNull Context context);

        public abstract void a(@NonNull g gVar, @NonNull Fragment fragment, @Nullable Bundle bundle);

        public abstract void a(@NonNull g gVar, @NonNull Fragment fragment, @NonNull View view, @Nullable Bundle bundle);

        public abstract void b(@NonNull g gVar, @NonNull Fragment fragment);

        public abstract void b(@NonNull g gVar, @NonNull Fragment fragment, @NonNull Context context);

        public abstract void b(@NonNull g gVar, @NonNull Fragment fragment, @Nullable Bundle bundle);

        public abstract void c(@NonNull g gVar, @NonNull Fragment fragment);

        public abstract void c(@NonNull g gVar, @NonNull Fragment fragment, @Nullable Bundle bundle);

        public abstract void d(@NonNull g gVar, @NonNull Fragment fragment);

        public abstract void d(@NonNull g gVar, @NonNull Fragment fragment, @NonNull Bundle bundle);

        public abstract void e(@NonNull g gVar, @NonNull Fragment fragment);

        public abstract void f(@NonNull g gVar, @NonNull Fragment fragment);

        public abstract void g(@NonNull g gVar, @NonNull Fragment fragment);
    }

    /* compiled from: FragmentManager.java */
    /* loaded from: classes.dex */
    public interface c {
        void a();
    }

    @Nullable
    public abstract Fragment a(@IdRes int i2);

    @Nullable
    public abstract Fragment a(@Nullable String str);

    @NonNull
    public abstract j a();

    public abstract void a(int i2, int i3);

    public void a(@NonNull e eVar) {
        this.f2196e = eVar;
    }

    public abstract void a(@Nullable String str, int i2);

    public abstract void a(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr);

    public abstract boolean b();

    public abstract int c();

    @NonNull
    public e d() {
        if (this.f2196e == null) {
            this.f2196e = f2195f;
        }
        return this.f2196e;
    }

    @NonNull
    public abstract List<Fragment> e();

    public abstract void f();

    public abstract boolean g();
}
