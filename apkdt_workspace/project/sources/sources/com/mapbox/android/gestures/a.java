package com.mapbox.android.gestures;

import android.content.Context;
import android.view.MotionEvent;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import java.util.Iterator;
import java.util.Set;

/* compiled from: BaseGesture.java */
@UiThread
/* loaded from: classes2.dex */
public abstract class a<L> {

    /* renamed from: a, reason: collision with root package name */
    protected final Context f15517a;

    /* renamed from: b, reason: collision with root package name */
    protected final WindowManager f15518b;

    /* renamed from: c, reason: collision with root package name */
    private final AndroidGesturesManager f15519c;

    /* renamed from: d, reason: collision with root package name */
    private MotionEvent f15520d;

    /* renamed from: e, reason: collision with root package name */
    private MotionEvent f15521e;

    /* renamed from: f, reason: collision with root package name */
    private long f15522f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f15523g = true;

    /* renamed from: h, reason: collision with root package name */
    protected L f15524h;

    public a(Context context, AndroidGesturesManager androidGesturesManager) {
        this.f15517a = context;
        this.f15518b = (WindowManager) context.getSystemService("window");
        this.f15519c = androidGesturesManager;
    }

    private boolean c(@Nullable MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        MotionEvent motionEvent2 = this.f15521e;
        if (motionEvent2 != null) {
            motionEvent2.recycle();
            this.f15521e = null;
        }
        MotionEvent motionEvent3 = this.f15520d;
        if (motionEvent3 != null) {
            this.f15521e = MotionEvent.obtain(motionEvent3);
            this.f15520d.recycle();
            this.f15520d = null;
        }
        this.f15520d = MotionEvent.obtain(motionEvent);
        this.f15522f = this.f15520d.getEventTime() - this.f15520d.getDownTime();
        return a(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(int i2) {
        if (this.f15524h == null || !this.f15523g) {
            return false;
        }
        for (Set<Integer> set : this.f15519c.c()) {
            if (set.contains(Integer.valueOf(i2))) {
                Iterator<Integer> it = set.iterator();
                while (it.hasNext()) {
                    int intValue = it.next().intValue();
                    for (a aVar : this.f15519c.a()) {
                        if (aVar instanceof i) {
                            i iVar = (i) aVar;
                            if (iVar.m().contains(Integer.valueOf(intValue)) && iVar.o()) {
                                return false;
                            }
                        }
                    }
                }
            }
        }
        return true;
    }

    protected abstract boolean a(@NonNull MotionEvent motionEvent);

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean b(MotionEvent motionEvent) {
        return c(motionEvent);
    }

    public long b() {
        return this.f15522f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(L l2) {
        this.f15524h = l2;
    }

    public MotionEvent a() {
        return this.f15520d;
    }

    public MotionEvent c() {
        return this.f15521e;
    }

    public void a(boolean z) {
        this.f15523g = z;
    }
}
