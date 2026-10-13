package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;

/* compiled from: MenuPresenter.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public interface m {

    /* compiled from: MenuPresenter.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(f fVar, boolean z);

        boolean a(f fVar);
    }

    void a(Context context, f fVar);

    void a(Parcelable parcelable);

    void a(f fVar, boolean z);

    void a(a aVar);

    void a(boolean z);

    boolean a();

    boolean a(f fVar, i iVar);

    boolean a(r rVar);

    Parcelable b();

    boolean b(f fVar, i iVar);

    int getId();
}
