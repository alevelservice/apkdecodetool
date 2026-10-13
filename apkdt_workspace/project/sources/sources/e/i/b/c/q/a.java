package e.i.b.c.q;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;

/* compiled from: MaterialResources.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class a {
    @Nullable
    public static ColorStateList a(Context context, TypedArray typedArray, @StyleableRes int i2) {
        int resourceId;
        ColorStateList b2;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0 || (b2 = a.a.k.a.a.b(context, resourceId)) == null) ? typedArray.getColorStateList(i2) : b2;
    }

    @Nullable
    public static Drawable b(Context context, TypedArray typedArray, @StyleableRes int i2) {
        int resourceId;
        Drawable c2;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0 || (c2 = a.a.k.a.a.c(context, resourceId)) == null) ? typedArray.getDrawable(i2) : c2;
    }

    @Nullable
    public static b c(Context context, TypedArray typedArray, @StyleableRes int i2) {
        int resourceId;
        if (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0) {
            return null;
        }
        return new b(context, resourceId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @StyleableRes
    public static int a(TypedArray typedArray, @StyleableRes int i2, @StyleableRes int i3) {
        return typedArray.hasValue(i2) ? i2 : i3;
    }
}
