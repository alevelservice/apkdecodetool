package androidx.appcompat.view.menu;

import androidx.annotation.RestrictTo;

/* compiled from: MenuView.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public interface n {

    /* compiled from: MenuView.java */
    /* loaded from: classes.dex */
    public interface a {
        i getItemData();

        void initialize(i iVar, int i2);

        boolean prefersCondensedTitle();
    }

    void initialize(f fVar);
}
