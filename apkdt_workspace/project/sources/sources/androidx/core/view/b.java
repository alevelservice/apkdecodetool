package androidx.core.view;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.RestrictTo;

/* compiled from: ActionProvider.java */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    private a f1920a;

    /* renamed from: b, reason: collision with root package name */
    private InterfaceC0037b f1921b;

    /* compiled from: ActionProvider.java */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public interface a {
        void b(boolean z);
    }

    /* compiled from: ActionProvider.java */
    /* renamed from: androidx.core.view.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0037b {
        void onActionProviderVisibilityChanged(boolean z);
    }

    public b(Context context) {
    }

    public View a(MenuItem menuItem) {
        return c();
    }

    public void a(SubMenu subMenu) {
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return true;
    }

    public abstract View c();

    public boolean d() {
        return false;
    }

    public boolean e() {
        return false;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void f() {
        this.f1921b = null;
        this.f1920a = null;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void a(boolean z) {
        a aVar = this.f1920a;
        if (aVar != null) {
            aVar.b(z);
        }
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void a(a aVar) {
        this.f1920a = aVar;
    }

    public void a(InterfaceC0037b interfaceC0037b) {
        if (this.f1921b != null && interfaceC0037b != null) {
            String str = "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?";
        }
        this.f1921b = interfaceC0037b;
    }
}
