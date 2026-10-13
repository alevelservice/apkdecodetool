package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.ads.ev;
import com.google.android.gms.internal.ads.iv;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class d01 extends by0 {
    private static final Object B = new Object();

    @VisibleForTesting
    private static boolean C = false;
    private static long D;

    @VisibleForTesting
    private mf1 A;
    protected boolean y;
    private String z;

    /* JADX INFO: Access modifiers changed from: protected */
    public d01(Context context, String str, boolean z) {
        super(context);
        this.y = false;
        this.z = str;
        this.y = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static synchronized void a(Context context, boolean z) {
        synchronized (d01.class) {
            if (!C) {
                D = System.currentTimeMillis() / 1000;
                by0.x = b(context, z);
                C = true;
            }
        }
    }

    private static cf1 b(Context context, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        if (by0.x == null) {
            synchronized (B) {
                if (by0.x == null) {
                    cf1 a2 = cf1.a(context, "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", z);
                    if (a2.b()) {
                        try {
                            z2 = ((Boolean) mu1.e().a(aw1.A1)).booleanValue();
                        } catch (IllegalStateException unused) {
                            z2 = false;
                        }
                        if (z2) {
                            a2.a("Rx/heC2JEYsbYRXDgEN1gsty+F6bGgJ1u7nhpEb4M3zTVmNdSKl8jv7T9QBOGiBo", "VJKYVzPjjk7QpAOgA66fh/W7w026ne08y+a0kIFLwtw=", new Class[0]);
                        }
                        a2.a("XH9P571BKuLP93qYQxkRpy1PUNifzwu73ZoDGVFo2YZ/YFYubO2Lb3GWBfhhanl4", "NeE5pLFr5wX1ANovtLOsJqP768Ctmq/FMTICBM52x6A=", Context.class);
                        a2.a("DXA156b9Uw1i8FOuvLcwjLVBpSNDWtJVgTZbsRDCtFchecXE8o1tHm2Ux12OK0OH", "2WYNTfyE08GFTa+CNuJdG7viKRFywleQfsbWAr9X8zM=", Context.class);
                        a2.a("OJ4z8heIkna+tGyEkeoZODftfHg3yWAdctWxMnUfcVRhHzSWt9dkdCFRbnlZEQPg", "BQy1aC7VMcLjynNINwkRhvEmBFFYeXfThgGY4e3msc8=", Context.class);
                        a2.a("ztQzXqRvKBJ2/TUkjUJZ6hn+wmZ3NRafB8o0+8AJ7X6zTxwinv7SdJbgRryZMDEb", "e4d1p8xhby9ZAG+hh4o5yaD2hnSUY+CczaoaFYBIe84=", Context.class);
                        a2.a("UIlI5a2hIzVdM8FsyMTARmsNqlWIW6uNfHicTFTaWRG331n6ai+vF9CMxJx1uYBi", "y0Bebp2FTMg/ZqKFGF7zwFlq80aiWT3jtQFcnMVa2+8=", Context.class);
                        a2.a("uEai00GJ+G2w9M0uJauU8P83SVQSYAmlOVJT340ehSRYq63ZEmcjJk1a6P66Ftbv", "x4rF2kwRTKaOsxLSp0b0NzII7WcrxiqtMev217v380E=", Context.class, Boolean.TYPE);
                        a2.a("Od+3YxQVhNNIcaO8eE17JkbHCRbYxCyxPgbhSR20h05Jq6MXxjlbOnFtHhXxk6ym", "yHiJ9XbGkcoU/aQGuZ9TZoTM71/LftbwEUHoDgJnHKE=", Context.class);
                        a2.a("CoKm10Payad/iIf6Tt7RfswYzxJ9qSdMkRQ77TeSaP+uAPEucRHlLltlSehXKcj9", "3SkuPbAnvkf3nqlPQan3NKRfwOg4mzGdk+MNucv26kc=", Context.class);
                        a2.a("eEX+LvAq3kB1DIp58tfEpLy2BIOo3Em3/ksek7Deb5m3AaVcuzR2aOjijfiuUCFR", "Jq9jdFMAh8uvNY3oh7H2VAoGGd9oXYGfe42TK5CBS0s=", MotionEvent.class, DisplayMetrics.class);
                        a2.a("bkT/ImxSuVxvQ69FSib/BiOcwpM7i01Zjr37O6wi2bg3svwXc77FWBp1rk37iK2u", "LqhpJlhZAkxbHdQBtZdl87PMvwL+PgVmhjxsho+hGko=", MotionEvent.class, DisplayMetrics.class);
                        a2.a("NeuoMxsZKEuCFceVDEFwoSwIkdNRGAP6KY+Y8Gfcnp+tIzBvbnjgXTmfEhwNZ5Vi", "HY5XJwYg5ZE08VypTcs88PX+6V4I+zB+ztwsb1MMwR0=", new Class[0]);
                        a2.a("NJwrTrCyvxLySOOYb1oND6CF8e5aWR+7Z5Noh8pGlpA8BCnos2AwcBMS4I5wEI15", "63E7F3GBV4MeKNqRHt9iDuPNKEyWfOWz87sdNU+Tq+0=", new Class[0]);
                        a2.a("9p29V1jnw1CIFraoY4e433VRhFs4COGtpWh3UcBw/fXwsLJU9grvEqWQGSF/yOmB", "3Kwi7ZU5Au3q66xRlvNBZv98rtbYZVFQxNQnaGZSLX0=", new Class[0]);
                        a2.a("KYgKIuvdbI7YUVmhsGWp9wFl2FMdVghHKNRT0gQ/u1LkRxGTOZlTl03kMdshNq+w", "/CedGnjsSeAuaad40owF2TIwcrymjBGLG+qHAeTNB70=", new Class[0]);
                        a2.a("HH6qmiNj3GfqjWqJ+X1Vb6PrlrOZpJAtf2Hw2KdWlnM9Y7uDVu5uw1lQD5VWndh5", "e5jIUgm7lyDyHAplb94hhQ0SppS6xFHuW2cRT8F1L+E=", new Class[0]);
                        a2.a("pDy7UGZ5W2B80UU0ddMijn/ywDSOBzm0Cw6LyZQ02flSCcGltSyw0noLuDlK92nl", "k4hWN9A2e/qiFUtS+7Sz1BNB7txIPlJqk1593wMgKSc=", new Class[0]);
                        a2.a("gTRhXFYPTqyMuxhChOzGdix477stZnj4nAZHAwYOCAqpAw2uzJH/kuq/CWYEhn7N", "Y9FNjkYup6y9ZVMsTvg/R15vMyymZaoEJMjJkcs9RyM=", Context.class, Boolean.TYPE, Boolean.TYPE);
                        a2.a("fFC6Pod9IViKCSAAnxYn9hinWrXCALzz0jmVHEKsq6iR843REtOde3phvUSbnUtI", "ZvCVOgioFWxGNfX9AeU+LoHkAeticUeWQFVApyoujwo=", StackTraceElement[].class);
                        a2.a("C0bL/C7T+dKYXfhLC2JA8K3MHJGwm1A56WUkctkM9m4+eF+4ATEsdK00T3mfkSqN", "PSR+TYjcxKCuPkYOHcIdMQEF+gPuXESHXIAr1tO4oiQ=", View.class, DisplayMetrics.class, Boolean.TYPE);
                        a2.a("3I9E4joCxKTiZa5wMLMe8JGARnJEhMvgaB13UzHowqB/SxoQDYlD18tg+PYoElGV", "RZUXKEnVP0FZEF/vfQ68nv10vI9qoo4fBcpqYUcJFRk=", Context.class, Boolean.TYPE);
                        a2.a("OtHkHuIstObijeJEOVU2KV8TjujYprpk1XmL7P54Yg6Jr35ryYaNHFurUOOi3GAW", "zBaXaUXExq/5mer03VeneOwAZvRy5I5cwaSZHYV+X5E=", View.class, Activity.class, Boolean.TYPE);
                        a2.a("QiT+xwqECr/FlM3zuQPaVyD2ECfVFMUWtUo7Zjo+3z9zNFhjIENGUGHD4zTV4cjS", "VEXDVZA0Or7wtbudSDrBHzuWsk5AUOksuXSnmExdPHY=", Long.TYPE);
                        try {
                            z3 = ((Boolean) mu1.e().a(aw1.F1)).booleanValue();
                        } catch (IllegalStateException unused2) {
                            z3 = false;
                        }
                        if (z3) {
                            a2.a("ws6zeEPy2qO8/tfLkgwgiHSRcvwbZgC2TIT/VVk8Rk3hzp4bNESeoGWf+mcbPqYE", "Mj+RrdvUAGeoNJCzcbsZYPTRxkVbxXqeqcNYEZYhvvQ=", Context.class);
                        }
                        try {
                            z4 = ((Boolean) mu1.e().a(aw1.G1)).booleanValue();
                        } catch (IllegalStateException unused3) {
                            z4 = false;
                        }
                        if (z4) {
                            a2.a("t0Evw3YlPsprE4l5pUP40UJDmjai6y5JM57f3jvobaNj8Wx48GH7mqenmLRlxz8t", "StRHLlpeqrcI+JomAMXwwhUukOoWXgyohEOmyv6hu+c=", Context.class);
                        }
                    }
                    by0.x = a2;
                }
            }
        }
        return by0.x;
    }

    private static lf1 a(cf1 cf1Var, MotionEvent motionEvent, DisplayMetrics displayMetrics) {
        Method a2 = cf1Var.a("eEX+LvAq3kB1DIp58tfEpLy2BIOo3Em3/ksek7Deb5m3AaVcuzR2aOjijfiuUCFR", "Jq9jdFMAh8uvNY3oh7H2VAoGGd9oXYGfe42TK5CBS0s=");
        if (a2 != null && motionEvent != null) {
            try {
                return new lf1((String) a2.invoke(null, motionEvent, displayMetrics));
            } catch (IllegalAccessException | InvocationTargetException e2) {
                throw new bf1(e2);
            }
        }
        throw new bf1();
    }

    @Override // com.google.android.gms.internal.ads.by0
    protected final ev.b a(Context context, yq yqVar) {
        ev.b r = ev.r();
        if (!TextUtils.isEmpty(this.z)) {
            r.a(this.z);
        }
        b(b(context, this.y), context, r, yqVar);
        if (yqVar != null && yqVar.n()) {
            if (((Boolean) mu1.e().a(aw1.w1)).booleanValue() && !kf1.b(yqVar.o().m())) {
                iv.a k2 = iv.k();
                k2.a(yqVar.o().m());
                r.a((iv) k2.s());
            }
        }
        return r;
    }

    @Override // com.google.android.gms.internal.ads.by0
    protected ev.b a(Context context, View view, Activity activity) {
        ev.b r = ev.r();
        if (!TextUtils.isEmpty(this.z)) {
            r.a(this.z);
        }
        a(b(context, this.y), r, view, activity, true);
        return r;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<Callable<Void>> a(cf1 cf1Var, Context context, ev.b bVar, yq yqVar) {
        int c2 = cf1Var.c();
        ArrayList arrayList = new ArrayList();
        if (!cf1Var.b()) {
            bVar.j(ev.d.PSN_INITIALIZATION_FAIL.zzab());
            return arrayList;
        }
        arrayList.add(new sf1(cf1Var, "gTRhXFYPTqyMuxhChOzGdix477stZnj4nAZHAwYOCAqpAw2uzJH/kuq/CWYEhn7N", "Y9FNjkYup6y9ZVMsTvg/R15vMyymZaoEJMjJkcs9RyM=", bVar, c2, 27, context, yqVar));
        arrayList.add(new wf1(cf1Var, "NeuoMxsZKEuCFceVDEFwoSwIkdNRGAP6KY+Y8Gfcnp+tIzBvbnjgXTmfEhwNZ5Vi", "HY5XJwYg5ZE08VypTcs88PX+6V4I+zB+ztwsb1MMwR0=", bVar, D, c2, 25));
        arrayList.add(new cg1(cf1Var, "9p29V1jnw1CIFraoY4e433VRhFs4COGtpWh3UcBw/fXwsLJU9grvEqWQGSF/yOmB", "3Kwi7ZU5Au3q66xRlvNBZv98rtbYZVFQxNQnaGZSLX0=", bVar, c2, 1));
        arrayList.add(new ig1(cf1Var, "OJ4z8heIkna+tGyEkeoZODftfHg3yWAdctWxMnUfcVRhHzSWt9dkdCFRbnlZEQPg", "BQy1aC7VMcLjynNINwkRhvEmBFFYeXfThgGY4e3msc8=", bVar, c2, 31));
        arrayList.add(new lg1(cf1Var, "NJwrTrCyvxLySOOYb1oND6CF8e5aWR+7Z5Noh8pGlpA8BCnos2AwcBMS4I5wEI15", "63E7F3GBV4MeKNqRHt9iDuPNKEyWfOWz87sdNU+Tq+0=", bVar, c2, 33));
        arrayList.add(new tf1(cf1Var, "DXA156b9Uw1i8FOuvLcwjLVBpSNDWtJVgTZbsRDCtFchecXE8o1tHm2Ux12OK0OH", "2WYNTfyE08GFTa+CNuJdG7viKRFywleQfsbWAr9X8zM=", bVar, c2, 29, context));
        arrayList.add(new uf1(cf1Var, "ztQzXqRvKBJ2/TUkjUJZ6hn+wmZ3NRafB8o0+8AJ7X6zTxwinv7SdJbgRryZMDEb", "e4d1p8xhby9ZAG+hh4o5yaD2hnSUY+CczaoaFYBIe84=", bVar, c2, 5));
        arrayList.add(new dg1(cf1Var, "UIlI5a2hIzVdM8FsyMTARmsNqlWIW6uNfHicTFTaWRG331n6ai+vF9CMxJx1uYBi", "y0Bebp2FTMg/ZqKFGF7zwFlq80aiWT3jtQFcnMVa2+8=", bVar, c2, 12));
        arrayList.add(new fg1(cf1Var, "uEai00GJ+G2w9M0uJauU8P83SVQSYAmlOVJT340ehSRYq63ZEmcjJk1a6P66Ftbv", "x4rF2kwRTKaOsxLSp0b0NzII7WcrxiqtMev217v380E=", bVar, c2, 3));
        arrayList.add(new xf1(cf1Var, "KYgKIuvdbI7YUVmhsGWp9wFl2FMdVghHKNRT0gQ/u1LkRxGTOZlTl03kMdshNq+w", "/CedGnjsSeAuaad40owF2TIwcrymjBGLG+qHAeTNB70=", bVar, c2, 44));
        arrayList.add(new bg1(cf1Var, "HH6qmiNj3GfqjWqJ+X1Vb6PrlrOZpJAtf2Hw2KdWlnM9Y7uDVu5uw1lQD5VWndh5", "e5jIUgm7lyDyHAplb94hhQ0SppS6xFHuW2cRT8F1L+E=", bVar, c2, 22));
        arrayList.add(new og1(cf1Var, "Od+3YxQVhNNIcaO8eE17JkbHCRbYxCyxPgbhSR20h05Jq6MXxjlbOnFtHhXxk6ym", "yHiJ9XbGkcoU/aQGuZ9TZoTM71/LftbwEUHoDgJnHKE=", bVar, c2, 48));
        arrayList.add(new qf1(cf1Var, "CoKm10Payad/iIf6Tt7RfswYzxJ9qSdMkRQ77TeSaP+uAPEucRHlLltlSehXKcj9", "3SkuPbAnvkf3nqlPQan3NKRfwOg4mzGdk+MNucv26kc=", bVar, c2, 49));
        arrayList.add(new jg1(cf1Var, "pDy7UGZ5W2B80UU0ddMijn/ywDSOBzm0Cw6LyZQ02flSCcGltSyw0noLuDlK92nl", "k4hWN9A2e/qiFUtS+7Sz1BNB7txIPlJqk1593wMgKSc=", bVar, c2, 51));
        arrayList.add(new hg1(cf1Var, "3I9E4joCxKTiZa5wMLMe8JGARnJEhMvgaB13UzHowqB/SxoQDYlD18tg+PYoElGV", "RZUXKEnVP0FZEF/vfQ68nv10vI9qoo4fBcpqYUcJFRk=", bVar, c2, 61));
        if (((Boolean) mu1.e().a(aw1.G1)).booleanValue()) {
            arrayList.add(new ag1(cf1Var, "t0Evw3YlPsprE4l5pUP40UJDmjai6y5JM57f3jvobaNj8Wx48GH7mqenmLRlxz8t", "StRHLlpeqrcI+JomAMXwwhUukOoWXgyohEOmyv6hu+c=", bVar, c2, 11));
        }
        if (((Boolean) mu1.e().a(aw1.F1)).booleanValue()) {
            arrayList.add(new eg1(cf1Var, "ws6zeEPy2qO8/tfLkgwgiHSRcvwbZgC2TIT/VVk8Rk3hzp4bNESeoGWf+mcbPqYE", "Mj+RrdvUAGeoNJCzcbsZYPTRxkVbxXqeqcNYEZYhvvQ=", bVar, c2, 73));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.by0
    protected ev.b b(Context context, View view, Activity activity) {
        ev.b r = ev.r();
        r.a(this.z);
        a(b(context, this.y), r, view, activity, false);
        return r;
    }

    protected void b(cf1 cf1Var, Context context, ev.b bVar, yq yqVar) {
        if (cf1Var.d() == null) {
            return;
        }
        a(a(cf1Var, context, bVar, yqVar));
    }

    @Override // com.google.android.gms.internal.ads.by0
    protected final lf1 b(MotionEvent motionEvent) {
        Method a2 = by0.x.a("bkT/ImxSuVxvQ69FSib/BiOcwpM7i01Zjr37O6wi2bg3svwXc77FWBp1rk37iK2u", "LqhpJlhZAkxbHdQBtZdl87PMvwL+PgVmhjxsho+hGko=");
        if (a2 != null && motionEvent != null) {
            try {
                return new lf1((String) a2.invoke(null, motionEvent, this.w));
            } catch (IllegalAccessException | InvocationTargetException e2) {
                throw new bf1(e2);
            }
        }
        throw new bf1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v43, types: [java.util.List] */
    private final void a(cf1 cf1Var, ev.b bVar, View view, Activity activity, boolean z) {
        ArrayList arrayList;
        Long l2;
        MotionEvent motionEvent;
        if (!cf1Var.b()) {
            bVar.j(ev.d.PSN_INITIALIZATION_FAIL.zzab());
            arrayList = Arrays.asList(new yf1(cf1Var, bVar));
        } else {
            try {
                lf1 a2 = a(cf1Var, this.f5880e, this.w);
                if (a2.f7867a != null) {
                    bVar.f(a2.f7867a.longValue());
                }
                if (a2.f7868b != null) {
                    bVar.g(a2.f7868b.longValue());
                }
                if (a2.f7869c != null) {
                    bVar.h(a2.f7869c.longValue());
                }
                if (this.v) {
                    if (a2.f7870d != null) {
                        bVar.q(a2.f7870d.longValue());
                    }
                    if (a2.f7871e != null) {
                        bVar.r(a2.f7871e.longValue());
                    }
                }
            } catch (bf1 unused) {
            }
            ev.e.a m = ev.e.m();
            if (this.f5882g > 0 && kf1.a(this.w)) {
                m.k(kf1.a(this.n, this.w));
                m.l(kf1.a(this.s - this.q, this.w));
                m.m(kf1.a(this.t - this.r, this.w));
                m.p(kf1.a(this.q, this.w));
                m.q(kf1.a(this.r, this.w));
                if (this.v && (motionEvent = this.f5880e) != null) {
                    long a3 = kf1.a(((this.q - this.s) + motionEvent.getRawX()) - this.f5880e.getX(), this.w);
                    if (a3 != 0) {
                        m.n(a3);
                    }
                    long a4 = kf1.a(((this.r - this.t) + this.f5880e.getRawY()) - this.f5880e.getY(), this.w);
                    if (a4 != 0) {
                        m.o(a4);
                    }
                }
            }
            try {
                lf1 b2 = b(this.f5880e);
                if (b2.f7867a != null) {
                    m.a(b2.f7867a.longValue());
                }
                if (b2.f7868b != null) {
                    m.b(b2.f7868b.longValue());
                }
                m.g(b2.f7869c.longValue());
                if (this.v) {
                    if (b2.f7871e != null) {
                        m.c(b2.f7871e.longValue());
                    }
                    if (b2.f7870d != null) {
                        m.e(b2.f7870d.longValue());
                    }
                    if (b2.f7872f != null) {
                        m.a(b2.f7872f.longValue() != 0 ? m60.ENUM_TRUE : m60.ENUM_FALSE);
                    }
                    if (this.f5883h > 0) {
                        if (kf1.a(this.w)) {
                            double d2 = this.m;
                            double d3 = this.f5883h;
                            Double.isNaN(d2);
                            Double.isNaN(d3);
                            l2 = Long.valueOf(Math.round(d2 / d3));
                        } else {
                            l2 = null;
                        }
                        if (l2 != null) {
                            m.d(l2.longValue());
                        } else {
                            m.j();
                        }
                        double d4 = this.f5887l;
                        double d5 = this.f5883h;
                        Double.isNaN(d4);
                        Double.isNaN(d5);
                        m.f(Math.round(d4 / d5));
                    }
                    if (b2.f7875i != null) {
                        m.i(b2.f7875i.longValue());
                    }
                    if (b2.f7876j != null) {
                        m.h(b2.f7876j.longValue());
                    }
                    if (b2.f7877k != null) {
                        m.b(b2.f7877k.longValue() != 0 ? m60.ENUM_TRUE : m60.ENUM_FALSE);
                    }
                }
            } catch (bf1 unused2) {
            }
            long j2 = this.f5886k;
            if (j2 > 0) {
                m.j(j2);
            }
            bVar.a((ev.e) m.s());
            long j3 = this.f5882g;
            if (j3 > 0) {
                bVar.u(j3);
            }
            long j4 = this.f5883h;
            if (j4 > 0) {
                bVar.t(j4);
            }
            long j5 = this.f5884i;
            if (j5 > 0) {
                bVar.s(j5);
            }
            long j6 = this.f5885j;
            if (j6 > 0) {
                bVar.v(j6);
            }
            try {
                int size = this.f5881f.size() - 1;
                if (size > 0) {
                    bVar.j();
                    for (int i2 = 0; i2 < size; i2++) {
                        lf1 a5 = a(by0.x, this.f5881f.get(i2), this.w);
                        ev.e.a m2 = ev.e.m();
                        m2.a(a5.f7867a.longValue());
                        m2.b(a5.f7868b.longValue());
                        bVar.b((ev.e) ((e91) m2.s()));
                    }
                }
            } catch (bf1 unused3) {
                bVar.j();
            }
            arrayList = new ArrayList();
            if (cf1Var.d() != null) {
                int c2 = cf1Var.c();
                arrayList.add(new yf1(cf1Var, bVar));
                arrayList.add(new cg1(cf1Var, "9p29V1jnw1CIFraoY4e433VRhFs4COGtpWh3UcBw/fXwsLJU9grvEqWQGSF/yOmB", "3Kwi7ZU5Au3q66xRlvNBZv98rtbYZVFQxNQnaGZSLX0=", bVar, c2, 1));
                arrayList.add(new wf1(cf1Var, "NeuoMxsZKEuCFceVDEFwoSwIkdNRGAP6KY+Y8Gfcnp+tIzBvbnjgXTmfEhwNZ5Vi", "HY5XJwYg5ZE08VypTcs88PX+6V4I+zB+ztwsb1MMwR0=", bVar, D, c2, 25));
                arrayList.add(new xf1(cf1Var, "KYgKIuvdbI7YUVmhsGWp9wFl2FMdVghHKNRT0gQ/u1LkRxGTOZlTl03kMdshNq+w", "/CedGnjsSeAuaad40owF2TIwcrymjBGLG+qHAeTNB70=", bVar, c2, 44));
                arrayList.add(new dg1(cf1Var, "UIlI5a2hIzVdM8FsyMTARmsNqlWIW6uNfHicTFTaWRG331n6ai+vF9CMxJx1uYBi", "y0Bebp2FTMg/ZqKFGF7zwFlq80aiWT3jtQFcnMVa2+8=", bVar, c2, 12));
                arrayList.add(new fg1(cf1Var, "uEai00GJ+G2w9M0uJauU8P83SVQSYAmlOVJT340ehSRYq63ZEmcjJk1a6P66Ftbv", "x4rF2kwRTKaOsxLSp0b0NzII7WcrxiqtMev217v380E=", bVar, c2, 3));
                arrayList.add(new bg1(cf1Var, "HH6qmiNj3GfqjWqJ+X1Vb6PrlrOZpJAtf2Hw2KdWlnM9Y7uDVu5uw1lQD5VWndh5", "e5jIUgm7lyDyHAplb94hhQ0SppS6xFHuW2cRT8F1L+E=", bVar, c2, 22));
                arrayList.add(new uf1(cf1Var, "ztQzXqRvKBJ2/TUkjUJZ6hn+wmZ3NRafB8o0+8AJ7X6zTxwinv7SdJbgRryZMDEb", "e4d1p8xhby9ZAG+hh4o5yaD2hnSUY+CczaoaFYBIe84=", bVar, c2, 5));
                arrayList.add(new og1(cf1Var, "Od+3YxQVhNNIcaO8eE17JkbHCRbYxCyxPgbhSR20h05Jq6MXxjlbOnFtHhXxk6ym", "yHiJ9XbGkcoU/aQGuZ9TZoTM71/LftbwEUHoDgJnHKE=", bVar, c2, 48));
                arrayList.add(new qf1(cf1Var, "CoKm10Payad/iIf6Tt7RfswYzxJ9qSdMkRQ77TeSaP+uAPEucRHlLltlSehXKcj9", "3SkuPbAnvkf3nqlPQan3NKRfwOg4mzGdk+MNucv26kc=", bVar, c2, 49));
                arrayList.add(new jg1(cf1Var, "pDy7UGZ5W2B80UU0ddMijn/ywDSOBzm0Cw6LyZQ02flSCcGltSyw0noLuDlK92nl", "k4hWN9A2e/qiFUtS+7Sz1BNB7txIPlJqk1593wMgKSc=", bVar, c2, 51));
                arrayList.add(new kg1(cf1Var, "fFC6Pod9IViKCSAAnxYn9hinWrXCALzz0jmVHEKsq6iR843REtOde3phvUSbnUtI", "ZvCVOgioFWxGNfX9AeU+LoHkAeticUeWQFVApyoujwo=", bVar, c2, 45, new Throwable().getStackTrace()));
                arrayList.add(new ng1(cf1Var, "C0bL/C7T+dKYXfhLC2JA8K3MHJGwm1A56WUkctkM9m4+eF+4ATEsdK00T3mfkSqN", "PSR+TYjcxKCuPkYOHcIdMQEF+gPuXESHXIAr1tO4oiQ=", bVar, c2, 57, view));
                arrayList.add(new hg1(cf1Var, "3I9E4joCxKTiZa5wMLMe8JGARnJEhMvgaB13UzHowqB/SxoQDYlD18tg+PYoElGV", "RZUXKEnVP0FZEF/vfQ68nv10vI9qoo4fBcpqYUcJFRk=", bVar, c2, 61));
                if (((Boolean) mu1.e().a(aw1.t1)).booleanValue()) {
                    arrayList.add(new rf1(cf1Var, "OtHkHuIstObijeJEOVU2KV8TjujYprpk1XmL7P54Yg6Jr35ryYaNHFurUOOi3GAW", "zBaXaUXExq/5mer03VeneOwAZvRy5I5cwaSZHYV+X5E=", bVar, c2, 62, view, activity));
                }
                if (z && ((Boolean) mu1.e().a(aw1.v1)).booleanValue()) {
                    arrayList.add(new mg1(cf1Var, "QiT+xwqECr/FlM3zuQPaVyD2ECfVFMUWtUo7Zjo+3z9zNFhjIENGUGHD4zTV4cjS", "VEXDVZA0Or7wtbudSDrBHzuWsk5AUOksuXSnmExdPHY=", bVar, c2, 53, this.A));
                }
            }
        }
        a(arrayList);
    }

    protected static void a(List<Callable<Void>> list) {
        ExecutorService d2;
        if (by0.x == null || (d2 = by0.x.d()) == null || list.isEmpty()) {
            return;
        }
        try {
            d2.invokeAll(list, ((Long) mu1.e().a(aw1.s1)).longValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            String.format("class methods got exception: %s", kf1.a(e2));
        }
    }

    @Override // com.google.android.gms.internal.ads.by0
    protected final long a(StackTraceElement[] stackTraceElementArr) {
        Method a2 = by0.x.a("fFC6Pod9IViKCSAAnxYn9hinWrXCALzz0jmVHEKsq6iR843REtOde3phvUSbnUtI", "ZvCVOgioFWxGNfX9AeU+LoHkAeticUeWQFVApyoujwo=");
        if (a2 != null && stackTraceElementArr != null) {
            try {
                return new he1((String) a2.invoke(null, stackTraceElementArr)).f7050a.longValue();
            } catch (IllegalAccessException | InvocationTargetException e2) {
                throw new bf1(e2);
            }
        }
        throw new bf1();
    }

    @Override // com.google.android.gms.internal.ads.cz0
    public final void a(View view) {
        if (((Boolean) mu1.e().a(aw1.v1)).booleanValue()) {
            mf1 mf1Var = this.A;
            if (mf1Var == null) {
                this.A = new mf1(by0.x, view);
            } else {
                mf1Var.a(view);
            }
        }
    }
}
