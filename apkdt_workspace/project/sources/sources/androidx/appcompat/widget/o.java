package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.view.menu.m;

/* compiled from: DecorToolbar.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public interface o {
    androidx.core.view.a0 a(int i2, long j2);

    void a();

    void a(int i2);

    void a(Drawable drawable);

    void a(SparseArray<Parcelable> sparseArray);

    void a(m.a aVar, f.a aVar2);

    void a(ScrollingTabContainerView scrollingTabContainerView);

    void a(boolean z);

    void b(int i2);

    void b(SparseArray<Parcelable> sparseArray);

    void b(boolean z);

    boolean b();

    Menu c();

    void c(int i2);

    boolean canShowOverflowMenu();

    void collapseActionView();

    int d();

    boolean e();

    ViewGroup f();

    boolean g();

    Context getContext();

    CharSequence getTitle();

    int h();

    boolean hideOverflowMenu();

    void i();

    boolean isOverflowMenuShowPending();

    boolean isOverflowMenuShowing();

    void j();

    void setIcon(int i2);

    void setIcon(Drawable drawable);

    void setMenu(Menu menu, m.a aVar);

    void setMenuPrepared();

    void setTitle(CharSequence charSequence);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);

    boolean showOverflowMenu();
}
