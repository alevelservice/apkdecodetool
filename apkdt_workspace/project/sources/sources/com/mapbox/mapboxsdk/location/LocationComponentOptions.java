package com.mapbox.mapboxsdk.location;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.animation.Interpolator;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class LocationComponentOptions implements Parcelable {

    @Nullable
    private int[] A;
    private float B;
    private float C;
    private boolean D;
    private float E;
    private float F;

    @Nullable
    private RectF G;
    private String H;
    private String I;
    private float J;
    private boolean K;
    private boolean L;
    private Boolean M;
    private Boolean N;
    private Integer O;
    private float P;
    private float Q;
    private float R;

    @Nullable
    private Interpolator S;

    /* renamed from: e, reason: collision with root package name */
    private float f15767e;

    /* renamed from: f, reason: collision with root package name */
    private int f15768f;

    /* renamed from: g, reason: collision with root package name */
    private int f15769g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private String f15770h;

    /* renamed from: i, reason: collision with root package name */
    private int f15771i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private String f15772j;

    /* renamed from: k, reason: collision with root package name */
    private int f15773k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    private String f15774l;
    private int m;

    @Nullable
    private String n;
    private int o;

    @Nullable
    private String p;
    private int q;

    @Nullable
    private String r;

    @Nullable
    private Integer s;

    @Nullable
    private Integer t;

    @Nullable
    private Integer u;

    @Nullable
    private Integer v;

    @Nullable
    private Integer w;
    private float x;
    private boolean y;
    private long z;
    private static final int[] T = {0, 0, 0, 0};
    public static final Parcelable.Creator<LocationComponentOptions> CREATOR = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a implements Parcelable.Creator<LocationComponentOptions> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocationComponentOptions createFromParcel(Parcel parcel) {
            return new LocationComponentOptions(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocationComponentOptions[] newArray(int i2) {
            return new LocationComponentOptions[i2];
        }
    }

    /* loaded from: classes2.dex */
    public static class b {
        private Float A;
        private Float B;
        private RectF C;
        private String D;
        private String E;
        private Float F;
        private Boolean G;
        private Boolean H;
        private Boolean I;
        private Boolean J;
        private int K;
        private float L;
        private float M;
        private float N;

        @Nullable
        private Interpolator O;

        /* renamed from: a, reason: collision with root package name */
        private Float f15775a;

        /* renamed from: b, reason: collision with root package name */
        private Integer f15776b;

        /* renamed from: c, reason: collision with root package name */
        private Integer f15777c;

        /* renamed from: d, reason: collision with root package name */
        @Nullable
        private String f15778d;

        /* renamed from: e, reason: collision with root package name */
        private Integer f15779e;

        /* renamed from: f, reason: collision with root package name */
        @Nullable
        private String f15780f;

        /* renamed from: g, reason: collision with root package name */
        private Integer f15781g;

        /* renamed from: h, reason: collision with root package name */
        @Nullable
        private String f15782h;

        /* renamed from: i, reason: collision with root package name */
        private Integer f15783i;

        /* renamed from: j, reason: collision with root package name */
        @Nullable
        private String f15784j;

        /* renamed from: k, reason: collision with root package name */
        private Integer f15785k;

        /* renamed from: l, reason: collision with root package name */
        @Nullable
        private String f15786l;
        private Integer m;

        @Nullable
        private String n;

        @Nullable
        private Integer o;

        @Nullable
        private Integer p;

        @Nullable
        private Integer q;

        @Nullable
        private Integer r;

        @Nullable
        private Integer s;
        private Float t;
        private Boolean u;
        private Long v;

        @Nullable
        private int[] w;
        private Float x;
        private Float y;
        private Boolean z;

        /* synthetic */ b(LocationComponentOptions locationComponentOptions, a aVar) {
            this(locationComponentOptions);
        }

        @NonNull
        public b e(int i2) {
            this.f15783i = Integer.valueOf(i2);
            return this;
        }

        @NonNull
        public b f(int i2) {
            this.f15779e = Integer.valueOf(i2);
            return this;
        }

        @NonNull
        public b g(int i2) {
            this.f15781g = Integer.valueOf(i2);
            return this;
        }

        public b h(@ColorInt int i2) {
            this.K = i2;
            return this;
        }

        b() {
        }

        @NonNull
        public b d(int i2) {
            this.m = Integer.valueOf(i2);
            return this;
        }

        @NonNull
        public b e(@Nullable Integer num) {
            this.p = num;
            return this;
        }

        @NonNull
        public b f(float f2) {
            this.A = Float.valueOf(f2);
            return this;
        }

        @NonNull
        public b g(float f2) {
            this.B = Float.valueOf(f2);
            return this;
        }

        private b(LocationComponentOptions locationComponentOptions) {
            this.f15775a = Float.valueOf(locationComponentOptions.a());
            this.f15776b = Integer.valueOf(locationComponentOptions.c());
            this.f15777c = Integer.valueOf(locationComponentOptions.e());
            this.f15778d = locationComponentOptions.g();
            this.f15779e = Integer.valueOf(locationComponentOptions.q());
            this.f15780f = locationComponentOptions.s();
            this.f15781g = Integer.valueOf(locationComponentOptions.v());
            this.f15782h = locationComponentOptions.w();
            this.f15783i = Integer.valueOf(locationComponentOptions.p());
            this.f15784j = locationComponentOptions.r();
            this.f15785k = Integer.valueOf(locationComponentOptions.d());
            this.f15786l = locationComponentOptions.f();
            this.m = Integer.valueOf(locationComponentOptions.j());
            this.n = locationComponentOptions.k();
            this.o = locationComponentOptions.l();
            this.p = locationComponentOptions.u();
            this.q = locationComponentOptions.i();
            this.r = locationComponentOptions.t();
            this.s = locationComponentOptions.h();
            this.t = Float.valueOf(locationComponentOptions.n());
            this.u = Boolean.valueOf(locationComponentOptions.o());
            this.v = Long.valueOf(locationComponentOptions.J());
            this.w = locationComponentOptions.B();
            this.x = Float.valueOf(locationComponentOptions.z());
            this.y = Float.valueOf(locationComponentOptions.A());
            this.z = Boolean.valueOf(locationComponentOptions.M());
            this.A = Float.valueOf(locationComponentOptions.N());
            this.B = Float.valueOf(locationComponentOptions.O());
            this.C = locationComponentOptions.P();
            this.D = locationComponentOptions.x();
            this.E = locationComponentOptions.y();
            this.F = Float.valueOf(locationComponentOptions.L());
            this.G = Boolean.valueOf(locationComponentOptions.m());
            this.H = Boolean.valueOf(locationComponentOptions.b());
            this.I = locationComponentOptions.M;
            this.J = locationComponentOptions.N;
            this.K = locationComponentOptions.O.intValue();
            this.L = locationComponentOptions.P;
            this.M = locationComponentOptions.Q;
            this.N = locationComponentOptions.R;
            this.O = locationComponentOptions.S;
        }

        @NonNull
        public b a(float f2) {
            this.f15775a = Float.valueOf(f2);
            return this;
        }

        @NonNull
        public LocationComponentOptions b() {
            LocationComponentOptions a2 = a();
            if (a2.a() < 0.0f || a2.a() > 1.0f) {
                throw new IllegalArgumentException("Accuracy alpha value must be between 0.0 and 1.0.");
            }
            if (a2.n() >= 0.0f) {
                if (a2.x() != null && a2.y() != null) {
                    throw new IllegalArgumentException("You cannot set both layerAbove and layerBelow options. Choose one or the other.");
                }
                if (a2.E() == null) {
                    String str = "";
                    if (a2.F() != null) {
                        str = " pulseFadeEnabled";
                    }
                    if (a2.D() != null) {
                        str = str + " pulseColor";
                    }
                    if (a2.I() > 0.0f) {
                        str = str + " pulseSingleDuration";
                    }
                    if (a2.H() > 0.0f) {
                        str = str + " pulseMaxRadius";
                    }
                    if (a2.C() >= 0.0f && a2.C() <= 1.0f) {
                        str = str + " pulseAlpha";
                    }
                    if (a2.G() != null) {
                        str = str + " pulseInterpolator";
                    }
                    if (!str.isEmpty()) {
                        throw new IllegalStateException("You've set up the following pulsing circle options but have not enabled the pulsing circle via the LocationComponentOptions builder:" + str + ". Enable the pulsing circle if you're going to set pulsing options.");
                    }
                }
                return a2;
            }
            throw new IllegalArgumentException("Invalid shadow size " + a2.n() + ". Must be >= 0");
        }

        @NonNull
        public b c(int i2) {
            this.f15777c = Integer.valueOf(i2);
            return this;
        }

        @NonNull
        public b d(@Nullable Integer num) {
            this.r = num;
            return this;
        }

        @NonNull
        public b e(float f2) {
            this.F = Float.valueOf(f2);
            return this;
        }

        @NonNull
        public b a(int i2) {
            this.f15776b = Integer.valueOf(i2);
            return this;
        }

        @NonNull
        public b c(@Nullable Integer num) {
            this.o = num;
            return this;
        }

        @NonNull
        public b d(float f2) {
            this.y = Float.valueOf(f2);
            return this;
        }

        @NonNull
        public b a(@Nullable Integer num) {
            this.s = num;
            return this;
        }

        @NonNull
        public b c(float f2) {
            this.x = Float.valueOf(f2);
            return this;
        }

        @NonNull
        public b a(boolean z) {
            this.u = Boolean.valueOf(z);
            return this;
        }

        @NonNull
        public b a(long j2) {
            this.v = Long.valueOf(j2);
            return this;
        }

        @NonNull
        @Deprecated
        public b a(@Nullable int[] iArr) {
            if (iArr != null) {
                this.w = iArr;
                return this;
            }
            throw new NullPointerException("Null padding");
        }

        @NonNull
        public b a(String str) {
            this.D = str;
            return this;
        }

        @Nullable
        LocationComponentOptions a() {
            String str = "";
            if (this.f15775a == null) {
                str = " accuracyAlpha";
            }
            if (this.f15776b == null) {
                str = str + " accuracyColor";
            }
            if (this.f15777c == null) {
                str = str + " backgroundDrawableStale";
            }
            if (this.f15779e == null) {
                str = str + " foregroundDrawableStale";
            }
            if (this.f15781g == null) {
                str = str + " gpsDrawable";
            }
            if (this.f15783i == null) {
                str = str + " foregroundDrawable";
            }
            if (this.f15785k == null) {
                str = str + " backgroundDrawable";
            }
            if (this.m == null) {
                str = str + " bearingDrawable";
            }
            if (this.t == null) {
                str = str + " elevation";
            }
            if (this.u == null) {
                str = str + " enableStaleState";
            }
            if (this.v == null) {
                str = str + " staleStateTimeout";
            }
            if (this.w == null) {
                str = str + " padding";
            }
            if (this.x == null) {
                str = str + " maxZoomIconScale";
            }
            if (this.y == null) {
                str = str + " minZoomIconScale";
            }
            if (this.z == null) {
                str = str + " trackingGesturesManagement";
            }
            if (this.A == null) {
                str = str + " trackingInitialMoveThreshold";
            }
            if (this.B == null) {
                str = str + " trackingMultiFingerMoveThreshold";
            }
            if (this.F == null) {
                str = str + " trackingAnimationDurationMultiplier";
            }
            if (str.isEmpty()) {
                return new LocationComponentOptions(this.f15775a.floatValue(), this.f15776b.intValue(), this.f15777c.intValue(), this.f15778d, this.f15779e.intValue(), this.f15780f, this.f15781g.intValue(), this.f15782h, this.f15783i.intValue(), this.f15784j, this.f15785k.intValue(), this.f15786l, this.m.intValue(), this.n, this.o, this.p, this.q, this.r, this.s, this.t.floatValue(), this.u.booleanValue(), this.v.longValue(), this.w, this.x.floatValue(), this.y.floatValue(), this.z.booleanValue(), this.A.floatValue(), this.B.floatValue(), this.C, this.D, this.E, this.F.floatValue(), this.G.booleanValue(), this.H.booleanValue(), this.I, this.J, Integer.valueOf(this.K), this.L, this.M, this.N, this.O);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @NonNull
        public b b(int i2) {
            this.f15785k = Integer.valueOf(i2);
            return this;
        }

        @NonNull
        public b b(@Nullable Integer num) {
            this.q = num;
            return this;
        }

        @NonNull
        public b b(float f2) {
            this.t = Float.valueOf(f2);
            return this;
        }

        @NonNull
        public b b(boolean z) {
            this.z = Boolean.valueOf(z);
            return this;
        }

        @NonNull
        public b b(String str) {
            this.E = str;
            return this;
        }
    }

    public LocationComponentOptions(float f2, int i2, int i3, @Nullable String str, int i4, @Nullable String str2, int i5, @Nullable String str3, int i6, @Nullable String str4, int i7, @Nullable String str5, int i8, @Nullable String str6, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, float f3, boolean z, long j2, @Nullable int[] iArr, float f4, float f5, boolean z2, float f6, float f7, RectF rectF, String str7, String str8, float f8, boolean z3, boolean z4, Boolean bool, Boolean bool2, Integer num6, float f9, float f10, float f11, @Nullable Interpolator interpolator) {
        this.f15767e = f2;
        this.f15768f = i2;
        this.f15769g = i3;
        this.f15770h = str;
        this.f15771i = i4;
        this.f15772j = str2;
        this.f15773k = i5;
        this.f15774l = str3;
        this.m = i6;
        this.n = str4;
        this.o = i7;
        this.p = str5;
        this.q = i8;
        this.r = str6;
        this.s = num;
        this.t = num2;
        this.u = num3;
        this.v = num4;
        this.w = num5;
        this.x = f3;
        this.y = z;
        this.z = j2;
        if (iArr != null) {
            this.A = iArr;
            this.B = f4;
            this.C = f5;
            this.D = z2;
            this.E = f6;
            this.F = f7;
            this.G = rectF;
            this.H = str7;
            this.I = str8;
            this.J = f8;
            this.K = z3;
            this.L = z4;
            this.M = bool;
            this.N = bool2;
            this.O = num6;
            this.P = f9;
            this.Q = f10;
            this.R = f11;
            this.S = interpolator;
            return;
        }
        throw new NullPointerException("Null padding");
    }

    public float A() {
        return this.C;
    }

    @Nullable
    public int[] B() {
        return this.A;
    }

    public float C() {
        return this.R;
    }

    public Integer D() {
        return this.O;
    }

    public Boolean E() {
        return this.M;
    }

    public Boolean F() {
        return this.N;
    }

    @Nullable
    public Interpolator G() {
        return this.S;
    }

    public float H() {
        return this.Q;
    }

    public float I() {
        return this.P;
    }

    public long J() {
        return this.z;
    }

    @NonNull
    public b K() {
        return new b(this, null);
    }

    public float L() {
        return this.J;
    }

    public boolean M() {
        return this.D;
    }

    public float N() {
        return this.E;
    }

    public float O() {
        return this.F;
    }

    @Nullable
    public RectF P() {
        return this.G;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LocationComponentOptions.class != obj.getClass()) {
            return false;
        }
        LocationComponentOptions locationComponentOptions = (LocationComponentOptions) obj;
        if (Float.compare(locationComponentOptions.f15767e, this.f15767e) != 0 || this.f15768f != locationComponentOptions.f15768f || this.f15769g != locationComponentOptions.f15769g || this.f15771i != locationComponentOptions.f15771i || this.f15773k != locationComponentOptions.f15773k || this.m != locationComponentOptions.m || this.o != locationComponentOptions.o || this.q != locationComponentOptions.q || Float.compare(locationComponentOptions.x, this.x) != 0 || this.y != locationComponentOptions.y || this.z != locationComponentOptions.z || Float.compare(locationComponentOptions.B, this.B) != 0 || Float.compare(locationComponentOptions.C, this.C) != 0 || this.D != locationComponentOptions.D || Float.compare(locationComponentOptions.E, this.E) != 0 || Float.compare(locationComponentOptions.F, this.F) != 0 || Float.compare(locationComponentOptions.J, this.J) != 0) {
            return false;
        }
        RectF rectF = this.G;
        if (rectF == null ? locationComponentOptions.G != null : !rectF.equals(locationComponentOptions.G)) {
            return false;
        }
        if (this.K != locationComponentOptions.K || this.L != locationComponentOptions.L) {
            return false;
        }
        String str = this.f15770h;
        if (str == null ? locationComponentOptions.f15770h != null : !str.equals(locationComponentOptions.f15770h)) {
            return false;
        }
        String str2 = this.f15772j;
        if (str2 == null ? locationComponentOptions.f15772j != null : !str2.equals(locationComponentOptions.f15772j)) {
            return false;
        }
        String str3 = this.f15774l;
        if (str3 == null ? locationComponentOptions.f15774l != null : !str3.equals(locationComponentOptions.f15774l)) {
            return false;
        }
        String str4 = this.n;
        if (str4 == null ? locationComponentOptions.n != null : !str4.equals(locationComponentOptions.n)) {
            return false;
        }
        String str5 = this.p;
        if (str5 == null ? locationComponentOptions.p != null : !str5.equals(locationComponentOptions.p)) {
            return false;
        }
        String str6 = this.r;
        if (str6 == null ? locationComponentOptions.r != null : !str6.equals(locationComponentOptions.r)) {
            return false;
        }
        Integer num = this.s;
        if (num == null ? locationComponentOptions.s != null : !num.equals(locationComponentOptions.s)) {
            return false;
        }
        Integer num2 = this.t;
        if (num2 == null ? locationComponentOptions.t != null : !num2.equals(locationComponentOptions.t)) {
            return false;
        }
        Integer num3 = this.u;
        if (num3 == null ? locationComponentOptions.u != null : !num3.equals(locationComponentOptions.u)) {
            return false;
        }
        Integer num4 = this.v;
        if (num4 == null ? locationComponentOptions.v != null : !num4.equals(locationComponentOptions.v)) {
            return false;
        }
        Integer num5 = this.w;
        if (num5 == null ? locationComponentOptions.w != null : !num5.equals(locationComponentOptions.w)) {
            return false;
        }
        if (!Arrays.equals(this.A, locationComponentOptions.A)) {
            return false;
        }
        String str7 = this.H;
        if (str7 == null ? locationComponentOptions.H != null : !str7.equals(locationComponentOptions.H)) {
            return false;
        }
        if (this.M != locationComponentOptions.M || this.N != locationComponentOptions.N) {
            return false;
        }
        Integer num6 = this.O;
        if (num6 == null ? locationComponentOptions.D() != null : !num6.equals(locationComponentOptions.O)) {
            return false;
        }
        if (Float.compare(locationComponentOptions.P, this.P) != 0 || Float.compare(locationComponentOptions.Q, this.Q) != 0 || Float.compare(locationComponentOptions.R, this.R) != 0) {
            return false;
        }
        String str8 = this.I;
        String str9 = locationComponentOptions.I;
        return str8 != null ? str8.equals(str9) : str9 == null;
    }

    @Nullable
    @ColorInt
    public Integer h() {
        return this.w;
    }

    public int hashCode() {
        float f2 = this.f15767e;
        int floatToIntBits = (((((f2 != 0.0f ? Float.floatToIntBits(f2) : 0) * 31) + this.f15768f) * 31) + this.f15769g) * 31;
        String str = this.f15770h;
        int hashCode = (((floatToIntBits + (str != null ? str.hashCode() : 0)) * 31) + this.f15771i) * 31;
        String str2 = this.f15772j;
        int hashCode2 = (((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f15773k) * 31;
        String str3 = this.f15774l;
        int hashCode3 = (((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.m) * 31;
        String str4 = this.n;
        int hashCode4 = (((hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.o) * 31;
        String str5 = this.p;
        int hashCode5 = (((hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31) + this.q) * 31;
        String str6 = this.r;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        Integer num = this.s;
        int hashCode7 = (hashCode6 + (num != null ? num.hashCode() : 0)) * 31;
        Integer num2 = this.t;
        int hashCode8 = (hashCode7 + (num2 != null ? num2.hashCode() : 0)) * 31;
        Integer num3 = this.u;
        int hashCode9 = (hashCode8 + (num3 != null ? num3.hashCode() : 0)) * 31;
        Integer num4 = this.v;
        int hashCode10 = (hashCode9 + (num4 != null ? num4.hashCode() : 0)) * 31;
        Integer num5 = this.w;
        int hashCode11 = (hashCode10 + (num5 != null ? num5.hashCode() : 0)) * 31;
        float f3 = this.x;
        int floatToIntBits2 = (((hashCode11 + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0)) * 31) + (this.y ? 1 : 0)) * 31;
        long j2 = this.z;
        int hashCode12 = (((floatToIntBits2 + ((int) (j2 ^ (j2 >>> 32)))) * 31) + Arrays.hashCode(this.A)) * 31;
        float f4 = this.B;
        int floatToIntBits3 = (hashCode12 + (f4 != 0.0f ? Float.floatToIntBits(f4) : 0)) * 31;
        float f5 = this.C;
        int floatToIntBits4 = (((floatToIntBits3 + (f5 != 0.0f ? Float.floatToIntBits(f5) : 0)) * 31) + (this.D ? 1 : 0)) * 31;
        float f6 = this.E;
        int floatToIntBits5 = (floatToIntBits4 + (f6 != 0.0f ? Float.floatToIntBits(f6) : 0)) * 31;
        float f7 = this.F;
        int floatToIntBits6 = (floatToIntBits5 + (f7 != 0.0f ? Float.floatToIntBits(f7) : 0)) * 31;
        RectF rectF = this.G;
        int hashCode13 = (floatToIntBits6 + (rectF != null ? rectF.hashCode() : 0)) * 31;
        String str7 = this.H;
        int hashCode14 = (hashCode13 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.I;
        int hashCode15 = (hashCode14 + (str8 != null ? str8.hashCode() : 0)) * 31;
        float f8 = this.J;
        int floatToIntBits7 = (((((((((hashCode15 + (f8 != 0.0f ? Float.floatToIntBits(f8) : 0)) * 31) + (this.K ? 1 : 0)) * 31) + (this.L ? 1 : 0)) * 31) + (this.M.booleanValue() ? 1 : 0)) * 31) + (this.N.booleanValue() ? 1 : 0)) * 31;
        Integer num6 = this.O;
        int hashCode16 = (floatToIntBits7 + (num6 != null ? num6.hashCode() : 0)) * 31;
        float f9 = this.P;
        int floatToIntBits8 = (hashCode16 + (f9 != 0.0f ? Float.floatToIntBits(f9) : 0)) * 31;
        float f10 = this.Q;
        int floatToIntBits9 = (floatToIntBits8 + (f10 != 0.0f ? Float.floatToIntBits(f10) : 0)) * 31;
        float f11 = this.R;
        return floatToIntBits9 + (f11 != 0.0f ? Float.floatToIntBits(f11) : 0);
    }

    @Nullable
    @ColorInt
    public Integer i() {
        return this.u;
    }

    @DrawableRes
    public int j() {
        return this.q;
    }

    @Nullable
    public String k() {
        return this.r;
    }

    @Nullable
    @ColorInt
    public Integer l() {
        return this.s;
    }

    public boolean m() {
        return this.K;
    }

    @Dimension
    public float n() {
        return this.x;
    }

    public boolean o() {
        return this.y;
    }

    @DrawableRes
    public int p() {
        return this.m;
    }

    @DrawableRes
    public int q() {
        return this.f15771i;
    }

    @Nullable
    public String r() {
        return this.n;
    }

    @Nullable
    public String s() {
        return this.f15772j;
    }

    @Nullable
    @ColorInt
    public Integer t() {
        return this.v;
    }

    @NonNull
    public String toString() {
        return "LocationComponentOptions{accuracyAlpha=" + this.f15767e + ", accuracyColor=" + this.f15768f + ", backgroundDrawableStale=" + this.f15769g + ", backgroundStaleName=" + this.f15770h + ", foregroundDrawableStale=" + this.f15771i + ", foregroundStaleName=" + this.f15772j + ", gpsDrawable=" + this.f15773k + ", gpsName=" + this.f15774l + ", foregroundDrawable=" + this.m + ", foregroundName=" + this.n + ", backgroundDrawable=" + this.o + ", backgroundName=" + this.p + ", bearingDrawable=" + this.q + ", bearingName=" + this.r + ", bearingTintColor=" + this.s + ", foregroundTintColor=" + this.t + ", backgroundTintColor=" + this.u + ", foregroundStaleTintColor=" + this.v + ", backgroundStaleTintColor=" + this.w + ", elevation=" + this.x + ", enableStaleState=" + this.y + ", staleStateTimeout=" + this.z + ", padding=" + Arrays.toString(this.A) + ", maxZoomIconScale=" + this.B + ", minZoomIconScale=" + this.C + ", trackingGesturesManagement=" + this.D + ", trackingInitialMoveThreshold=" + this.E + ", trackingMultiFingerMoveThreshold=" + this.F + ", trackingMultiFingerProtectedMoveArea=" + this.G + ", layerAbove=" + this.H + "layerBelow=" + this.I + "trackingAnimationDurationMultiplier=" + this.J + "pulseEnabled=" + this.M + "pulseFadeEnabled=" + this.N + "pulseColor=" + this.O + "pulseSingleDuration=" + this.P + "pulseMaxRadius=" + this.Q + "pulseAlpha=" + this.R + "}";
    }

    @Nullable
    @ColorInt
    public Integer u() {
        return this.t;
    }

    @DrawableRes
    public int v() {
        return this.f15773k;
    }

    @Nullable
    public String w() {
        return this.f15774l;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeFloat(this.f15767e);
        parcel.writeInt(this.f15768f);
        parcel.writeInt(this.f15769g);
        parcel.writeString(this.f15770h);
        parcel.writeInt(this.f15771i);
        parcel.writeString(this.f15772j);
        parcel.writeInt(this.f15773k);
        parcel.writeString(this.f15774l);
        parcel.writeInt(this.m);
        parcel.writeString(this.n);
        parcel.writeInt(this.o);
        parcel.writeString(this.p);
        parcel.writeInt(this.q);
        parcel.writeString(this.r);
        parcel.writeValue(this.s);
        parcel.writeValue(this.t);
        parcel.writeValue(this.u);
        parcel.writeValue(this.v);
        parcel.writeValue(this.w);
        parcel.writeFloat(this.x);
        parcel.writeByte(this.y ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.z);
        parcel.writeIntArray(this.A);
        parcel.writeFloat(this.B);
        parcel.writeFloat(this.C);
        parcel.writeByte(this.D ? (byte) 1 : (byte) 0);
        parcel.writeFloat(this.E);
        parcel.writeFloat(this.F);
        parcel.writeParcelable(this.G, i2);
        parcel.writeString(this.H);
        parcel.writeString(this.I);
        parcel.writeFloat(this.J);
        parcel.writeByte(this.K ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.L ? (byte) 1 : (byte) 0);
        parcel.writeValue(this.M);
        parcel.writeValue(this.N);
        parcel.writeValue(this.O);
        parcel.writeFloat(this.P);
        parcel.writeFloat(this.Q);
        parcel.writeFloat(this.R);
    }

    public String x() {
        return this.H;
    }

    public String y() {
        return this.I;
    }

    public float z() {
        return this.B;
    }

    @NonNull
    public static LocationComponentOptions a(@NonNull Context context, @StyleRes int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i2, com.mapbox.mapboxsdk.o.mapbox_LocationComponent);
        b bVar = new b();
        bVar.a(true);
        bVar.a(30000L);
        bVar.c(1.0f);
        bVar.d(0.6f);
        bVar.a(T);
        bVar.e(obtainStyledAttributes.getResourceId(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_foregroundDrawable, -1));
        if (obtainStyledAttributes.hasValue(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_foregroundTintColor)) {
            bVar.e(Integer.valueOf(obtainStyledAttributes.getColor(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_foregroundTintColor, -1)));
        }
        bVar.b(obtainStyledAttributes.getResourceId(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_backgroundDrawable, -1));
        if (obtainStyledAttributes.hasValue(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_backgroundTintColor)) {
            bVar.b(Integer.valueOf(obtainStyledAttributes.getColor(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_backgroundTintColor, -1)));
        }
        bVar.f(obtainStyledAttributes.getResourceId(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_foregroundDrawableStale, -1));
        if (obtainStyledAttributes.hasValue(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_foregroundStaleTintColor)) {
            bVar.d(Integer.valueOf(obtainStyledAttributes.getColor(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_foregroundStaleTintColor, -1)));
        }
        bVar.c(obtainStyledAttributes.getResourceId(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_backgroundDrawableStale, -1));
        if (obtainStyledAttributes.hasValue(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_backgroundStaleTintColor)) {
            bVar.a(Integer.valueOf(obtainStyledAttributes.getColor(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_backgroundStaleTintColor, -1)));
        }
        bVar.d(obtainStyledAttributes.getResourceId(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_bearingDrawable, -1));
        if (obtainStyledAttributes.hasValue(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_bearingTintColor)) {
            bVar.c(Integer.valueOf(obtainStyledAttributes.getColor(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_bearingTintColor, -1)));
        }
        if (obtainStyledAttributes.hasValue(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_enableStaleState)) {
            bVar.a(obtainStyledAttributes.getBoolean(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_enableStaleState, true));
        }
        if (obtainStyledAttributes.hasValue(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_staleStateTimeout)) {
            bVar.a(obtainStyledAttributes.getInteger(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_staleStateTimeout, e.b.b.a.a.a.c.WARN_INT));
        }
        bVar.g(obtainStyledAttributes.getResourceId(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_gpsDrawable, -1));
        float dimension = obtainStyledAttributes.getDimension(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_elevation, 0.0f);
        bVar.a(obtainStyledAttributes.getColor(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_accuracyColor, -1));
        bVar.a(obtainStyledAttributes.getFloat(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_accuracyAlpha, 0.15f));
        bVar.b(dimension);
        bVar.b(obtainStyledAttributes.getBoolean(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_trackingGesturesManagement, false));
        bVar.f(obtainStyledAttributes.getDimension(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_trackingInitialMoveThreshold, context.getResources().getDimension(com.mapbox.mapboxsdk.i.mapbox_locationComponentTrackingInitialMoveThreshold)));
        bVar.g(obtainStyledAttributes.getDimension(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_trackingMultiFingerMoveThreshold, context.getResources().getDimension(com.mapbox.mapboxsdk.i.mapbox_locationComponentTrackingMultiFingerMoveThreshold)));
        bVar.a(new int[]{obtainStyledAttributes.getInt(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_iconPaddingLeft, 0), obtainStyledAttributes.getInt(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_iconPaddingTop, 0), obtainStyledAttributes.getInt(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_iconPaddingRight, 0), obtainStyledAttributes.getInt(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_iconPaddingBottom, 0)});
        bVar.a(obtainStyledAttributes.getString(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_layer_above));
        bVar.b(obtainStyledAttributes.getString(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_layer_below));
        float f2 = obtainStyledAttributes.getFloat(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_minZoomIconScale, 0.6f);
        float f3 = obtainStyledAttributes.getFloat(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_maxZoomIconScale, 1.0f);
        bVar.d(f2);
        bVar.c(f3);
        bVar.e(obtainStyledAttributes.getFloat(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_trackingAnimationDurationMultiplier, 1.1f));
        bVar.G = Boolean.valueOf(obtainStyledAttributes.getBoolean(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_compassAnimationEnabled, true));
        bVar.H = Boolean.valueOf(obtainStyledAttributes.getBoolean(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_accuracyAnimationEnabled, true));
        bVar.I = Boolean.valueOf(obtainStyledAttributes.getBoolean(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_pulsingLocationCircleEnabled, false));
        bVar.J = Boolean.valueOf(obtainStyledAttributes.getBoolean(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_pulsingLocationCircleFadeEnabled, true));
        if (obtainStyledAttributes.hasValue(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_pulsingLocationCircleColor)) {
            bVar.h(obtainStyledAttributes.getColor(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_pulsingLocationCircleColor, -1));
        }
        bVar.L = obtainStyledAttributes.getFloat(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_pulsingLocationCircleDuration, 2300.0f);
        bVar.M = obtainStyledAttributes.getFloat(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_pulsingLocationCircleRadius, 35.0f);
        bVar.N = obtainStyledAttributes.getFloat(com.mapbox.mapboxsdk.o.mapbox_LocationComponent_mapbox_pulsingLocationCircleAlpha, 1.0f);
        obtainStyledAttributes.recycle();
        return bVar.b();
    }

    public boolean b() {
        return this.L;
    }

    @ColorInt
    public int c() {
        return this.f15768f;
    }

    @DrawableRes
    public int d() {
        return this.o;
    }

    @DrawableRes
    public int e() {
        return this.f15769g;
    }

    @Nullable
    public String f() {
        return this.p;
    }

    @Nullable
    public String g() {
        return this.f15770h;
    }

    protected LocationComponentOptions(Parcel parcel) {
        this.f15767e = parcel.readFloat();
        this.f15768f = parcel.readInt();
        this.f15769g = parcel.readInt();
        this.f15770h = parcel.readString();
        this.f15771i = parcel.readInt();
        this.f15772j = parcel.readString();
        this.f15773k = parcel.readInt();
        this.f15774l = parcel.readString();
        this.m = parcel.readInt();
        this.n = parcel.readString();
        this.o = parcel.readInt();
        this.p = parcel.readString();
        this.q = parcel.readInt();
        this.r = parcel.readString();
        this.s = (Integer) parcel.readValue(Integer.class.getClassLoader());
        this.t = (Integer) parcel.readValue(Integer.class.getClassLoader());
        this.u = (Integer) parcel.readValue(Integer.class.getClassLoader());
        this.v = (Integer) parcel.readValue(Integer.class.getClassLoader());
        this.w = (Integer) parcel.readValue(Integer.class.getClassLoader());
        this.x = parcel.readFloat();
        this.y = parcel.readByte() != 0;
        this.z = parcel.readLong();
        this.A = parcel.createIntArray();
        this.B = parcel.readFloat();
        this.C = parcel.readFloat();
        this.D = parcel.readByte() != 0;
        this.E = parcel.readFloat();
        this.F = parcel.readFloat();
        this.G = (RectF) parcel.readParcelable(RectF.class.getClassLoader());
        this.H = parcel.readString();
        this.I = parcel.readString();
        this.J = parcel.readFloat();
        this.K = parcel.readByte() != 0;
        this.L = parcel.readByte() != 0;
        this.M = (Boolean) parcel.readValue(Boolean.class.getClassLoader());
        this.N = (Boolean) parcel.readValue(Boolean.class.getClassLoader());
        this.O = (Integer) parcel.readValue(Integer.class.getClassLoader());
        this.P = parcel.readFloat();
        this.Q = parcel.readFloat();
        this.R = parcel.readFloat();
    }

    @NonNull
    public static b a(@NonNull Context context) {
        return a(context, com.mapbox.mapboxsdk.n.mapbox_LocationComponent).K();
    }

    public float a() {
        return this.f15767e;
    }
}
