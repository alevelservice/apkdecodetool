package androidx.viewpager.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: PagerAdapter.java */
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    private final DataSetObservable f3067a = new DataSetObservable();

    public abstract int a();

    public int a(@NonNull Object obj) {
        return -1;
    }

    @Nullable
    public CharSequence a(int i2) {
        return null;
    }

    @NonNull
    public Object a(@NonNull ViewGroup viewGroup, int i2) {
        return a((View) viewGroup, i2);
    }

    public void a(@Nullable Parcelable parcelable, @Nullable ClassLoader classLoader) {
    }

    @Deprecated
    public void a(@NonNull View view) {
    }

    public abstract boolean a(@NonNull View view, @NonNull Object obj);

    public float b(int i2) {
        return 1.0f;
    }

    @Nullable
    public Parcelable b() {
        return null;
    }

    @Deprecated
    public void b(@NonNull View view) {
    }

    @Deprecated
    public void b(@NonNull View view, int i2, @NonNull Object obj) {
    }

    public void b(@NonNull ViewGroup viewGroup) {
        b((View) viewGroup);
    }

    public void c(@NonNull DataSetObserver dataSetObserver) {
        this.f3067a.unregisterObserver(dataSetObserver);
    }

    public void a(@NonNull ViewGroup viewGroup, int i2, @NonNull Object obj) {
        a((View) viewGroup, i2, obj);
    }

    public void b(@NonNull ViewGroup viewGroup, int i2, @NonNull Object obj) {
        b((View) viewGroup, i2, obj);
    }

    public void a(@NonNull ViewGroup viewGroup) {
        a((View) viewGroup);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(DataSetObserver dataSetObserver) {
        synchronized (this) {
        }
    }

    @NonNull
    @Deprecated
    public Object a(@NonNull View view, int i2) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    @Deprecated
    public void a(@NonNull View view, int i2, @NonNull Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public void a(@NonNull DataSetObserver dataSetObserver) {
        this.f3067a.registerObserver(dataSetObserver);
    }
}
