package e.i.b.c.r;

import android.R;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.StateSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* compiled from: RippleUtils.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f17937a;

    /* renamed from: b, reason: collision with root package name */
    private static final int[] f17938b;

    /* renamed from: c, reason: collision with root package name */
    private static final int[] f17939c;

    /* renamed from: d, reason: collision with root package name */
    private static final int[] f17940d;

    /* renamed from: e, reason: collision with root package name */
    private static final int[] f17941e;

    /* renamed from: f, reason: collision with root package name */
    private static final int[] f17942f;

    /* renamed from: g, reason: collision with root package name */
    private static final int[] f17943g;

    /* renamed from: h, reason: collision with root package name */
    private static final int[] f17944h;

    /* renamed from: i, reason: collision with root package name */
    private static final int[] f17945i;

    /* renamed from: j, reason: collision with root package name */
    private static final int[] f17946j;

    static {
        f17937a = Build.VERSION.SDK_INT >= 21;
        f17938b = new int[]{R.attr.state_pressed};
        f17939c = new int[]{R.attr.state_hovered, R.attr.state_focused};
        f17940d = new int[]{R.attr.state_focused};
        f17941e = new int[]{R.attr.state_hovered};
        f17942f = new int[]{R.attr.state_selected, R.attr.state_pressed};
        f17943g = new int[]{R.attr.state_selected, R.attr.state_hovered, R.attr.state_focused};
        f17944h = new int[]{R.attr.state_selected, R.attr.state_focused};
        f17945i = new int[]{R.attr.state_selected, R.attr.state_hovered};
        f17946j = new int[]{R.attr.state_selected};
    }

    @NonNull
    public static ColorStateList a(@Nullable ColorStateList colorStateList) {
        if (f17937a) {
            return new ColorStateList(new int[][]{f17946j, StateSet.NOTHING}, new int[]{a(colorStateList, f17942f), a(colorStateList, f17938b)});
        }
        int[] iArr = f17942f;
        int[] iArr2 = f17943g;
        int[] iArr3 = f17944h;
        int[] iArr4 = f17945i;
        int[] iArr5 = f17938b;
        int[] iArr6 = f17939c;
        int[] iArr7 = f17940d;
        int[] iArr8 = f17941e;
        return new ColorStateList(new int[][]{iArr, iArr2, iArr3, iArr4, f17946j, iArr5, iArr6, iArr7, iArr8, StateSet.NOTHING}, new int[]{a(colorStateList, iArr), a(colorStateList, iArr2), a(colorStateList, iArr3), a(colorStateList, iArr4), 0, a(colorStateList, iArr5), a(colorStateList, iArr6), a(colorStateList, iArr7), a(colorStateList, iArr8), 0});
    }

    @ColorInt
    private static int a(@Nullable ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return f17937a ? a(colorForState) : colorForState;
    }

    @ColorInt
    @TargetApi(21)
    private static int a(@ColorInt int i2) {
        return a.i.h.a.c(i2, Math.min(Color.alpha(i2) * 2, 255));
    }
}
