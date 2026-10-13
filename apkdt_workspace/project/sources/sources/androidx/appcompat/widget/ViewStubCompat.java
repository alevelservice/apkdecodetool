package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.ref.WeakReference;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class ViewStubCompat extends View {

    /* renamed from: e, reason: collision with root package name */
    private int f1267e;

    /* renamed from: f, reason: collision with root package name */
    private int f1268f;

    /* renamed from: g, reason: collision with root package name */
    private WeakReference<View> f1269g;

    /* renamed from: h, reason: collision with root package name */
    private LayoutInflater f1270h;

    /* renamed from: i, reason: collision with root package name */
    private a f1271i;

    /* loaded from: classes.dex */
    public interface a {
        void a(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    public int getInflatedId() {
        return this.f1268f;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f1270h;
    }

    public int getLayoutResource() {
        return this.f1267e;
    }

    public View inflate() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            if (this.f1267e != 0) {
                ViewGroup viewGroup = (ViewGroup) parent;
                LayoutInflater layoutInflater = this.f1270h;
                if (layoutInflater == null) {
                    layoutInflater = LayoutInflater.from(getContext());
                }
                View inflate = layoutInflater.inflate(this.f1267e, viewGroup, false);
                int i2 = this.f1268f;
                if (i2 != -1) {
                    inflate.setId(i2);
                }
                int indexOfChild = viewGroup.indexOfChild(this);
                viewGroup.removeViewInLayout(this);
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                if (layoutParams != null) {
                    viewGroup.addView(inflate, indexOfChild, layoutParams);
                } else {
                    viewGroup.addView(inflate, indexOfChild);
                }
                this.f1269g = new WeakReference<>(inflate);
                a aVar = this.f1271i;
                if (aVar != null) {
                    aVar.a(this, inflate);
                }
                return inflate;
            }
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
        throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i2) {
        this.f1268f = i2;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f1270h = layoutInflater;
    }

    public void setLayoutResource(int i2) {
        this.f1267e = i2;
    }

    public void setOnInflateListener(a aVar) {
        this.f1271i = aVar;
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        WeakReference<View> weakReference = this.f1269g;
        if (weakReference != null) {
            View view = weakReference.get();
            if (view != null) {
                view.setVisibility(i2);
                return;
            }
            throw new IllegalStateException("setVisibility called on un-referenced view");
        }
        super.setVisibility(i2);
        if (i2 == 0 || i2 == 4) {
            inflate();
        }
    }

    public ViewStubCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f1267e = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.a.j.ViewStubCompat, i2, 0);
        this.f1268f = obtainStyledAttributes.getResourceId(a.a.j.ViewStubCompat_android_inflatedId, -1);
        this.f1267e = obtainStyledAttributes.getResourceId(a.a.j.ViewStubCompat_android_layout, 0);
        setId(obtainStyledAttributes.getResourceId(a.a.j.ViewStubCompat_android_id, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }
}
