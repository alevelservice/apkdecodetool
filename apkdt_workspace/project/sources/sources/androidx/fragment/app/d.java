package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.s;

/* compiled from: FragmentController.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private final f<?> f2188a;

    private d(f<?> fVar) {
        this.f2188a = fVar;
    }

    @NonNull
    public static d a(@NonNull f<?> fVar) {
        a.i.m.i.a(fVar, "callbacks == null");
        return new d(fVar);
    }

    public void b() {
        this.f2188a.f2194i.j();
    }

    public void c() {
        this.f2188a.f2194i.k();
    }

    public void d() {
        this.f2188a.f2194i.m();
    }

    public void e() {
        this.f2188a.f2194i.n();
    }

    public void f() {
        this.f2188a.f2194i.p();
    }

    public void g() {
        this.f2188a.f2194i.q();
    }

    public void h() {
        this.f2188a.f2194i.r();
    }

    public boolean i() {
        return this.f2188a.f2194i.t();
    }

    @NonNull
    public g j() {
        return this.f2188a.f2194i;
    }

    public void k() {
        this.f2188a.f2194i.z();
    }

    @Nullable
    public Parcelable l() {
        return this.f2188a.f2194i.B();
    }

    @Nullable
    public Fragment a(@NonNull String str) {
        return this.f2188a.f2194i.b(str);
    }

    public void b(boolean z) {
        this.f2188a.f2194i.b(z);
    }

    public void a(@Nullable Fragment fragment) {
        f<?> fVar = this.f2188a;
        fVar.f2194i.a(fVar, fVar, fragment);
    }

    public boolean b(@NonNull Menu menu) {
        return this.f2188a.f2194i.b(menu);
    }

    @Nullable
    public View a(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        return this.f2188a.f2194i.onCreateView(view, str, context, attributeSet);
    }

    public boolean b(@NonNull MenuItem menuItem) {
        return this.f2188a.f2194i.b(menuItem);
    }

    public void a(@Nullable Parcelable parcelable) {
        f<?> fVar = this.f2188a;
        if (fVar instanceof s) {
            fVar.f2194i.a(parcelable);
            return;
        }
        throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
    }

    public void a() {
        this.f2188a.f2194i.i();
    }

    public void a(boolean z) {
        this.f2188a.f2194i.a(z);
    }

    public void a(@NonNull Configuration configuration) {
        this.f2188a.f2194i.a(configuration);
    }

    public boolean a(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        return this.f2188a.f2194i.a(menu, menuInflater);
    }

    public boolean a(@NonNull MenuItem menuItem) {
        return this.f2188a.f2194i.a(menuItem);
    }

    public void a(@NonNull Menu menu) {
        this.f2188a.f2194i.a(menu);
    }
}
