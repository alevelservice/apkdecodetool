package a.m.a;

import a.m.a.a;
import a.m.b.b;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.h;
import androidx.lifecycle.m;
import androidx.lifecycle.n;
import androidx.lifecycle.p;
import androidx.lifecycle.q;
import androidx.lifecycle.r;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LoaderManagerImpl.java */
/* loaded from: classes.dex */
public class b extends a.m.a.a {

    /* renamed from: c, reason: collision with root package name */
    static boolean f413c = false;

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final h f414a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final c f415b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoaderManagerImpl.java */
    /* loaded from: classes.dex */
    public static class c extends p {

        /* renamed from: d, reason: collision with root package name */
        private static final q.a f421d = new a();

        /* renamed from: b, reason: collision with root package name */
        private a.e.h<a> f422b = new a.e.h<>();

        /* renamed from: c, reason: collision with root package name */
        private boolean f423c = false;

        /* compiled from: LoaderManagerImpl.java */
        /* loaded from: classes.dex */
        static class a implements q.a {
            a() {
            }

            @Override // androidx.lifecycle.q.a
            @NonNull
            public <T extends p> T a(@NonNull Class<T> cls) {
                return new c();
            }
        }

        c() {
        }

        @NonNull
        static c a(r rVar) {
            return (c) new q(rVar, f421d).a(c.class);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.lifecycle.p
        public void b() {
            super.b();
            int b2 = this.f422b.b();
            for (int i2 = 0; i2 < b2; i2++) {
                this.f422b.e(i2).a(true);
            }
            this.f422b.a();
        }

        void c() {
            this.f423c = false;
        }

        boolean d() {
            return this.f423c;
        }

        void e() {
            int b2 = this.f422b.b();
            for (int i2 = 0; i2 < b2; i2++) {
                this.f422b.e(i2).f();
            }
        }

        void f() {
            this.f423c = true;
        }

        void a(int i2, @NonNull a aVar) {
            this.f422b.c(i2, aVar);
        }

        <D> a<D> a(int i2) {
            return this.f422b.a(i2);
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f422b.b() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i2 = 0; i2 < this.f422b.b(); i2++) {
                    a e2 = this.f422b.e(i2);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f422b.c(i2));
                    printWriter.print(": ");
                    printWriter.println(e2.toString());
                    e2.a(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@NonNull h hVar, @NonNull r rVar) {
        this.f414a = hVar;
        this.f415b = c.a(rVar);
    }

    @NonNull
    @MainThread
    private <D> a.m.b.b<D> a(int i2, @Nullable Bundle bundle, @NonNull a.InterfaceC0013a<D> interfaceC0013a, @Nullable a.m.b.b<D> bVar) {
        try {
            this.f415b.f();
            a.m.b.b<D> a2 = interfaceC0013a.a(i2, bundle);
            if (a2 != null) {
                if (a2.getClass().isMemberClass() && !Modifier.isStatic(a2.getClass().getModifiers())) {
                    throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + a2);
                }
                a aVar = new a(i2, bundle, a2, bVar);
                if (f413c) {
                    String str = "  Created new loader " + aVar;
                }
                this.f415b.a(i2, aVar);
                this.f415b.c();
                return aVar.a(this.f414a, interfaceC0013a);
            }
            throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
        } catch (Throwable th) {
            this.f415b.c();
            throw th;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        a.i.m.b.a(this.f414a, sb);
        sb.append("}}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoaderManagerImpl.java */
    /* renamed from: a.m.a.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0014b<D> implements n<D> {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final a.m.b.b<D> f418a;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        private final a.InterfaceC0013a<D> f419b;

        /* renamed from: c, reason: collision with root package name */
        private boolean f420c = false;

        C0014b(@NonNull a.m.b.b<D> bVar, @NonNull a.InterfaceC0013a<D> interfaceC0013a) {
            this.f418a = bVar;
            this.f419b = interfaceC0013a;
        }

        @Override // androidx.lifecycle.n
        public void a(@Nullable D d2) {
            if (b.f413c) {
                String str = "  onLoadFinished in " + this.f418a + ": " + this.f418a.a((a.m.b.b<D>) d2);
            }
            this.f419b.a((a.m.b.b<a.m.b.b<D>>) this.f418a, (a.m.b.b<D>) d2);
            this.f420c = true;
        }

        @MainThread
        void b() {
            if (this.f420c) {
                if (b.f413c) {
                    String str = "  Resetting: " + this.f418a;
                }
                this.f419b.a(this.f418a);
            }
        }

        public String toString() {
            return this.f419b.toString();
        }

        boolean a() {
            return this.f420c;
        }

        public void a(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.f420c);
        }
    }

    /* compiled from: LoaderManagerImpl.java */
    /* loaded from: classes.dex */
    public static class a<D> extends m<D> implements b.InterfaceC0016b<D> {

        /* renamed from: k, reason: collision with root package name */
        private final int f416k;

        /* renamed from: l, reason: collision with root package name */
        @Nullable
        private final Bundle f417l;

        @NonNull
        private final a.m.b.b<D> m;
        private h n;
        private C0014b<D> o;
        private a.m.b.b<D> p;

        a(int i2, @Nullable Bundle bundle, @NonNull a.m.b.b<D> bVar, @Nullable a.m.b.b<D> bVar2) {
            this.f416k = i2;
            this.f417l = bundle;
            this.m = bVar;
            this.p = bVar2;
            this.m.a(i2, this);
        }

        @NonNull
        @MainThread
        a.m.b.b<D> a(@NonNull h hVar, @NonNull a.InterfaceC0013a<D> interfaceC0013a) {
            C0014b<D> c0014b = new C0014b<>(this.m, interfaceC0013a);
            a(hVar, c0014b);
            C0014b<D> c0014b2 = this.o;
            if (c0014b2 != null) {
                a((n) c0014b2);
            }
            this.n = hVar;
            this.o = c0014b;
            return this.m;
        }

        @Override // androidx.lifecycle.m, androidx.lifecycle.LiveData
        public void b(D d2) {
            super.b((a<D>) d2);
            a.m.b.b<D> bVar = this.p;
            if (bVar != null) {
                bVar.n();
                this.p = null;
            }
        }

        @Override // androidx.lifecycle.LiveData
        protected void c() {
            if (b.f413c) {
                String str = "  Starting: " + this;
            }
            this.m.p();
        }

        @Override // androidx.lifecycle.LiveData
        protected void d() {
            if (b.f413c) {
                String str = "  Stopping: " + this;
            }
            this.m.q();
        }

        @NonNull
        a.m.b.b<D> e() {
            return this.m;
        }

        void f() {
            h hVar = this.n;
            C0014b<D> c0014b = this.o;
            if (hVar == null || c0014b == null) {
                return;
            }
            super.a((n) c0014b);
            a(hVar, c0014b);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f416k);
            sb.append(" : ");
            a.i.m.b.a(this.m, sb);
            sb.append("}}");
            return sb.toString();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void a(@NonNull n<? super D> nVar) {
            super.a((n) nVar);
            this.n = null;
            this.o = null;
        }

        @MainThread
        a.m.b.b<D> a(boolean z) {
            if (b.f413c) {
                String str = "  Destroying: " + this;
            }
            this.m.b();
            this.m.a();
            C0014b<D> c0014b = this.o;
            if (c0014b != null) {
                a((n) c0014b);
                if (z) {
                    c0014b.b();
                }
            }
            this.m.a((b.InterfaceC0016b) this);
            if ((c0014b != null && !c0014b.a()) || z) {
                this.m.n();
                return this.p;
            }
            return this.m;
        }

        @Override // a.m.b.b.InterfaceC0016b
        public void a(@NonNull a.m.b.b<D> bVar, @Nullable D d2) {
            if (b.f413c) {
                String str = "onLoadComplete: " + this;
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                b((a<D>) d2);
            } else {
                boolean z = b.f413c;
                a((a<D>) d2);
            }
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f416k);
            printWriter.print(" mArgs=");
            printWriter.println(this.f417l);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.m);
            this.m.a(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.o != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.o);
                this.o.a(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(e().a((a.m.b.b<D>) a()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(b());
        }
    }

    @Override // a.m.a.a
    @NonNull
    @MainThread
    public <D> a.m.b.b<D> a(int i2, @Nullable Bundle bundle, @NonNull a.InterfaceC0013a<D> interfaceC0013a) {
        if (!this.f415b.d()) {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                a<D> a2 = this.f415b.a(i2);
                if (f413c) {
                    String str = "initLoader in " + this + ": args=" + bundle;
                }
                if (a2 == null) {
                    return a(i2, bundle, interfaceC0013a, (a.m.b.b) null);
                }
                if (f413c) {
                    String str2 = "  Re-using existing loader " + a2;
                }
                return a2.a(this.f414a, interfaceC0013a);
            }
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        throw new IllegalStateException("Called while creating a loader");
    }

    @Override // a.m.a.a
    public void a() {
        this.f415b.e();
    }

    @Override // a.m.a.a
    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f415b.a(str, fileDescriptor, printWriter, strArr);
    }
}
