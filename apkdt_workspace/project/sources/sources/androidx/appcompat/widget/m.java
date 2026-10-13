package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppCompatTextViewAutoSizeHelper.java */
/* loaded from: classes.dex */
public class m {

    /* renamed from: l, reason: collision with root package name */
    private static final RectF f1398l = new RectF();
    private static ConcurrentHashMap<String, Method> m = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, Field> n = new ConcurrentHashMap<>();

    /* renamed from: a, reason: collision with root package name */
    private int f1399a = 0;

    /* renamed from: b, reason: collision with root package name */
    private boolean f1400b = false;

    /* renamed from: c, reason: collision with root package name */
    private float f1401c = -1.0f;

    /* renamed from: d, reason: collision with root package name */
    private float f1402d = -1.0f;

    /* renamed from: e, reason: collision with root package name */
    private float f1403e = -1.0f;

    /* renamed from: f, reason: collision with root package name */
    private int[] f1404f = new int[0];

    /* renamed from: g, reason: collision with root package name */
    private boolean f1405g = false;

    /* renamed from: h, reason: collision with root package name */
    private TextPaint f1406h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    private final TextView f1407i;

    /* renamed from: j, reason: collision with root package name */
    private final Context f1408j;

    /* renamed from: k, reason: collision with root package name */
    private final c f1409k;

    /* compiled from: AppCompatTextViewAutoSizeHelper.java */
    @RequiresApi(23)
    /* loaded from: classes.dex */
    private static class a extends c {
        a() {
        }

