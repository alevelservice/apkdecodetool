package a.i.l;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

/* compiled from: PrecomputedTextCompat.java */
/* loaded from: classes.dex */
public class c implements Spannable {

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    private final Spannable f337e;

    /* renamed from: f, reason: collision with root package name */
    @NonNull
    private final a f338f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private final PrecomputedText f339g;

    /* compiled from: PrecomputedTextCompat.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final TextPaint f340a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        private final TextDirectionHeuristic f341b;

        /* renamed from: c, reason: collision with root package name */
        private final int f342c;

        /* renamed from: d, reason: collision with root package name */
        private final int f343d;

        /* compiled from: PrecomputedTextCompat.java */
        /* renamed from: a.i.l.c$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0007a {

            /* renamed from: a, reason: collision with root package name */
            @NonNull
            private final TextPaint f344a;

            /* renamed from: b, reason: collision with root package name */
            private TextDirectionHeuristic f345b;

            /* renamed from: c, reason: collision with root package name */
            private int f346c;

            /* renamed from: d, reason: collision with root package name */
            private int f347d;

            public C0007a(@NonNull TextPaint textPaint) {
                this.f344a = textPaint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f346c = 1;
                    this.f347d = 1;
                } else {
                    this.f347d = 0;
                    this.f346c = 0;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    this.f345b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.f345b = null;
                }
            }

            @RequiresApi(23)
            public C0007a a(int i2) {
                this.f346c = i2;
                return this;
            }

            @RequiresApi(23)
            public C0007a b(int i2) {
                this.f347d = i2;
                return this;
            }

            @RequiresApi(18)
            public C0007a a(@NonNull TextDirectionHeuristic textDirectionHeuristic) {
                this.f345b = textDirectionHeuristic;
                return this;
            }

            @NonNull
            public a a() {
                return new a(this.f344a, this.f345b, this.f346c, this.f347d);
            }
        }

        @SuppressLint({"NewApi"})
        a(@NonNull TextPaint textPaint, @NonNull TextDirectionHeuristic textDirectionHeuristic, int i2, int i3) {
            if (Build.VERSION.SDK_INT >= 29) {
                new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i2).setHyphenationFrequency(i3).setTextDirection(textDirectionHeuristic).build();
            }
            this.f340a = textPaint;
            this.f341b = textDirectionHeuristic;
            this.f342c = i2;
            this.f343d = i3;
        }

        @RequiresApi(23)
        public int a() {
            return this.f342c;
        }

        @RequiresApi(23)
        public int b() {
            return this.f343d;
        }

        @Nullable
        @RequiresApi(18)
        public TextDirectionHeuristic c() {
            return this.f341b;
        }

        @NonNull
        public TextPaint d() {
            return this.f340a;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (a(aVar)) {
                return Build.VERSION.SDK_INT < 18 || this.f341b == aVar.c();
            }
            return false;
        }

        public int hashCode() {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                return a.i.m.d.a(Float.valueOf(this.f340a.getTextSize()), Float.valueOf(this.f340a.getTextScaleX()), Float.valueOf(this.f340a.getTextSkewX()), Float.valueOf(this.f340a.getLetterSpacing()), Integer.valueOf(this.f340a.getFlags()), this.f340a.getTextLocales(), this.f340a.getTypeface(), Boolean.valueOf(this.f340a.isElegantTextHeight()), this.f341b, Integer.valueOf(this.f342c), Integer.valueOf(this.f343d));
            }
            if (i2 >= 21) {
                return a.i.m.d.a(Float.valueOf(this.f340a.getTextSize()), Float.valueOf(this.f340a.getTextScaleX()), Float.valueOf(this.f340a.getTextSkewX()), Float.valueOf(this.f340a.getLetterSpacing()), Integer.valueOf(this.f340a.getFlags()), this.f340a.getTextLocale(), this.f340a.getTypeface(), Boolean.valueOf(this.f340a.isElegantTextHeight()), this.f341b, Integer.valueOf(this.f342c), Integer.valueOf(this.f343d));
            }
            if (i2 >= 18) {
                return a.i.m.d.a(Float.valueOf(this.f340a.getTextSize()), Float.valueOf(this.f340a.getTextScaleX()), Float.valueOf(this.f340a.getTextSkewX()), Integer.valueOf(this.f340a.getFlags()), this.f340a.getTextLocale(), this.f340a.getTypeface(), this.f341b, Integer.valueOf(this.f342c), Integer.valueOf(this.f343d));
            }
            if (i2 >= 17) {
                return a.i.m.d.a(Float.valueOf(this.f340a.getTextSize()), Float.valueOf(this.f340a.getTextScaleX()), Float.valueOf(this.f340a.getTextSkewX()), Integer.valueOf(this.f340a.getFlags()), this.f340a.getTextLocale(), this.f340a.getTypeface(), this.f341b, Integer.valueOf(this.f342c), Integer.valueOf(this.f343d));
            }
            return a.i.m.d.a(Float.valueOf(this.f340a.getTextSize()), Float.valueOf(this.f340a.getTextScaleX()), Float.valueOf(this.f340a.getTextSkewX()), Integer.valueOf(this.f340a.getFlags()), this.f340a.getTypeface(), this.f341b, Integer.valueOf(this.f342c), Integer.valueOf(this.f343d));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.f340a.getTextSize());
            sb.append(", textScaleX=" + this.f340a.getTextScaleX());
            sb.append(", textSkewX=" + this.f340a.getTextSkewX());
            if (Build.VERSION.SDK_INT >= 21) {
                sb.append(", letterSpacing=" + this.f340a.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.f340a.isElegantTextHeight());
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                sb.append(", textLocale=" + this.f340a.getTextLocales());
            } else if (i2 >= 17) {
                sb.append(", textLocale=" + this.f340a.getTextLocale());
            }
            sb.append(", typeface=" + this.f340a.getTypeface());
            if (Build.VERSION.SDK_INT >= 26) {
                sb.append(", variationSettings=" + this.f340a.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.f341b);
            sb.append(", breakStrategy=" + this.f342c);
            sb.append(", hyphenationFrequency=" + this.f343d);
            sb.append("}");
            return sb.toString();
        }

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public boolean a(@NonNull a aVar) {
            if ((Build.VERSION.SDK_INT >= 23 && (this.f342c != aVar.a() || this.f343d != aVar.b())) || this.f340a.getTextSize() != aVar.d().getTextSize() || this.f340a.getTextScaleX() != aVar.d().getTextScaleX() || this.f340a.getTextSkewX() != aVar.d().getTextSkewX()) {
                return false;
            }
            if ((Build.VERSION.SDK_INT >= 21 && (this.f340a.getLetterSpacing() != aVar.d().getLetterSpacing() || !TextUtils.equals(this.f340a.getFontFeatureSettings(), aVar.d().getFontFeatureSettings()))) || this.f340a.getFlags() != aVar.d().getFlags()) {
                return false;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                if (!this.f340a.getTextLocales().equals(aVar.d().getTextLocales())) {
                    return false;
                }
            } else if (i2 >= 17 && !this.f340a.getTextLocale().equals(aVar.d().getTextLocale())) {
                return false;
            }
            return this.f340a.getTypeface() == null ? aVar.d().getTypeface() == null : this.f340a.getTypeface().equals(aVar.d().getTypeface());
        }

        @RequiresApi(28)
        public a(@NonNull PrecomputedText.Params params) {
            this.f340a = params.getTextPaint();
            this.f341b = params.getTextDirection();
            this.f342c = params.getBreakStrategy();
            this.f343d = params.getHyphenationFrequency();
            int i2 = Build.VERSION.SDK_INT;
        }
    }

    @NonNull
    public a a() {
        return this.f338f;
    }

    @Nullable
    @RequiresApi(28)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public PrecomputedText b() {
        Spannable spannable = this.f337e;
        if (spannable instanceof PrecomputedText) {
            return (PrecomputedText) spannable;
        }
        return null;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i2) {
        return this.f337e.charAt(i2);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f337e.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f337e.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f337e.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    @SuppressLint({"NewApi"})
    public <T> T[] getSpans(int i2, int i3, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 29) {
            return (T[]) this.f339g.getSpans(i2, i3, cls);
        }
        return (T[]) this.f337e.getSpans(i2, i3, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f337e.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i2, int i3, Class cls) {
        return this.f337e.nextSpanTransition(i2, i3, cls);
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void removeSpan(Object obj) {
        if (!(obj instanceof MetricAffectingSpan)) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f339g.removeSpan(obj);
                return;
            } else {
                this.f337e.removeSpan(obj);
                return;
            }
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void setSpan(Object obj, int i2, int i3, int i4) {
        if (!(obj instanceof MetricAffectingSpan)) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f339g.setSpan(obj, i2, i3, i4);
                return;
            } else {
                this.f337e.setSpan(obj, i2, i3, i4);
                return;
            }
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i2, int i3) {
        return this.f337e.subSequence(i2, i3);
    }

    @Override // java.lang.CharSequence
    @NonNull
    public String toString() {
        return this.f337e.toString();
    }
}
