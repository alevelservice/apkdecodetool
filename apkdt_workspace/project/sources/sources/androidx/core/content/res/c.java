package androidx.core.content.res;

import a.i.g;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GradientColorInflaterCompat.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Shader a(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (name.equals("gradient")) {
            TypedArray a2 = f.a(resources, theme, attributeSet, g.GradientColor);
            float a3 = f.a(a2, xmlPullParser, "startX", g.GradientColor_android_startX, 0.0f);
            float a4 = f.a(a2, xmlPullParser, "startY", g.GradientColor_android_startY, 0.0f);
            float a5 = f.a(a2, xmlPullParser, "endX", g.GradientColor_android_endX, 0.0f);
            float a6 = f.a(a2, xmlPullParser, "endY", g.GradientColor_android_endY, 0.0f);
            float a7 = f.a(a2, xmlPullParser, "centerX", g.GradientColor_android_centerX, 0.0f);
            float a8 = f.a(a2, xmlPullParser, "centerY", g.GradientColor_android_centerY, 0.0f);
            int b2 = f.b(a2, xmlPullParser, "type", g.GradientColor_android_type, 0);
            int a9 = f.a(a2, xmlPullParser, "startColor", g.GradientColor_android_startColor, 0);
            boolean a10 = f.a(xmlPullParser, "centerColor");
            int a11 = f.a(a2, xmlPullParser, "centerColor", g.GradientColor_android_centerColor, 0);
            int a12 = f.a(a2, xmlPullParser, "endColor", g.GradientColor_android_endColor, 0);
            int b3 = f.b(a2, xmlPullParser, "tileMode", g.GradientColor_android_tileMode, 0);
            float a13 = f.a(a2, xmlPullParser, "gradientRadius", g.GradientColor_android_gradientRadius, 0.0f);
            a2.recycle();
            a a14 = a(b(resources, xmlPullParser, attributeSet, theme), a9, a12, a10, a11);
            if (b2 != 1) {
                if (b2 != 2) {
                    return new LinearGradient(a3, a4, a5, a6, a14.f1807a, a14.f1808b, a(b3));
                }
                return new SweepGradient(a7, a8, a14.f1807a, a14.f1808b);
            }
            if (a13 > 0.0f) {
                return new RadialGradient(a7, a8, a13, a14.f1807a, a14.f1808b, a(b3));
            }
            throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0084, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r9.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.core.content.res.c.a b(@androidx.annotation.NonNull android.content.res.Resources r8, @androidx.annotation.NonNull org.xmlpull.v1.XmlPullParser r9, @androidx.annotation.NonNull android.util.AttributeSet r10, @androidx.annotation.Nullable android.content.res.Resources.Theme r11) {
        /*
            int r0 = r9.getDepth()
            r1 = 1
            int r0 = r0 + r1
            java.util.ArrayList r2 = new java.util.ArrayList
            r3 = 20
            r2.<init>(r3)
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>(r3)
        L12:
            int r3 = r9.next()
            if (r3 == r1) goto L85
            int r5 = r9.getDepth()
            if (r5 >= r0) goto L21
            r6 = 3
            if (r3 == r6) goto L85
        L21:
            r6 = 2
            if (r3 == r6) goto L25
            goto L12
        L25:
            if (r5 > r0) goto L12
            java.lang.String r3 = r9.getName()
            java.lang.String r5 = "item"
            boolean r3 = r3.equals(r5)
            if (r3 != 0) goto L34
            goto L12
        L34:
            int[] r3 = a.i.g.GradientColorItem
            android.content.res.TypedArray r3 = androidx.core.content.res.f.a(r8, r11, r10, r3)
            int r5 = a.i.g.GradientColorItem_android_color
            boolean r5 = r3.hasValue(r5)
            int r6 = a.i.g.GradientColorItem_android_offset
            boolean r6 = r3.hasValue(r6)
            if (r5 == 0) goto L6a
            if (r6 == 0) goto L6a
            int r5 = a.i.g.GradientColorItem_android_color
            r6 = 0
            int r5 = r3.getColor(r5, r6)
            int r6 = a.i.g.GradientColorItem_android_offset
            r7 = 0
            float r6 = r3.getFloat(r6, r7)
            r3.recycle()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r5)
            r4.add(r3)
            java.lang.Float r3 = java.lang.Float.valueOf(r6)
            r2.add(r3)
            goto L12
        L6a:
            org.xmlpull.v1.XmlPullParserException r8 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r9 = r9.getPositionDescription()
            r10.append(r9)
            java.lang.String r9 = ": <item> tag requires a 'color' attribute and a 'offset' attribute!"
            r10.append(r9)
            java.lang.String r9 = r10.toString()
            r8.<init>(r9)
            throw r8
        L85:
            int r8 = r4.size()
            if (r8 <= 0) goto L91
            androidx.core.content.res.c$a r8 = new androidx.core.content.res.c$a
            r8.<init>(r4, r2)
            return r8
        L91:
            r8 = 0
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.c.b(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):androidx.core.content.res.c$a");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GradientColorInflaterCompat.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        final int[] f1807a;

        /* renamed from: b, reason: collision with root package name */
        final float[] f1808b;

        a(@NonNull List<Integer> list, @NonNull List<Float> list2) {
            int size = list.size();
            this.f1807a = new int[size];
            this.f1808b = new float[size];
            for (int i2 = 0; i2 < size; i2++) {
                this.f1807a[i2] = list.get(i2).intValue();
                this.f1808b[i2] = list2.get(i2).floatValue();
            }
        }

        a(@ColorInt int i2, @ColorInt int i3) {
            this.f1807a = new int[]{i2, i3};
            this.f1808b = new float[]{0.0f, 1.0f};
        }

        a(@ColorInt int i2, @ColorInt int i3, @ColorInt int i4) {
            this.f1807a = new int[]{i2, i3, i4};
            this.f1808b = new float[]{0.0f, 0.5f, 1.0f};
        }
    }

    private static a a(@Nullable a aVar, @ColorInt int i2, @ColorInt int i3, boolean z, @ColorInt int i4) {
        if (aVar != null) {
            return aVar;
        }
        if (z) {
            return new a(i2, i4, i3);
        }
        return new a(i2, i3);
    }

    private static Shader.TileMode a(int i2) {
        if (i2 == 1) {
            return Shader.TileMode.REPEAT;
        }
        if (i2 != 2) {
            return Shader.TileMode.CLAMP;
        }
        return Shader.TileMode.MIRROR;
    }
}
