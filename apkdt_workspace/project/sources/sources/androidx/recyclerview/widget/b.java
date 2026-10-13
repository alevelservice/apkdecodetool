package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChildHelper.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    final InterfaceC0047b f2701a;

    /* renamed from: b, reason: collision with root package name */
    final a f2702b = new a();

    /* renamed from: c, reason: collision with root package name */
    final List<View> f2703c = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChildHelper.java */
    /* renamed from: androidx.recyclerview.widget.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0047b {
        int a();

        View a(int i2);

        void a(View view);

        void a(View view, int i2);

        void a(View view, int i2, ViewGroup.LayoutParams layoutParams);

        int b(View view);

        void b();

        void b(int i2);

        RecyclerView.z c(View view);

        void c(int i2);

        void d(View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(InterfaceC0047b interfaceC0047b) {
        this.f2701a = interfaceC0047b;
    }

    private int f(int i2) {
        if (i2 < 0) {
            return -1;
        }
        int a2 = this.f2701a.a();
        int i3 = i2;
        while (i3 < a2) {
            int b2 = i2 - (i3 - this.f2702b.b(i3));
            if (b2 == 0) {
                while (this.f2702b.c(i3)) {
                    i3++;
                }
                return i3;
            }
            i3 += b2;
        }
        return -1;
    }

    private void g(View view) {
        this.f2703c.add(view);
        this.f2701a.a(view);
    }

    private boolean h(View view) {
        if (!this.f2703c.remove(view)) {
            return false;
        }
        this.f2701a.d(view);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, boolean z) {
        a(view, -1, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View b(int i2) {
        int size = this.f2703c.size();
        for (int i3 = 0; i3 < size; i3++) {
            View view = this.f2703c.get(i3);
            RecyclerView.z c2 = this.f2701a.c(view);
            if (c2.i() == i2 && !c2.n() && !c2.p()) {
                return view;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View c(int i2) {
        return this.f2701a.a(f(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(View view) {
        int b2 = this.f2701a.b(view);
        if (b2 < 0) {
            return;
        }
        if (this.f2702b.d(b2)) {
            h(view);
        }
        this.f2701a.c(b2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(int i2) {
        int f2 = f(i2);
        View a2 = this.f2701a.a(f2);
        if (a2 == null) {
            return;
        }
        if (this.f2702b.d(f2)) {
            h(a2);
        }
        this.f2701a.c(f2);
    }

    public String toString() {
        return this.f2702b.toString() + ", hidden list:" + this.f2703c.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChildHelper.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        long f2704a = 0;

        /* renamed from: b, reason: collision with root package name */
        a f2705b;

        a() {
        }

        private void b() {
            if (this.f2705b == null) {
                this.f2705b = new a();
            }
        }

        void a(int i2) {
            if (i2 >= 64) {
                a aVar = this.f2705b;
                if (aVar != null) {
                    aVar.a(i2 - 64);
                    return;
                }
                return;
            }
            this.f2704a &= (1 << i2) ^ (-1);
        }

        boolean c(int i2) {
            if (i2 < 64) {
                return (this.f2704a & (1 << i2)) != 0;
            }
            b();
            return this.f2705b.c(i2 - 64);
        }

        boolean d(int i2) {
            if (i2 >= 64) {
                b();
                return this.f2705b.d(i2 - 64);
            }
            long j2 = 1 << i2;
            boolean z = (this.f2704a & j2) != 0;
            this.f2704a &= j2 ^ (-1);
            long j3 = j2 - 1;
            long j4 = this.f2704a;
            this.f2704a = Long.rotateRight(j4 & (j3 ^ (-1)), 1) | (j4 & j3);
            a aVar = this.f2705b;
            if (aVar != null) {
                if (aVar.c(0)) {
                    e(63);
                }
                this.f2705b.d(0);
            }
            return z;
        }

        void e(int i2) {
            if (i2 >= 64) {
                b();
                this.f2705b.e(i2 - 64);
            } else {
                this.f2704a |= 1 << i2;
            }
        }

        public String toString() {
            if (this.f2705b == null) {
                return Long.toBinaryString(this.f2704a);
            }
            return this.f2705b.toString() + "xx" + Long.toBinaryString(this.f2704a);
        }

        int b(int i2) {
            a aVar = this.f2705b;
            if (aVar == null) {
                if (i2 >= 64) {
                    return Long.bitCount(this.f2704a);
                }
                return Long.bitCount(this.f2704a & ((1 << i2) - 1));
            }
            if (i2 < 64) {
                return Long.bitCount(this.f2704a & ((1 << i2) - 1));
            }
            return aVar.b(i2 - 64) + Long.bitCount(this.f2704a);
        }

        void a() {
            this.f2704a = 0L;
            a aVar = this.f2705b;
            if (aVar != null) {
                aVar.a();
            }
        }

        void a(int i2, boolean z) {
            if (i2 >= 64) {
                b();
                this.f2705b.a(i2 - 64, z);
                return;
            }
            boolean z2 = (this.f2704a & Long.MIN_VALUE) != 0;
            long j2 = (1 << i2) - 1;
            long j3 = this.f2704a;
            this.f2704a = ((j3 & (j2 ^ (-1))) << 1) | (j3 & j2);
            if (z) {
                e(i2);
            } else {
                a(i2);
            }
            if (z2 || this.f2705b != null) {
                b();
                this.f2705b.a(0, z2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, int i2, boolean z) {
        int f2;
        if (i2 < 0) {
            f2 = this.f2701a.a();
        } else {
            f2 = f(i2);
        }
        this.f2702b.a(f2, z);
        if (z) {
            g(view);
        }
        this.f2701a.a(view, f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f2702b.a();
        for (int size = this.f2703c.size() - 1; size >= 0; size--) {
            this.f2701a.d(this.f2703c.get(size));
            this.f2703c.remove(size);
        }
        this.f2701a.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(View view) {
        int b2 = this.f2701a.b(view);
        if (b2 >= 0) {
            if (this.f2702b.c(b2)) {
                this.f2702b.a(b2);
                h(view);
                return;
            } else {
                throw new RuntimeException("trying to unhide a view that was not hidden" + view);
            }
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View d(int i2) {
        return this.f2701a.a(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e(View view) {
        int b2 = this.f2701a.b(view);
        if (b2 == -1) {
            h(view);
            return true;
        }
        if (!this.f2702b.c(b2)) {
            return false;
        }
        this.f2702b.d(b2);
        h(view);
        this.f2701a.c(b2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, int i2, ViewGroup.LayoutParams layoutParams, boolean z) {
        int f2;
        if (i2 < 0) {
            f2 = this.f2701a.a();
        } else {
            f2 = f(i2);
        }
        this.f2702b.a(f2, z);
        if (z) {
            g(view);
        }
        this.f2701a.a(view, f2, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f2701a.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(View view) {
        int b2 = this.f2701a.b(view);
        if (b2 == -1 || this.f2702b.c(b2)) {
            return -1;
        }
        return b2 - this.f2702b.b(b2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(View view) {
        return this.f2703c.contains(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.f2701a.a() - this.f2703c.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2) {
        int f2 = f(i2);
        this.f2702b.d(f2);
        this.f2701a.b(f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view) {
        int b2 = this.f2701a.b(view);
        if (b2 >= 0) {
            this.f2702b.e(b2);
            g(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }
}
