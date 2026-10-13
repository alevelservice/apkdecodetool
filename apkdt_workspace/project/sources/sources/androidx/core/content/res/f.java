package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.AnyRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: TypedArrayUtils.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class f {
    public static boolean a(@NonNull XmlPullParser xmlPullParser, @NonNull String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    public static int b(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i2, int i3) {
        return !a(xmlPullParser, str) ? i3 : typedArray.getInt(i2, i3);
    }

    @AnyRes
    public static int c(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i2, @AnyRes int i3) {
        return !a(xmlPullParser, str) ? i3 : typedArray.getResourceId(i2, i3);
    }

    public static float a(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i2, float f2) {
        return !a(xmlPullParser, str) ? f2 : typedArray.getFloat(i2, f2);
    }

    @Nullable
    public static TypedValue b(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, int i2) {
        if (a(xmlPullParser, str)) {
            return typedArray.peekValue(i2);
        }
        return null;
    }

    public static boolean a(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i2, boolean z) {
        return !a(xmlPullParser, str) ? z : typedArray.getBoolean(i2, z);
    }

    @ColorInt
    public static int a(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i2, @ColorInt int i3) {
        return !a(xmlPullParser, str) ? i3 : typedArray.getColor(i2, i3);
    }

    public static b a(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @Nullable Resources.Theme theme, @NonNull String str, @StyleableRes int i2, @ColorInt int i3) {
        if (a(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i2, typedValue);
            int i4 = typedValue.type;
            if (i4 >= 28 && i4 <= 31) {
                return b.b(typedValue.data);
            }
            b b2 = b.b(typedArray.getResources(), typedArray.getResourceId(i2, 0), theme);
            if (b2 != null) {
                return b2;
            }
        }
        return b.b(i3);
    }

    @Nullable
    public static ColorStateList a(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @Nullable Resources.Theme theme, @NonNull String str, @StyleableRes int i2) {
        if (!a(xmlPullParser, str)) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i2, typedValue);
        int i3 = typedValue.type;
        if (i3 != 2) {
            if (i3 >= 28 && i3 <= 31) {
                return a(typedValue);
            }
            return a.a(typedArray.getResources(), typedArray.getResourceId(i2, 0), theme);
        }
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i2 + ": " + typedValue);
    }

    @NonNull
    private static ColorStateList a(@NonNull TypedValue typedValue) {
        return ColorStateList.valueOf(typedValue.data);
    }

    @Nullable
    public static String a(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i2) {
        if (a(xmlPullParser, str)) {
            return typedArray.getString(i2);
        }
        return null;
    }

    @NonNull
    public static TypedArray a(@NonNull Resources resources, @Nullable Resources.Theme theme, @NonNull AttributeSet attributeSet, @NonNull int[] iArr) {
        if (theme == null) {
            return resources.obtainAttributes(attributeSet, iArr);
        }
        return theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }
}
