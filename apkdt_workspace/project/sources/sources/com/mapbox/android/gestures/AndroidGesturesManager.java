package com.mapbox.android.gestures;

import android.content.Context;
import android.os.Build;
import android.view.MotionEvent;
import androidx.annotation.UiThread;
import com.mapbox.android.gestures.c;
import com.mapbox.android.gestures.f;
import com.mapbox.android.gestures.k;
import com.mapbox.android.gestures.l;
import com.mapbox.android.gestures.n;
import com.mapbox.android.gestures.o;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@UiThread
/* loaded from: classes2.dex */
public class AndroidGesturesManager {

    /* renamed from: a, reason: collision with root package name */
    private final List<Set<Integer>> f15508a;

    /* renamed from: b, reason: collision with root package name */
    private final List<a> f15509b;

    /* renamed from: c, reason: collision with root package name */
    private final n f15510c;

    /* renamed from: d, reason: collision with root package name */
    private final o f15511d;

    /* renamed from: e, reason: collision with root package name */
    private final k f15512e;

    /* renamed from: f, reason: collision with root package name */
    private final l f15513f;

    /* renamed from: g, reason: collision with root package name */
    private final f f15514g;

    /* renamed from: h, reason: collision with root package name */
    private final c f15515h;

    /* renamed from: i, reason: collision with root package name */
    private final m f15516i;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface GestureType {
    }

    public AndroidGesturesManager(Context context) {
        this(context, true);
    }

    private void g() {
        for (a aVar : this.f15509b) {
            if (aVar instanceof e) {
                if (Build.VERSION.SDK_INT < 24) {
                    ((e) aVar).b(j.mapbox_internalMinSpan23);
                } else {
                    ((e) aVar).b(j.mapbox_internalMinSpan24);
                }
            }
            if (aVar instanceof o) {
                ((o) aVar).c(j.mapbox_defaultScaleSpanSinceStartThreshold);
            }
            if (aVar instanceof l) {
                l lVar = (l) aVar;
                lVar.c(j.mapbox_defaultShovePixelThreshold);
                lVar.b(20.0f);
            }
            if (aVar instanceof m) {
                m mVar = (m) aVar;
                mVar.c(j.mapbox_defaultShovePixelThreshold);
                mVar.b(20.0f);
            }
            if (aVar instanceof f) {
                f fVar = (f) aVar;
                fVar.c(j.mapbox_defaultMultiTapMovementThreshold);
                fVar.a(150L);
            }
            if (aVar instanceof k) {
                ((k) aVar).b(15.3f);
            }
        }
    }

    public boolean a(MotionEvent motionEvent) {
        Iterator<a> it = this.f15509b.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (it.next().b(motionEvent)) {
                z = true;
            }
        }
        return z;
    }

    public c b() {
        return this.f15515h;
    }

    public List<Set<Integer>> c() {
        return this.f15508a;
    }

    public k d() {
        return this.f15512e;
    }

    public l e() {
        return this.f15513f;
    }

    public o f() {
        return this.f15511d;
    }

    public AndroidGesturesManager(Context context, boolean z) {
        this(context, new ArrayList(), z);
    }

    public AndroidGesturesManager(Context context, List<Set<Integer>> list, boolean z) {
        this.f15508a = new ArrayList();
        this.f15509b = new ArrayList();
        this.f15508a.addAll(list);
        this.f15512e = new k(context, this);
        this.f15511d = new o(context, this);
        this.f15513f = new l(context, this);
        this.f15516i = new m(context, this);
        this.f15514g = new f(context, this);
        this.f15515h = new c(context, this);
        this.f15510c = new n(context, this);
        this.f15509b.add(this.f15512e);
        this.f15509b.add(this.f15511d);
        this.f15509b.add(this.f15513f);
        this.f15509b.add(this.f15516i);
        this.f15509b.add(this.f15514g);
        this.f15509b.add(this.f15515h);
        this.f15509b.add(this.f15510c);
        if (z) {
            g();
        }
    }

    public void a(n.c cVar) {
        this.f15510c.a((n) cVar);
    }

    public void a(o.c cVar) {
        this.f15511d.a((o) cVar);
    }

    public void a(k.a aVar) {
        this.f15512e.a((k) aVar);
    }

    public void a(l.a aVar) {
        this.f15513f.a((l) aVar);
    }

    public void a(f.a aVar) {
        this.f15514g.a((f) aVar);
    }

    public void a(c.a aVar) {
        this.f15515h.a((c) aVar);
    }

    public List<a> a() {
        return this.f15509b;
    }

    @SafeVarargs
    public final void a(Set<Integer>... setArr) {
        a(Arrays.asList(setArr));
    }

    public void a(List<Set<Integer>> list) {
        this.f15508a.clear();
        this.f15508a.addAll(list);
    }
}
