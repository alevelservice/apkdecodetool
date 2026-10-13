package a.m.b;

import android.content.Context;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: Loader.java */
/* loaded from: classes.dex */
public class b<D> {

    /* renamed from: a, reason: collision with root package name */
    int f428a;

    /* renamed from: b, reason: collision with root package name */
    InterfaceC0016b<D> f429b;

    /* renamed from: c, reason: collision with root package name */
    a<D> f430c;

    /* renamed from: d, reason: collision with root package name */
    boolean f431d = false;

    /* renamed from: e, reason: collision with root package name */
    boolean f432e = false;

    /* renamed from: f, reason: collision with root package name */
    boolean f433f = true;

    /* renamed from: g, reason: collision with root package name */
    boolean f434g = false;

    /* renamed from: h, reason: collision with root package name */
    boolean f435h = false;

    /* compiled from: Loader.java */
    /* loaded from: classes.dex */
    public interface a<D> {
        void a(@NonNull b<D> bVar);
    }

    /* compiled from: Loader.java */
    /* renamed from: a.m.b.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0016b<D> {
        void a(@NonNull b<D> bVar, @Nullable D d2);
    }

    public b(@NonNull Context context) {
        context.getApplicationContext();
    }

    @MainThread
    public void a(int i2, @NonNull InterfaceC0016b<D> interfaceC0016b) {
        if (this.f429b == null) {
            this.f429b = interfaceC0016b;
            this.f428a = i2;
            return;
        }
        throw new IllegalStateException("There is already a listener registered");
    }

    @MainThread
    public void b(@Nullable D d2) {
        InterfaceC0016b<D> interfaceC0016b = this.f429b;
        if (interfaceC0016b != null) {
            interfaceC0016b.a(this, d2);
        }
    }

    public void c() {
        this.f435h = false;
    }

    @MainThread
    public void d() {
        a<D> aVar = this.f430c;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    @MainThread
    public void e() {
        j();
    }

    public boolean f() {
        return this.f432e;
    }

    @MainThread
    protected void g() {
    }

    @MainThread
    protected boolean h() {
        throw null;
    }

    @MainThread
    public void i() {
        if (this.f431d) {
            e();
        } else {
            this.f434g = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @MainThread
    public void j() {
    }

    @MainThread
    protected void k() {
    }

    @MainThread
    protected void l() {
        throw null;
    }

    @MainThread
    protected void m() {
    }

    @MainThread
    public void n() {
        k();
        this.f433f = true;
        this.f431d = false;
        this.f432e = false;
        this.f434g = false;
        this.f435h = false;
    }

    public void o() {
        if (this.f435h) {
            i();
        }
    }

    @MainThread
    public final void p() {
        this.f431d = true;
        this.f433f = false;
        this.f432e = false;
        l();
    }

    @MainThread
    public void q() {
        this.f431d = false;
        m();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        a.i.m.b.a(this, sb);
        sb.append(" id=");
        sb.append(this.f428a);
        sb.append("}");
        return sb.toString();
    }

    @MainThread
    public boolean b() {
        return h();
    }

    @MainThread
    public void a(@NonNull InterfaceC0016b<D> interfaceC0016b) {
        InterfaceC0016b<D> interfaceC0016b2 = this.f429b;
        if (interfaceC0016b2 == null) {
            throw new IllegalStateException("No listener register");
        }
        if (interfaceC0016b2 == interfaceC0016b) {
            this.f429b = null;
            return;
        }
        throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }

    @MainThread
    public void a() {
        this.f432e = true;
        g();
    }

    @NonNull
    public String a(@Nullable D d2) {
        StringBuilder sb = new StringBuilder(64);
        a.i.m.b.a(d2, sb);
        sb.append("}");
        return sb.toString();
    }

    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.f428a);
        printWriter.print(" mListener=");
        printWriter.println(this.f429b);
        if (this.f431d || this.f434g || this.f435h) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.f431d);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.f434g);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.f435h);
        }
        if (this.f432e || this.f433f) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.f432e);
            printWriter.print(" mReset=");
            printWriter.println(this.f433f);
        }
    }
}
