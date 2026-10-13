package e.i.b.c.l;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import androidx.annotation.AnimatorRes;
import androidx.annotation.Nullable;
import androidx.annotation.StyleableRes;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MotionSpec.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private final a.e.g<String, i> f17909a = new a.e.g<>();

    public i a(String str) {
        if (b(str)) {
            return this.f17909a.get(str);
        }
        throw new IllegalArgumentException();
    }

    public boolean b(String str) {
        return this.f17909a.get(str) != null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h.class != obj.getClass()) {
            return false;
        }
        return this.f17909a.equals(((h) obj).f17909a);
    }

    public int hashCode() {
        return this.f17909a.hashCode();
    }

    public String toString() {
        return '\n' + h.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f17909a + "}\n";
    }

    public void a(String str, @Nullable i iVar) {
        this.f17909a.put(str, iVar);
    }

    public long a() {
        int size = this.f17909a.size();
        long j2 = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i d2 = this.f17909a.d(i2);
            j2 = Math.max(j2, d2.a() + d2.b());
        }
        return j2;
    }

    @Nullable
    public static h a(Context context, TypedArray typedArray, @StyleableRes int i2) {
        int resourceId;
        if (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0) {
            return null;
        }
        return a(context, resourceId);
    }

    @Nullable
    public static h a(Context context, @AnimatorRes int i2) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i2);
            if (loadAnimator instanceof AnimatorSet) {
                return a(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return a(arrayList);
        } catch (Exception unused) {
            String str = "Can't load animation resource ID #0x" + Integer.toHexString(i2);
            return null;
        }
    }

    private static h a(List<Animator> list) {
        h hVar = new h();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            a(hVar, list.get(i2));
        }
        return hVar;
    }

    private static void a(h hVar, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            hVar.a(objectAnimator.getPropertyName(), i.a((ValueAnimator) objectAnimator));
        } else {
            throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
        }
    }
}
