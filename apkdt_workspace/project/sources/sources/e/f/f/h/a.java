package e.f.f.h;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.facebook.common.internal.VisibleForTesting;
import javax.annotation.Nullable;

/* compiled from: GestureDetector.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    @Nullable
    InterfaceC0191a f17410a;

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    final float f17411b;

    /* renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    boolean f17412c;

    /* renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    boolean f17413d;

    /* renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    long f17414e;

    /* renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    float f17415f;

    /* renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    float f17416g;

    /* compiled from: GestureDetector.java */
    /* renamed from: e.f.f.h.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0191a {
        boolean d();
    }

    public a(Context context) {
        this.f17411b = ViewConfiguration.get(context).getScaledTouchSlop();
        a();
    }

    public static a a(Context context) {
        return new a(context);
    }

    public boolean b() {
        return this.f17412c;
    }

    public void c() {
        this.f17412c = false;
        this.f17413d = false;
    }

    public void a() {
        this.f17410a = null;
        c();
    }

    public void a(InterfaceC0191a interfaceC0191a) {
        this.f17410a = interfaceC0191a;
    }

    public boolean a(MotionEvent motionEvent) {
        InterfaceC0191a interfaceC0191a;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f17412c = true;
            this.f17413d = true;
            this.f17414e = motionEvent.getEventTime();
            this.f17415f = motionEvent.getX();
            this.f17416g = motionEvent.getY();
        } else if (action == 1) {
            this.f17412c = false;
            if (Math.abs(motionEvent.getX() - this.f17415f) > this.f17411b || Math.abs(motionEvent.getY() - this.f17416g) > this.f17411b) {
                this.f17413d = false;
            }
            if (this.f17413d && motionEvent.getEventTime() - this.f17414e <= ViewConfiguration.getLongPressTimeout() && (interfaceC0191a = this.f17410a) != null) {
                interfaceC0191a.d();
            }
            this.f17413d = false;
        } else if (action != 2) {
            if (action == 3) {
                this.f17412c = false;
                this.f17413d = false;
            }
        } else if (Math.abs(motionEvent.getX() - this.f17415f) > this.f17411b || Math.abs(motionEvent.getY() - this.f17416g) > this.f17411b) {
            this.f17413d = false;
        }
        return true;
    }
}
