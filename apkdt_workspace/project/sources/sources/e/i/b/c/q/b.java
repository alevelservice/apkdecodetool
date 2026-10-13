package e.i.b.c.q;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.annotation.FontRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.e;
import e.i.b.c.k;

/* compiled from: TextAppearance.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public final float f17921a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final ColorStateList f17922b;

    /* renamed from: c, reason: collision with root package name */
    public final int f17923c;

    /* renamed from: d, reason: collision with root package name */
    public final int f17924d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final String f17925e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    public final ColorStateList f17926f;

    /* renamed from: g, reason: collision with root package name */
    public final float f17927g;

    /* renamed from: h, reason: collision with root package name */
    public final float f17928h;

    /* renamed from: i, reason: collision with root package name */
    public final float f17929i;

    /* renamed from: j, reason: collision with root package name */
    @FontRes
    private final int f17930j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f17931k = false;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    private Typeface f17932l;

    public b(Context context, @StyleRes int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i2, k.TextAppearance);
        this.f17921a = obtainStyledAttributes.getDimension(k.TextAppearance_android_textSize, 0.0f);
        this.f17922b = e.i.b.c.q.a.a(context, obtainStyledAttributes, k.TextAppearance_android_textColor);
        e.i.b.c.q.a.a(context, obtainStyledAttributes, k.TextAppearance_android_textColorHint);
        e.i.b.c.q.a.a(context, obtainStyledAttributes, k.TextAppearance_android_textColorLink);
        this.f17923c = obtainStyledAttributes.getInt(k.TextAppearance_android_textStyle, 0);
        this.f17924d = obtainStyledAttributes.getInt(k.TextAppearance_android_typeface, 1);
        int a2 = e.i.b.c.q.a.a(obtainStyledAttributes, k.TextAppearance_fontFamily, k.TextAppearance_android_fontFamily);
        this.f17930j = obtainStyledAttributes.getResourceId(a2, 0);
        this.f17925e = obtainStyledAttributes.getString(a2);
        obtainStyledAttributes.getBoolean(k.TextAppearance_textAllCaps, false);
        this.f17926f = e.i.b.c.q.a.a(context, obtainStyledAttributes, k.TextAppearance_android_shadowColor);
        this.f17927g = obtainStyledAttributes.getFloat(k.TextAppearance_android_shadowDx, 0.0f);
        this.f17928h = obtainStyledAttributes.getFloat(k.TextAppearance_android_shadowDy, 0.0f);
        this.f17929i = obtainStyledAttributes.getFloat(k.TextAppearance_android_shadowRadius, 0.0f);
        obtainStyledAttributes.recycle();
    }

    public void b(Context context, TextPaint textPaint, e.a aVar) {
        c(context, textPaint, aVar);
        ColorStateList colorStateList = this.f17922b;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f2 = this.f17929i;
        float f3 = this.f17927g;
        float f4 = this.f17928h;
        ColorStateList colorStateList2 = this.f17926f;
        textPaint.setShadowLayer(f2, f3, f4, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public void c(Context context, TextPaint textPaint, @Nullable e.a aVar) {
        if (c.a()) {
            a(textPaint, a(context));
            return;
        }
        a(context, textPaint, aVar);
        if (this.f17931k) {
            return;
        }
        a(textPaint, this.f17932l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TextAppearance.java */
    /* loaded from: classes.dex */
    public class a extends e.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ TextPaint f17933a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ e.a f17934b;

        a(TextPaint textPaint, e.a aVar) {
            this.f17933a = textPaint;
            this.f17934b = aVar;
        }

        @Override // androidx.core.content.res.e.a
        public void a(@NonNull Typeface typeface) {
            b bVar = b.this;
            bVar.f17932l = Typeface.create(typeface, bVar.f17923c);
            b.this.a(this.f17933a, typeface);
            b.this.f17931k = true;
            this.f17934b.a(typeface);
        }

        @Override // androidx.core.content.res.e.a
        public void a(int i2) {
            b.this.a();
            b.this.f17931k = true;
            this.f17934b.a(i2);
        }
    }

    @NonNull
    @VisibleForTesting
    public Typeface a(Context context) {
        if (this.f17931k) {
            return this.f17932l;
        }
        if (!context.isRestricted()) {
            try {
                this.f17932l = e.a(context, this.f17930j);
                if (this.f17932l != null) {
                    this.f17932l = Typeface.create(this.f17932l, this.f17923c);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception unused2) {
                String str = "Error loading font " + this.f17925e;
            }
        }
        a();
        this.f17931k = true;
        return this.f17932l;
    }

    public void a(Context context, TextPaint textPaint, @NonNull e.a aVar) {
        if (this.f17931k) {
            a(textPaint, this.f17932l);
            return;
        }
        a();
        if (context.isRestricted()) {
            this.f17931k = true;
            a(textPaint, this.f17932l);
            return;
        }
        try {
            e.a(context, this.f17930j, new a(textPaint, aVar), null);
        } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
        } catch (Exception unused2) {
            String str = "Error loading font " + this.f17925e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f17932l == null) {
            this.f17932l = Typeface.create(this.f17925e, this.f17923c);
        }
        if (this.f17932l == null) {
            int i2 = this.f17924d;
            if (i2 == 1) {
                this.f17932l = Typeface.SANS_SERIF;
            } else if (i2 == 2) {
                this.f17932l = Typeface.SERIF;
            } else if (i2 != 3) {
                this.f17932l = Typeface.DEFAULT;
            } else {
                this.f17932l = Typeface.MONOSPACE;
            }
            Typeface typeface = this.f17932l;
            if (typeface != null) {
                this.f17932l = Typeface.create(typeface, this.f17923c);
            }
        }
    }

    public void a(@NonNull TextPaint textPaint, @NonNull Typeface typeface) {
        textPaint.setTypeface(typeface);
        int style = (typeface.getStyle() ^ (-1)) & this.f17923c;
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f17921a);
    }
}