        @Override // androidx.appcompat.widget.m.c
        void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) m.b(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    /* compiled from: AppCompatTextViewAutoSizeHelper.java */
    @RequiresApi(29)
    /* loaded from: classes.dex */
    private static class b extends a {
        b() {
        }

        @Override // androidx.appcompat.widget.m.c
        boolean a(TextView textView) {
            return textView.isHorizontallyScrollable();
        }

        @Override // androidx.appcompat.widget.m.a, androidx.appcompat.widget.m.c
        void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AppCompatTextViewAutoSizeHelper.java */
    /* loaded from: classes.dex */
    public static class c {
        c() {
        }

        void a(StaticLayout.Builder builder, TextView textView) {
        }

        boolean a(TextView textView) {
            return ((Boolean) m.b(textView, "getHorizontallyScrolling", false)).booleanValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(@NonNull TextView textView) {
        this.f1407i = textView;
        this.f1408j = this.f1407i.getContext();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            this.f1409k = new b();
        } else if (i2 >= 23) {
            this.f1409k = new a();
        } else {
            this.f1409k = new c();
        }
    }

    private void h() {
        this.f1399a = 0;
        this.f1402d = -1.0f;
        this.f1403e = -1.0f;
        this.f1401c = -1.0f;
        this.f1404f = new int[0];
        this.f1400b = false;
    }

    private boolean i() {
        if (k() && this.f1399a == 1) {
            if (!this.f1405g || this.f1404f.length == 0) {
                int floor = ((int) Math.floor((this.f1403e - this.f1402d) / this.f1401c)) + 1;
                int[] iArr = new int[floor];
                for (int i2 = 0; i2 < floor; i2++) {
                    iArr[i2] = Math.round(this.f1402d + (i2 * this.f1401c));
                }
                this.f1404f = a(iArr);
            }
            this.f1400b = true;
        } else {
            this.f1400b = false;
        }
        return this.f1400b;
    }

    private boolean j() {
        this.f1405g = this.f1404f.length > 0;
        if (this.f1405g) {
            this.f1399a = 1;
            int[] iArr = this.f1404f;
            this.f1402d = iArr[0];
            this.f1403e = iArr[r0 - 1];
            this.f1401c = -1.0f;
        }
        return this.f1405g;
    }

    private boolean k() {
        return !(this.f1407i instanceof AppCompatEditText);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@Nullable AttributeSet attributeSet, int i2) {
        int resourceId;
        TypedArray obtainStyledAttributes = this.f1408j.obtainStyledAttributes(attributeSet, a.a.j.AppCompatTextView, i2, 0);
        TextView textView = this.f1407i;
        ViewCompat.a(textView, textView.getContext(), a.a.j.AppCompatTextView, attributeSet, obtainStyledAttributes, i2, 0);
        if (obtainStyledAttributes.hasValue(a.a.j.AppCompatTextView_autoSizeTextType)) {
            this.f1399a = obtainStyledAttributes.getInt(a.a.j.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = obtainStyledAttributes.hasValue(a.a.j.AppCompatTextView_autoSizeStepGranularity) ? obtainStyledAttributes.getDimension(a.a.j.AppCompatTextView_autoSizeStepGranularity, -1.0f) : -1.0f;
        float dimension2 = obtainStyledAttributes.hasValue(a.a.j.AppCompatTextView_autoSizeMinTextSize) ? obtainStyledAttributes.getDimension(a.a.j.AppCompatTextView_autoSizeMinTextSize, -1.0f) : -1.0f;
        float dimension3 = obtainStyledAttributes.hasValue(a.a.j.AppCompatTextView_autoSizeMaxTextSize) ? obtainStyledAttributes.getDimension(a.a.j.AppCompatTextView_autoSizeMaxTextSize, -1.0f) : -1.0f;
        if (obtainStyledAttributes.hasValue(a.a.j.AppCompatTextView_autoSizePresetSizes) && (resourceId = obtainStyledAttributes.getResourceId(a.a.j.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            a(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (k()) {
            if (this.f1399a == 1) {
                if (!this.f1405g) {
                    DisplayMetrics displayMetrics = this.f1408j.getResources().getDisplayMetrics();
                    if (dimension2 == -1.0f) {
                        dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                    }
                    if (dimension3 == -1.0f) {
                        dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                    }
                    if (dimension == -1.0f) {
                        dimension = 1.0f;
                    }
                    a(dimension2, dimension3, dimension);
                }
                i();
                return;
            }
            return;
        }
        this.f1399a = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void b(int i2) {
        if (k()) {
            if (i2 == 0) {
                h();
                return;
            }
            if (i2 == 1) {
                DisplayMetrics displayMetrics = this.f1408j.getResources().getDisplayMetrics();
                a(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                if (i()) {
                    a();
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("Unknown auto-size text type: " + i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int c() {
        return Math.round(this.f1402d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int d() {
        return Math.round(this.f1401c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int[] e() {
        return this.f1404f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int f() {
        return this.f1399a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public boolean g() {
        return k() && this.f1399a != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int b() {
        return Math.round(this.f1403e);
    }

    @RequiresApi(23)
    private StaticLayout b(CharSequence charSequence, Layout.Alignment alignment, int i2, int i3) {
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f1406h, i2);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(this.f1407i.getLineSpacingExtra(), this.f1407i.getLineSpacingMultiplier()).setIncludePad(this.f1407i.getIncludeFontPadding()).setBreakStrategy(this.f1407i.getBreakStrategy()).setHyphenationFrequency(this.f1407i.getHyphenationFrequency());
        if (i3 == -1) {
            i3 = Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(i3);
        try {
            this.f1409k.a(obtain, this.f1407i);
        } catch (ClassCastException unused) {
        }
        return obtain.build();
    }

    @RequiresApi(16)
    private StaticLayout b(CharSequence charSequence, Layout.Alignment alignment, int i2) {
        return new StaticLayout(charSequence, this.f1406h, i2, alignment, this.f1407i.getLineSpacingMultiplier(), this.f1407i.getLineSpacingExtra(), this.f1407i.getIncludeFontPadding());
    }

    static <T> T b(@NonNull Object obj, @NonNull String str, @NonNull T t) {
        try {
            return (T) b(str).invoke(obj, new Object[0]);
        } catch (Exception unused) {
            String str2 = "Failed to invoke TextView#" + str + "() method";
            return t;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void a(int i2, int i3, int i4, int i5) {
        if (k()) {
            DisplayMetrics displayMetrics = this.f1408j.getResources().getDisplayMetrics();
            a(TypedValue.applyDimension(i5, i2, displayMetrics), TypedValue.applyDimension(i5, i3, displayMetrics), TypedValue.applyDimension(i5, i4, displayMetrics));
            if (i()) {
                a();
            }
        }
    }

    @Nullable
    private static Method b(@NonNull String str) {
        try {
            Method method = m.get(str);
            if (method == null && (method = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                method.setAccessible(true);
                m.put(str, method);
            }
            return method;
        } catch (Exception unused) {
            String str2 = "Failed to retrieve TextView#" + str + "() method";
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void a(@NonNull int[] iArr, int i2) {
        if (k()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i2 == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.f1408j.getResources().getDisplayMetrics();
                    for (int i3 = 0; i3 < length; i3++) {
                        iArr2[i3] = Math.round(TypedValue.applyDimension(i2, iArr[i3], displayMetrics));
                    }
                }
                this.f1404f = a(iArr2);
                if (!j()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f1405g = false;
            }
            if (i()) {
                a();
            }
        }
    }

    private void a(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2] = typedArray.getDimensionPixelSize(i2, -1);
            }
            this.f1404f = a(iArr);
            j();
        }
    }

    private int[] a(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i2 : iArr) {
            if (i2 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i2)) < 0) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i3 = 0; i3 < size; i3++) {
            iArr2[i3] = ((Integer) arrayList.get(i3)).intValue();
        }
        return iArr2;
    }

    private void a(float f2, float f3, float f4) {
        if (f2 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f2 + "px) is less or equal to (0px)");
        }
        if (f3 <= f2) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f3 + "px) is less or equal to minimum auto-size text size (" + f2 + "px)");
        }
        if (f4 > 0.0f) {
            this.f1399a = 1;
            this.f1402d = f2;
            this.f1403e = f3;
            this.f1401c = f4;
            this.f1405g = false;
            return;
        }
        throw new IllegalArgumentException("The auto-size step granularity (" + f4 + "px) is less or equal to (0px)");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void a() {
        if (g()) {
            if (this.f1400b) {
                if (this.f1407i.getMeasuredHeight() <= 0 || this.f1407i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f1409k.a(this.f1407i) ? 1048576 : (this.f1407i.getMeasuredWidth() - this.f1407i.getTotalPaddingLeft()) - this.f1407i.getTotalPaddingRight();
                int height = (this.f1407i.getHeight() - this.f1407i.getCompoundPaddingBottom()) - this.f1407i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                synchronized (f1398l) {
                    f1398l.setEmpty();
                    f1398l.right = measuredWidth;
                    f1398l.bottom = height;
                    float a2 = a(f1398l);
                    if (a2 != this.f1407i.getTextSize()) {
                        a(0, a2);
                    }
                }
            }
            this.f1400b = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void a(int i2, float f2) {
        Resources resources;
        Context context = this.f1408j;
        if (context == null) {
            resources = Resources.getSystem();
        } else {
            resources = context.getResources();
        }
        a(TypedValue.applyDimension(i2, f2, resources.getDisplayMetrics()));
    }

    private void a(float f2) {
        if (f2 != this.f1407i.getPaint().getTextSize()) {
            this.f1407i.getPaint().setTextSize(f2);
            boolean isInLayout = Build.VERSION.SDK_INT >= 18 ? this.f1407i.isInLayout() : false;
            if (this.f1407i.getLayout() != null) {
                this.f1400b = false;
                try {
                    Method b2 = b("nullLayouts");
                    if (b2 != null) {
                        b2.invoke(this.f1407i, new Object[0]);
                    }
                } catch (Exception unused) {
                }
                if (!isInLayout) {
                    this.f1407i.requestLayout();
                } else {
                    this.f1407i.forceLayout();
                }
                this.f1407i.invalidate();
            }
        }
    }

    private int a(RectF rectF) {
        int length = this.f1404f.length;
        if (length != 0) {
            int i2 = length - 1;
            int i3 = 1;
            int i4 = 0;
            while (i3 <= i2) {
                int i5 = (i3 + i2) / 2;
                if (a(this.f1404f[i5], rectF)) {
                    int i6 = i5 + 1;
                    i4 = i3;
                    i3 = i6;
                } else {
                    i4 = i5 - 1;
                    i2 = i4;
                }
            }
            return this.f1404f[i4];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    @VisibleForTesting
    void a(int i2) {
        TextPaint textPaint = this.f1406h;
        if (textPaint == null) {
            this.f1406h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f1406h.set(this.f1407i.getPaint());
        this.f1406h.setTextSize(i2);
    }

    @VisibleForTesting
    StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i2, int i3) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 23) {
            return b(charSequence, alignment, i2, i3);
        }
        if (i4 >= 16) {
            return b(charSequence, alignment, i2);
        }
        return a(charSequence, alignment, i2);
    }

    private boolean a(int i2, RectF rectF) {
        CharSequence transformation;
        CharSequence text = this.f1407i.getText();
        TransformationMethod transformationMethod = this.f1407i.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.f1407i)) != null) {
            text = transformation;
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.f1407i.getMaxLines() : -1;
        a(i2);
        StaticLayout a2 = a(text, (Layout.Alignment) b(this.f1407i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (a2.getLineCount() <= maxLines && a2.getLineEnd(a2.getLineCount() - 1) == text.length())) && ((float) a2.getHeight()) <= rectF.bottom;
    }

    private StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i2) {
        return new StaticLayout(charSequence, this.f1406h, i2, alignment, ((Float) a(this.f1407i, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) a(this.f1407i, "mSpacingAdd", Float.valueOf(0.0f))).floatValue(), ((Boolean) a(this.f1407i, "mIncludePad", true)).booleanValue());
    }

    private static <T> T a(@NonNull Object obj, @NonNull String str, @NonNull T t) {
        try {
            Field a2 = a(str);
            return a2 == null ? t : (T) a2.get(obj);
        } catch (IllegalAccessException unused) {
            String str2 = "Failed to access TextView#" + str + " member";
            return t;
        }
    }

    @Nullable
    private static Field a(@NonNull String str) {
        try {
            Field field = n.get(str);
            if (field == null && (field = TextView.class.getDeclaredField(str)) != null) {
                field.setAccessible(true);
                n.put(str, field);
            }
            return field;
        } catch (NoSuchFieldException unused) {
            String str2 = "Failed to access TextView#" + str + " member";
            return null;
        }
    }
}
