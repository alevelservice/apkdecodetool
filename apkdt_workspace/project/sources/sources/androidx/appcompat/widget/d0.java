package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import androidx.core.content.res.e;

/* compiled from: TintTypedArray.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class d0 {

    /* renamed from: a, reason: collision with root package name */
    private final Context f1312a;

    /* renamed from: b, reason: collision with root package name */
    private final TypedArray f1313b;

    /* renamed from: c, reason: collision with root package name */
    private TypedValue f1314c;

    private d0(Context context, TypedArray typedArray) {
        this.f1312a = context;
        this.f1313b = typedArray;
    }

    public static d0 a(Context context, AttributeSet attributeSet, int[] iArr) {
        return new d0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public Drawable b(int i2) {
        int resourceId;
        if (this.f1313b.hasValue(i2) && (resourceId = this.f1313b.getResourceId(i2, 0)) != 0) {
            return a.a.k.a.a.c(this.f1312a, resourceId);
        }
        return this.f1313b.getDrawable(i2);
    }

    public Drawable c(int i2) {
        int resourceId;
        if (!this.f1313b.hasValue(i2) || (resourceId = this.f1313b.getResourceId(i2, 0)) == 0) {
            return null;
        }
        return f.b().a(this.f1312a, resourceId, true);
    }

    public String d(int i2) {
        return this.f1313b.getString(i2);
    }

    public CharSequence e(int i2) {
        return this.f1313b.getText(i2);
    }

    public int f(int i2, int i3) {
        return this.f1313b.getLayoutDimension(i2, i3);
    }

    public int g(int i2, int i3) {
        return this.f1313b.getResourceId(i2, i3);
    }

    public static d0 a(Context context, AttributeSet attributeSet, int[] iArr, int i2, int i3) {
        return new d0(context, context.obtainStyledAttributes(attributeSet, iArr, i2, i3));
    }

    public int d(int i2, int i3) {
        return this.f1313b.getInt(i2, i3);
    }

    public int e(int i2, int i3) {
        return this.f1313b.getInteger(i2, i3);
    }

    public CharSequence[] f(int i2) {
        return this.f1313b.getTextArray(i2);
    }

    public boolean g(int i2) {
        return this.f1313b.hasValue(i2);
    }

    public static d0 a(Context context, int i2, int[] iArr) {
        return new d0(context, context.obtainStyledAttributes(i2, iArr));
    }

    public int c(int i2, int i3) {
        return this.f1313b.getDimensionPixelSize(i2, i3);
    }

    public TypedArray a() {
        return this.f1313b;
    }

    public float b(int i2, float f2) {
        return this.f1313b.getFloat(i2, f2);
    }

    @Nullable
    public Typeface a(@StyleableRes int i2, int i3, @Nullable e.a aVar) {
        int resourceId = this.f1313b.getResourceId(i2, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f1314c == null) {
            this.f1314c = new TypedValue();
        }
        return androidx.core.content.res.e.a(this.f1312a, resourceId, this.f1314c, i3, aVar);
    }

    public int b(int i2, int i3) {
        return this.f1313b.getDimensionPixelOffset(i2, i3);
    }

    public void b() {
        this.f1313b.recycle();
    }

    public boolean a(int i2, boolean z) {
        return this.f1313b.getBoolean(i2, z);
    }

    public int a(int i2, int i3) {
        return this.f1313b.getColor(i2, i3);
    }

    public ColorStateList a(int i2) {
        int resourceId;
        ColorStateList b2;
        return (!this.f1313b.hasValue(i2) || (resourceId = this.f1313b.getResourceId(i2, 0)) == 0 || (b2 = a.a.k.a.a.b(this.f1312a, resourceId)) == null) ? this.f1313b.getColorStateList(i2) : b2;
    }

    public float a(int i2, float f2) {
        return this.f1313b.getDimension(i2, f2);
    }
}
