package e.i.b.c.l;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: MotionTiming.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private long f17910a;

    /* renamed from: b, reason: collision with root package name */
    private long f17911b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private TimeInterpolator f17912c;

    /* renamed from: d, reason: collision with root package name */
    private int f17913d;

    /* renamed from: e, reason: collision with root package name */
    private int f17914e;

    public i(long j2, long j3) {
        this.f17910a = 0L;
        this.f17911b = 300L;
        this.f17912c = null;
        this.f17913d = 0;
        this.f17914e = 1;
        this.f17910a = j2;
        this.f17911b = j3;
    }

    public void a(Animator animator) {
        animator.setStartDelay(a());
        animator.setDuration(b());
        animator.setInterpolator(c());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(d());
            valueAnimator.setRepeatMode(e());
        }
    }

    public long b() {
        return this.f17911b;
    }

    public TimeInterpolator c() {
        TimeInterpolator timeInterpolator = this.f17912c;
        return timeInterpolator != null ? timeInterpolator : a.f17897b;
    }

    public int d() {
        return this.f17913d;
    }

    public int e() {
        return this.f17914e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        if (a() == iVar.a() && b() == iVar.b() && d() == iVar.d() && e() == iVar.e()) {
            return c().getClass().equals(iVar.c().getClass());
        }
        return false;
    }

    public int hashCode() {
        return (((((((((int) (a() ^ (a() >>> 32))) * 31) + ((int) (b() ^ (b() >>> 32)))) * 31) + c().getClass().hashCode()) * 31) + d()) * 31) + e();
    }

    public String toString() {
        return '\n' + i.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + a() + " duration: " + b() + " interpolator: " + c().getClass() + " repeatCount: " + d() + " repeatMode: " + e() + "}\n";
    }

    private static TimeInterpolator b(ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if (!(interpolator instanceof AccelerateDecelerateInterpolator) && interpolator != null) {
            if (interpolator instanceof AccelerateInterpolator) {
                return a.f17898c;
            }
            return interpolator instanceof DecelerateInterpolator ? a.f17899d : interpolator;
        }
        return a.f17897b;
    }

    public long a() {
        return this.f17910a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i a(ValueAnimator valueAnimator) {
        i iVar = new i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), b(valueAnimator));
        iVar.f17913d = valueAnimator.getRepeatCount();
        iVar.f17914e = valueAnimator.getRepeatMode();
        return iVar;
    }

    public i(long j2, long j3, @NonNull TimeInterpolator timeInterpolator) {
        this.f17910a = 0L;
        this.f17911b = 300L;
        this.f17912c = null;
        this.f17913d = 0;
        this.f17914e = 1;
        this.f17910a = j2;
        this.f17911b = j3;
        this.f17912c = timeInterpolator;
    }
}
