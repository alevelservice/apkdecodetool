package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;

@RestrictTo({RestrictTo.a.LIBRARY})
/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: e, reason: collision with root package name */
    private TypedValue f1164e;

    /* renamed from: f, reason: collision with root package name */
    private TypedValue f1165f;

    /* renamed from: g, reason: collision with root package name */
    private TypedValue f1166g;

    /* renamed from: h, reason: collision with root package name */
    private TypedValue f1167h;

    /* renamed from: i, reason: collision with root package name */
    private TypedValue f1168i;

    /* renamed from: j, reason: collision with root package name */
    private TypedValue f1169j;

    /* renamed from: k, reason: collision with root package name */
    private final Rect f1170k;

    /* renamed from: l, reason: collision with root package name */
    private a f1171l;

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void dispatchFitSystemWindows(Rect rect) {
        fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f1168i == null) {
            this.f1168i = new TypedValue();
        }
        return this.f1168i;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f1169j == null) {
            this.f1169j = new TypedValue();
        }
        return this.f1169j;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f1166g == null) {
            this.f1166g = new TypedValue();
        }
        return this.f1166g;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f1167h == null) {
            this.f1167h = new TypedValue();
        }
        return this.f1167h;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f1164e == null) {
            this.f1164e = new TypedValue();
        }
        return this.f1164e;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f1165f == null) {
            this.f1165f = new TypedValue();
        }
        return this.f1165f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a aVar = this.f1171l;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a aVar = this.f1171l;
        if (aVar != null) {
            aVar.onDetachedFromWindow();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b0  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(a aVar) {
        this.f1171l = aVar;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setDecorPadding(int i2, int i3, int i4, int i5) {
        this.f1170k.set(i2, i3, i4, i5);
        if (ViewCompat.D(this)) {
            requestLayout();
        }
    }

    public ContentFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f1170k = new Rect();
    }
}
