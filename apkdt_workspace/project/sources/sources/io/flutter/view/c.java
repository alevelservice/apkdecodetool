package io.flutter.view;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.net.Uri;
import android.opengl.Matrix;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import io.flutter.embedding.engine.i.b;
import io.flutter.view.c;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: AccessibilityBridge.java */
/* loaded from: classes2.dex */
public class c extends AccessibilityNodeProvider {
    private static int y = 267386881;

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final View f19564a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final io.flutter.embedding.engine.i.b f19565b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    private final AccessibilityManager f19566c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    private final AccessibilityViewEmbedder f19567d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    private final io.flutter.plugin.platform.j f19568e;

    /* renamed from: f, reason: collision with root package name */
    @NonNull
    private final ContentResolver f19569f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    private final Map<Integer, j> f19570g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    private final Map<Integer, g> f19571h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private j f19572i;

    /* renamed from: j, reason: collision with root package name */
    private Integer f19573j;

    /* renamed from: k, reason: collision with root package name */
    private Integer f19574k;

    /* renamed from: l, reason: collision with root package name */
    private int f19575l;

    @Nullable
    private j m;

    @Nullable
    private j n;

    @Nullable
    private j o;

    @NonNull
    private final List<Integer> p;
    private int q;

    @NonNull
    private Integer r;

    @Nullable
    private i s;
    private boolean t;
    private final b.InterfaceC0237b u;
    private final AccessibilityManager.AccessibilityStateChangeListener v;

    @RequiresApi(19)
    @TargetApi(19)
    private final AccessibilityManager.TouchExplorationStateChangeListener w;
    private final ContentObserver x;

    /* compiled from: AccessibilityBridge.java */
    /* loaded from: classes2.dex */
    class a implements b.InterfaceC0237b {
        a() {
        }

        @Override // io.flutter.embedding.engine.i.b.InterfaceC0237b
        public void a(@NonNull String str) {
            c.this.f19564a.announceForAccessibility(str);
        }

        @Override // io.flutter.embedding.engine.i.b.InterfaceC0237b
        public void b(int i2) {
            c.this.b(i2, 2);
        }

        @Override // io.flutter.embedding.engine.i.b.InterfaceC0237b
        public void a(int i2) {
            c.this.b(i2, 1);
        }

        @Override // io.flutter.embedding.engine.i.b.InterfaceC0237b
        public void b(@NonNull String str) {
            AccessibilityEvent a2 = c.this.a(0, 32);
            a2.getText().add(str);
            c.this.a(a2);
        }

        @Override // io.flutter.embedding.engine.FlutterJNI.a
        public void a(ByteBuffer byteBuffer, String[] strArr) {
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            c.this.a(byteBuffer, strArr);
        }

        @Override // io.flutter.embedding.engine.FlutterJNI.a
        public void b(ByteBuffer byteBuffer, String[] strArr) {
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            c.this.b(byteBuffer, strArr);
        }
    }

    /* compiled from: AccessibilityBridge.java */
    /* loaded from: classes2.dex */
    class b implements AccessibilityManager.AccessibilityStateChangeListener {
        b() {
        }

        @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
        public void onAccessibilityStateChanged(boolean z) {
            if (c.this.t) {
                return;
            }
            if (z) {
                c.this.f19565b.a(c.this.u);
                c.this.f19565b.b();
            } else {
                c.this.f19565b.a((b.InterfaceC0237b) null);
                c.this.f19565b.a();
            }
            if (c.this.s != null) {
                c.this.s.a(z, c.this.f19566c.isTouchExplorationEnabled());
            }
        }
    }

    /* compiled from: AccessibilityBridge.java */
    /* renamed from: io.flutter.view.c$c, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0248c extends ContentObserver {
        C0248c(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            onChange(z, null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            if (c.this.t) {
                return;
            }
            String string = Build.VERSION.SDK_INT < 17 ? null : Settings.Global.getString(c.this.f19569f, "transition_animation_scale");
            if (string != null && string.equals(ZimPlatform.REASON_0)) {
                c.this.f19575l |= e.DISABLE_ANIMATIONS.value;
            } else {
                c.this.f19575l &= e.DISABLE_ANIMATIONS.value ^ (-1);
            }
            c.this.g();
        }
    }

    /* compiled from: AccessibilityBridge.java */
    /* loaded from: classes2.dex */
    class d implements AccessibilityManager.TouchExplorationStateChangeListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AccessibilityManager f19579a;

        d(AccessibilityManager accessibilityManager) {
            this.f19579a = accessibilityManager;
        }

        @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
        public void onTouchExplorationStateChanged(boolean z) {
            if (c.this.t) {
                return;
            }
            if (!z) {
                c.this.f();
                c.this.f19575l &= e.ACCESSIBLE_NAVIGATION.value ^ (-1);
            } else {
                c.this.f19575l |= e.ACCESSIBLE_NAVIGATION.value;
            }
            c.this.g();
            if (c.this.s != null) {
                c.this.s.a(this.f19579a.isEnabled(), z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AccessibilityBridge.java */
    /* loaded from: classes2.dex */
    public enum e {
        ACCESSIBLE_NAVIGATION(1),
        INVERT_COLORS(2),
        DISABLE_ANIMATIONS(4);

        final int value;

        e(int i2) {
            this.value = i2;
        }
    }

    /* compiled from: AccessibilityBridge.java */
    /* loaded from: classes2.dex */
    public enum f {
        TAP(1),
        LONG_PRESS(2),
        SCROLL_LEFT(4),
        SCROLL_RIGHT(8),
        SCROLL_UP(16),
        SCROLL_DOWN(32),
        INCREASE(64),
        DECREASE(128),
        SHOW_ON_SCREEN(256),
        MOVE_CURSOR_FORWARD_BY_CHARACTER(512),
        MOVE_CURSOR_BACKWARD_BY_CHARACTER(1024),
        SET_SELECTION(2048),
        COPY(4096),
        CUT(FileUtil.STREAM_BUFFER_SIZE),
        PASTE(16384),
        DID_GAIN_ACCESSIBILITY_FOCUS(32768),
        DID_LOSE_ACCESSIBILITY_FOCUS(AntDetector.ACTION_ID_SAMPLE),
        CUSTOM_ACTION(AntDetector.SCENE_ID_LOGIN_REGIST),
        DISMISS(262144),
        MOVE_CURSOR_FORWARD_BY_WORD(524288),
        MOVE_CURSOR_BACKWARD_BY_WORD(1048576);

        public final int value;

        f(int i2) {
            this.value = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AccessibilityBridge.java */
    /* loaded from: classes2.dex */
    public static class g {

        /* renamed from: a, reason: collision with root package name */
        private int f19583a = -1;

        /* renamed from: b, reason: collision with root package name */
        private int f19584b = -1;

        /* renamed from: c, reason: collision with root package name */
        private int f19585c = -1;

        /* renamed from: d, reason: collision with root package name */
        private String f19586d;

        /* renamed from: e, reason: collision with root package name */
        private String f19587e;

        g() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AccessibilityBridge.java */
    /* loaded from: classes2.dex */
    public enum h {
        HAS_CHECKED_STATE(1),
        IS_CHECKED(2),
        IS_SELECTED(4),
        IS_BUTTON(8),
        IS_TEXT_FIELD(16),
        IS_FOCUSED(32),
        HAS_ENABLED_STATE(64),
        IS_ENABLED(128),
        IS_IN_MUTUALLY_EXCLUSIVE_GROUP(256),
        IS_HEADER(512),
        IS_OBSCURED(1024),
        SCOPES_ROUTE(2048),
        NAMES_ROUTE(4096),
        IS_HIDDEN(FileUtil.STREAM_BUFFER_SIZE),
        IS_IMAGE(16384),
        IS_LIVE_REGION(32768),
        HAS_TOGGLED_STATE(AntDetector.ACTION_ID_SAMPLE),
        IS_TOGGLED(AntDetector.SCENE_ID_LOGIN_REGIST),
        HAS_IMPLICIT_SCROLLING(262144),
        IS_READ_ONLY(1048576),
        IS_FOCUSABLE(2097152),
        IS_LINK(4194304);

        final int value;

        h(int i2) {
            this.value = i2;
        }
    }

    /* compiled from: AccessibilityBridge.java */
    /* loaded from: classes2.dex */
    public interface i {
        void a(boolean z, boolean z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AccessibilityBridge.java */
    /* loaded from: classes2.dex */
    public static class j {
        private String A;
        private float B;
        private float C;
        private float D;
        private float E;
        private float[] F;
        private j G;
        private List<g> J;
        private g K;
        private g L;
        private float[] N;
        private float[] P;
        private Rect Q;

        /* renamed from: a, reason: collision with root package name */
        final c f19589a;

        /* renamed from: c, reason: collision with root package name */
        private int f19591c;

        /* renamed from: d, reason: collision with root package name */
        private int f19592d;

        /* renamed from: e, reason: collision with root package name */
        private int f19593e;

        /* renamed from: f, reason: collision with root package name */
        private int f19594f;

        /* renamed from: g, reason: collision with root package name */
        private int f19595g;

        /* renamed from: h, reason: collision with root package name */
        private int f19596h;

        /* renamed from: i, reason: collision with root package name */
        private int f19597i;

        /* renamed from: j, reason: collision with root package name */
        private int f19598j;

        /* renamed from: k, reason: collision with root package name */
        private int f19599k;

        /* renamed from: l, reason: collision with root package name */
        private float f19600l;
        private float m;
        private float n;
        private String o;
        private String p;
        private String q;
        private String r;
        private String s;
        private int u;
        private int v;
        private int w;
        private int x;
        private float y;
        private String z;

        /* renamed from: b, reason: collision with root package name */
        private int f19590b = -1;
        private boolean t = false;
        private List<j> H = new ArrayList();
        private List<j> I = new ArrayList();
        private boolean M = true;
        private boolean O = true;

        j(@NonNull c cVar) {
            this.f19589a = cVar;
        }

        private void c() {
            if (this.M) {
                this.M = false;
                if (this.N == null) {
                    this.N = new float[16];
                }
                if (Matrix.invertM(this.N, 0, this.F, 0)) {
                    return;
                }
                Arrays.fill(this.N, 0.0f);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Rect d() {
            return this.Q;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String e() {
            String str;
            if (b(h.NAMES_ROUTE) && (str = this.o) != null && !str.isEmpty()) {
                return this.o;
            }
            Iterator<j> it = this.H.iterator();
            while (it.hasNext()) {
                String e2 = it.next().e();
                if (e2 != null && !e2.isEmpty()) {
                    return e2;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String f() {
            StringBuilder sb = new StringBuilder();
            for (String str : new String[]{this.p, this.o, this.s}) {
                if (str != null && str.length() > 0) {
                    if (sb.length() > 0) {
                        sb.append(", ");
                    }
                    sb.append(str);
                }
            }
            if (sb.length() > 0) {
                return sb.toString();
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean g() {
            String str;
            String str2;
            String str3;
            if (b(h.SCOPES_ROUTE)) {
                return false;
            }
            if (b(h.IS_FOCUSABLE)) {
                return true;
            }
            return ((((((f.SCROLL_RIGHT.value | f.SCROLL_LEFT.value) | f.SCROLL_UP.value) | f.SCROLL_DOWN.value) ^ (-1)) & this.f19592d) == 0 && this.f19591c == 0 && ((str = this.o) == null || str.isEmpty()) && (((str2 = this.p) == null || str2.isEmpty()) && ((str3 = this.s) == null || str3.isEmpty()))) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean b(j jVar, g.a.d.c<j> cVar) {
            return (jVar == null || jVar.a(cVar) == null) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean b(@NonNull f fVar) {
            return (fVar.value & this.f19592d) != 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean b(@NonNull h hVar) {
            return (hVar.value & this.f19591c) != 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean b() {
            return (Float.isNaN(this.f19600l) || Float.isNaN(this.y) || this.y == this.f19600l) ? false : true;
        }

        private float b(float f2, float f3, float f4, float f5) {
            return Math.min(f2, Math.min(f3, Math.min(f4, f5)));
        }

        private j a(g.a.d.c<j> cVar) {
            for (j jVar = this.G; jVar != null; jVar = jVar.G) {
                if (cVar.a(jVar)) {
                    return jVar;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a(@NonNull f fVar) {
            return (fVar.value & this.v) != 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a(@NonNull h hVar) {
            return (hVar.value & this.u) != 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a() {
            String str;
            if (this.o == null && this.A == null) {
                return false;
            }
            String str2 = this.o;
            return str2 == null || (str = this.A) == null || !str2.equals(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(@NonNull ByteBuffer byteBuffer, @NonNull String[] strArr) {
            this.t = true;
            this.z = this.p;
            this.A = this.o;
            this.u = this.f19591c;
            this.v = this.f19592d;
            this.w = this.f19595g;
            this.x = this.f19596h;
            this.y = this.f19600l;
            this.f19591c = byteBuffer.getInt();
            this.f19592d = byteBuffer.getInt();
            this.f19593e = byteBuffer.getInt();
            this.f19594f = byteBuffer.getInt();
            this.f19595g = byteBuffer.getInt();
            this.f19596h = byteBuffer.getInt();
            this.f19597i = byteBuffer.getInt();
            this.f19598j = byteBuffer.getInt();
            this.f19599k = byteBuffer.getInt();
            this.f19600l = byteBuffer.getFloat();
            this.m = byteBuffer.getFloat();
            this.n = byteBuffer.getFloat();
            int i2 = byteBuffer.getInt();
            this.o = i2 == -1 ? null : strArr[i2];
            int i3 = byteBuffer.getInt();
            this.p = i3 == -1 ? null : strArr[i3];
            int i4 = byteBuffer.getInt();
            this.q = i4 == -1 ? null : strArr[i4];
            int i5 = byteBuffer.getInt();
            this.r = i5 == -1 ? null : strArr[i5];
            int i6 = byteBuffer.getInt();
            this.s = i6 == -1 ? null : strArr[i6];
            k.fromInt(byteBuffer.getInt());
            this.B = byteBuffer.getFloat();
            this.C = byteBuffer.getFloat();
            this.D = byteBuffer.getFloat();
            this.E = byteBuffer.getFloat();
            if (this.F == null) {
                this.F = new float[16];
            }
            for (int i7 = 0; i7 < 16; i7++) {
                this.F[i7] = byteBuffer.getFloat();
            }
            this.M = true;
            this.O = true;
            int i8 = byteBuffer.getInt();
            this.H.clear();
            this.I.clear();
            for (int i9 = 0; i9 < i8; i9++) {
                j b2 = this.f19589a.b(byteBuffer.getInt());
                b2.G = this;
                this.H.add(b2);
            }
            for (int i10 = 0; i10 < i8; i10++) {
                j b3 = this.f19589a.b(byteBuffer.getInt());
                b3.G = this;
                this.I.add(b3);
            }
            int i11 = byteBuffer.getInt();
            if (i11 == 0) {
                this.J = null;
                return;
            }
            List<g> list = this.J;
            if (list == null) {
                this.J = new ArrayList(i11);
            } else {
                list.clear();
            }
            for (int i12 = 0; i12 < i11; i12++) {
                g a2 = this.f19589a.a(byteBuffer.getInt());
                if (a2.f19585c != f.TAP.value) {
                    if (a2.f19585c == f.LONG_PRESS.value) {
                        this.L = a2;
                    } else {
                        this.J.add(a2);
                    }
                } else {
                    this.K = a2;
                }
                this.J.add(a2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public j a(float[] fArr) {
            float f2 = fArr[3];
            float f3 = fArr[0] / f2;
            float f4 = fArr[1] / f2;
            if (f3 < this.B || f3 >= this.D || f4 < this.C || f4 >= this.E) {
                return null;
            }
            float[] fArr2 = new float[4];
            for (j jVar : this.I) {
                if (!jVar.b(h.IS_HIDDEN)) {
                    jVar.c();
                    Matrix.multiplyMV(fArr2, 0, jVar.N, 0, fArr, 0);
                    j a2 = jVar.a(fArr2);
                    if (a2 != null) {
                        return a2;
                    }
                }
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(List<j> list) {
            if (b(h.SCOPES_ROUTE)) {
                list.add(this);
            }
            Iterator<j> it = this.H.iterator();
            while (it.hasNext()) {
                it.next().a(list);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(float[] fArr, Set<j> set, boolean z) {
            set.add(this);
            if (this.O) {
                z = true;
            }
            if (z) {
                if (this.P == null) {
                    this.P = new float[16];
                }
                Matrix.multiplyMM(this.P, 0, fArr, 0, this.F, 0);
                float[] fArr2 = {this.B, this.C, 0.0f, 1.0f};
                float[] fArr3 = new float[4];
                float[] fArr4 = new float[4];
                float[] fArr5 = new float[4];
                float[] fArr6 = new float[4];
                a(fArr3, this.P, fArr2);
                fArr2[0] = this.D;
                fArr2[1] = this.C;
                a(fArr4, this.P, fArr2);
                fArr2[0] = this.D;
                fArr2[1] = this.E;
                a(fArr5, this.P, fArr2);
                fArr2[0] = this.B;
                fArr2[1] = this.E;
                a(fArr6, this.P, fArr2);
                if (this.Q == null) {
                    this.Q = new Rect();
                }
                this.Q.set(Math.round(b(fArr3[0], fArr4[0], fArr5[0], fArr6[0])), Math.round(b(fArr3[1], fArr4[1], fArr5[1], fArr6[1])), Math.round(a(fArr3[0], fArr4[0], fArr5[0], fArr6[0])), Math.round(a(fArr3[1], fArr4[1], fArr5[1], fArr6[1])));
                this.O = false;
            }
            Iterator<j> it = this.H.iterator();
            while (it.hasNext()) {
                it.next().a(this.P, set, z);
            }
        }

        private void a(float[] fArr, float[] fArr2, float[] fArr3) {
            Matrix.multiplyMV(fArr, 0, fArr2, 0, fArr3, 0);
            float f2 = fArr[3];
            fArr[0] = fArr[0] / f2;
            fArr[1] = fArr[1] / f2;
            fArr[2] = fArr[2] / f2;
            fArr[3] = 0.0f;
        }

        private float a(float f2, float f3, float f4, float f5) {
            return Math.max(f2, Math.max(f3, Math.max(f4, f5)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AccessibilityBridge.java */
    /* loaded from: classes2.dex */
    public enum k {
        UNKNOWN,
        LTR,
        RTL;

        public static k fromInt(int i2) {
            if (i2 == 1) {
                return RTL;
            }
            if (i2 != 2) {
                return UNKNOWN;
            }
            return LTR;
        }
    }

    public c(@NonNull View view, @NonNull io.flutter.embedding.engine.i.b bVar, @NonNull AccessibilityManager accessibilityManager, @NonNull ContentResolver contentResolver, io.flutter.plugin.platform.j jVar) {
        this(view, bVar, accessibilityManager, contentResolver, new AccessibilityViewEmbedder(view, AntDetector.ACTION_ID_SAMPLE), jVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean a(j jVar, j jVar2) {
        return jVar2 == jVar;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    @SuppressLint({"NewApi"})
    public AccessibilityNodeInfo createAccessibilityNodeInfo(int i2) {
        int i3;
        j jVar;
        if (i2 >= 65536) {
            return this.f19567d.createAccessibilityNodeInfo(i2);
        }
        if (i2 == -1) {
            AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(this.f19564a);
            this.f19564a.onInitializeAccessibilityNodeInfo(obtain);
            if (this.f19570g.containsKey(0)) {
                obtain.addChild(this.f19564a, 0);
            }
            return obtain;
        }
        j jVar2 = this.f19570g.get(Integer.valueOf(i2));
        if (jVar2 == null) {
            return null;
        }
        if (jVar2.f19597i != -1) {
            return this.f19567d.getRootNode(this.f19568e.a(Integer.valueOf(jVar2.f19597i)), jVar2.f19590b, jVar2.d());
        }
        AccessibilityNodeInfo obtain2 = AccessibilityNodeInfo.obtain(this.f19564a, i2);
        if (Build.VERSION.SDK_INT >= 18) {
            obtain2.setViewIdResourceName("");
        }
        obtain2.setPackageName(this.f19564a.getContext().getPackageName());
        obtain2.setClassName("android.view.View");
        obtain2.setSource(this.f19564a, i2);
        obtain2.setFocusable(jVar2.g());
        j jVar3 = this.m;
        if (jVar3 != null) {
            obtain2.setFocused(jVar3.f19590b == i2);
        }
        j jVar4 = this.f19572i;
        if (jVar4 != null) {
            obtain2.setAccessibilityFocused(jVar4.f19590b == i2);
        }
        if (jVar2.b(h.IS_TEXT_FIELD)) {
            obtain2.setPassword(jVar2.b(h.IS_OBSCURED));
            if (!jVar2.b(h.IS_READ_ONLY)) {
                obtain2.setClassName("android.widget.EditText");
            }
            if (Build.VERSION.SDK_INT >= 18) {
                obtain2.setEditable(!jVar2.b(h.IS_READ_ONLY));
                if (jVar2.f19595g != -1 && jVar2.f19596h != -1) {
                    obtain2.setTextSelection(jVar2.f19595g, jVar2.f19596h);
                }
                if (Build.VERSION.SDK_INT > 18 && (jVar = this.f19572i) != null && jVar.f19590b == i2) {
                    obtain2.setLiveRegion(1);
                }
            }
            if (jVar2.b(f.MOVE_CURSOR_FORWARD_BY_CHARACTER)) {
                obtain2.addAction(256);
                i3 = 1;
            } else {
                i3 = 0;
            }
            if (jVar2.b(f.MOVE_CURSOR_BACKWARD_BY_CHARACTER)) {
                obtain2.addAction(512);
                i3 |= 1;
            }
            if (jVar2.b(f.MOVE_CURSOR_FORWARD_BY_WORD)) {
                obtain2.addAction(256);
                i3 |= 2;
            }
            if (jVar2.b(f.MOVE_CURSOR_BACKWARD_BY_WORD)) {
                obtain2.addAction(512);
                i3 |= 2;
            }
            obtain2.setMovementGranularities(i3);
            if (Build.VERSION.SDK_INT >= 21 && jVar2.f19593e >= 0) {
                int length = jVar2.p == null ? 0 : jVar2.p.length();
                int unused = jVar2.f19594f;
                int unused2 = jVar2.f19593e;
                obtain2.setMaxTextLength((length - jVar2.f19594f) + jVar2.f19593e);
            }
        }
        if (Build.VERSION.SDK_INT > 18) {
            if (jVar2.b(f.SET_SELECTION)) {
                obtain2.addAction(AntDetector.SCENE_ID_LOGIN_REGIST);
            }
            if (jVar2.b(f.COPY)) {
                obtain2.addAction(16384);
            }
            if (jVar2.b(f.CUT)) {
                obtain2.addAction(AntDetector.ACTION_ID_SAMPLE);
            }
            if (jVar2.b(f.PASTE)) {
                obtain2.addAction(32768);
            }
        }
        if (jVar2.b(h.IS_BUTTON) || jVar2.b(h.IS_LINK)) {
            obtain2.setClassName("android.widget.Button");
        }
        if (jVar2.b(h.IS_IMAGE)) {
            obtain2.setClassName("android.widget.ImageView");
        }
        if (Build.VERSION.SDK_INT > 18 && jVar2.b(f.DISMISS)) {
            obtain2.setDismissable(true);
            obtain2.addAction(1048576);
        }
        if (jVar2.G != null) {
            obtain2.setParent(this.f19564a, jVar2.G.f19590b);
        } else {
            obtain2.setParent(this.f19564a);
        }
        Rect d2 = jVar2.d();
        if (jVar2.G != null) {
            Rect d3 = jVar2.G.d();
            Rect rect = new Rect(d2);
            rect.offset(-d3.left, -d3.top);
            obtain2.setBoundsInParent(rect);
        } else {
            obtain2.setBoundsInParent(d2);
        }
        obtain2.setBoundsInScreen(d2);
        obtain2.setVisibleToUser(true);
        obtain2.setEnabled(!jVar2.b(h.HAS_ENABLED_STATE) || jVar2.b(h.IS_ENABLED));
        if (jVar2.b(f.TAP)) {
            if (Build.VERSION.SDK_INT >= 21 && jVar2.K != null) {
                obtain2.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, jVar2.K.f19587e));
                obtain2.setClickable(true);
            } else {
                obtain2.addAction(16);
                obtain2.setClickable(true);
            }
        }
        if (jVar2.b(f.LONG_PRESS)) {
            if (Build.VERSION.SDK_INT >= 21 && jVar2.L != null) {
                obtain2.addAction(new AccessibilityNodeInfo.AccessibilityAction(32, jVar2.L.f19587e));
                obtain2.setLongClickable(true);
            } else {
                obtain2.addAction(32);
                obtain2.setLongClickable(true);
            }
        }
        if (jVar2.b(f.SCROLL_LEFT) || jVar2.b(f.SCROLL_UP) || jVar2.b(f.SCROLL_RIGHT) || jVar2.b(f.SCROLL_DOWN)) {
            obtain2.setScrollable(true);
            if (jVar2.b(h.HAS_IMPLICIT_SCROLLING)) {
                if (!jVar2.b(f.SCROLL_LEFT) && !jVar2.b(f.SCROLL_RIGHT)) {
                    if (Build.VERSION.SDK_INT > 18 && c(jVar2)) {
                        obtain2.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(jVar2.f19598j, 0, false));
                    } else {
                        obtain2.setClassName("android.widget.ScrollView");
                    }
                } else if (Build.VERSION.SDK_INT > 19 && c(jVar2)) {
                    obtain2.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(0, jVar2.f19598j, false));
                } else {
                    obtain2.setClassName("android.widget.HorizontalScrollView");
                }
            }
            if (jVar2.b(f.SCROLL_LEFT) || jVar2.b(f.SCROLL_UP)) {
                obtain2.addAction(4096);
            }
            if (jVar2.b(f.SCROLL_RIGHT) || jVar2.b(f.SCROLL_DOWN)) {
                obtain2.addAction(FileUtil.STREAM_BUFFER_SIZE);
            }
        }
        if (jVar2.b(f.INCREASE) || jVar2.b(f.DECREASE)) {
            obtain2.setClassName("android.widget.SeekBar");
            if (jVar2.b(f.INCREASE)) {
                obtain2.addAction(4096);
            }
            if (jVar2.b(f.DECREASE)) {
                obtain2.addAction(FileUtil.STREAM_BUFFER_SIZE);
            }
        }
        if (jVar2.b(h.IS_LIVE_REGION) && Build.VERSION.SDK_INT > 18) {
            obtain2.setLiveRegion(1);
        }
        if (jVar2.b(h.IS_TEXT_FIELD)) {
            obtain2.setText(jVar2.f());
        } else if (!jVar2.b(h.SCOPES_ROUTE)) {
            obtain2.setContentDescription(jVar2.f());
        }
        boolean b2 = jVar2.b(h.HAS_CHECKED_STATE);
        boolean b3 = jVar2.b(h.HAS_TOGGLED_STATE);
        obtain2.setCheckable(b2 || b3);
        if (b2) {
            obtain2.setChecked(jVar2.b(h.IS_CHECKED));
            if (jVar2.b(h.IS_IN_MUTUALLY_EXCLUSIVE_GROUP)) {
                obtain2.setClassName("android.widget.RadioButton");
            } else {
                obtain2.setClassName("android.widget.CheckBox");
            }
        } else if (b3) {
            obtain2.setChecked(jVar2.b(h.IS_TOGGLED));
            obtain2.setClassName("android.widget.Switch");
        }
        obtain2.setSelected(jVar2.b(h.IS_SELECTED));
        if (Build.VERSION.SDK_INT >= 28) {
            obtain2.setHeading(jVar2.b(h.IS_HEADER));
        }
        j jVar5 = this.f19572i;
        if (jVar5 != null && jVar5.f19590b == i2) {
            obtain2.addAction(128);
        } else {
            obtain2.addAction(64);
        }
        if (Build.VERSION.SDK_INT >= 21 && jVar2.J != null) {
            for (g gVar : jVar2.J) {
                obtain2.addAction(new AccessibilityNodeInfo.AccessibilityAction(gVar.f19583a, gVar.f19586d));
            }
        }
        for (j jVar6 : jVar2.H) {
            if (!jVar6.b(h.IS_HIDDEN)) {
                obtain2.addChild(this.f19564a, jVar6.f19590b);
            }
        }
        return obtain2;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public AccessibilityNodeInfo findFocus(int i2) {
        if (i2 == 1) {
            j jVar = this.m;
            if (jVar != null) {
                return createAccessibilityNodeInfo(jVar.f19590b);
            }
            Integer num = this.f19574k;
            if (num != null) {
                return createAccessibilityNodeInfo(num.intValue());
            }
        } else if (i2 != 2) {
            return null;
        }
        j jVar2 = this.f19572i;
        if (jVar2 != null) {
            return createAccessibilityNodeInfo(jVar2.f19590b);
        }
        Integer num2 = this.f19573j;
        if (num2 != null) {
            return createAccessibilityNodeInfo(num2.intValue());
        }
        return null;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public boolean performAction(int i2, int i3, @Nullable Bundle bundle) {
        if (i2 >= 65536) {
            boolean performAction = this.f19567d.performAction(i2, i3, bundle);
            if (performAction && i3 == 128) {
                this.f19573j = null;
            }
            return performAction;
        }
        j jVar = this.f19570g.get(Integer.valueOf(i2));
        boolean z = false;
        if (jVar == null) {
            return false;
        }
        switch (i3) {
            case 16:
                this.f19565b.a(i2, f.TAP);
                return true;
            case 32:
                this.f19565b.a(i2, f.LONG_PRESS);
                return true;
            case 64:
                this.f19565b.a(i2, f.DID_GAIN_ACCESSIBILITY_FOCUS);
                b(i2, 32768);
                if (this.f19572i == null) {
                    this.f19564a.invalidate();
                }
                this.f19572i = jVar;
                if (jVar.b(f.INCREASE) || jVar.b(f.DECREASE)) {
                    b(i2, 4);
                }
                return true;
            case 128:
                this.f19565b.a(i2, f.DID_LOSE_ACCESSIBILITY_FOCUS);
                b(i2, AntDetector.ACTION_ID_SAMPLE);
                this.f19572i = null;
                this.f19573j = null;
                return true;
            case 256:
                if (Build.VERSION.SDK_INT < 18) {
                    return false;
                }
                return a(jVar, i2, bundle, true);
            case 512:
                if (Build.VERSION.SDK_INT < 18) {
                    return false;
                }
                return a(jVar, i2, bundle, false);
            case 4096:
                if (!jVar.b(f.SCROLL_UP)) {
                    if (!jVar.b(f.SCROLL_LEFT)) {
                        if (!jVar.b(f.INCREASE)) {
                            return false;
                        }
                        jVar.p = jVar.q;
                        b(i2, 4);
                        this.f19565b.a(i2, f.INCREASE);
                    } else {
                        this.f19565b.a(i2, f.SCROLL_LEFT);
                    }
                } else {
                    this.f19565b.a(i2, f.SCROLL_UP);
                }
                return true;
            case FileUtil.STREAM_BUFFER_SIZE /* 8192 */:
                if (!jVar.b(f.SCROLL_DOWN)) {
                    if (!jVar.b(f.SCROLL_RIGHT)) {
                        if (!jVar.b(f.DECREASE)) {
                            return false;
                        }
                        jVar.p = jVar.r;
                        b(i2, 4);
                        this.f19565b.a(i2, f.DECREASE);
                    } else {
                        this.f19565b.a(i2, f.SCROLL_RIGHT);
                    }
                } else {
                    this.f19565b.a(i2, f.SCROLL_DOWN);
                }
                return true;
            case 16384:
                this.f19565b.a(i2, f.COPY);
                return true;
            case 32768:
                this.f19565b.a(i2, f.PASTE);
                return true;
            case AntDetector.ACTION_ID_SAMPLE /* 65536 */:
                this.f19565b.a(i2, f.CUT);
                return true;
            case AntDetector.SCENE_ID_LOGIN_REGIST /* 131072 */:
                if (Build.VERSION.SDK_INT < 18) {
                    return false;
                }
                HashMap hashMap = new HashMap();
                if (bundle != null && bundle.containsKey("ACTION_ARGUMENT_SELECTION_START_INT") && bundle.containsKey("ACTION_ARGUMENT_SELECTION_END_INT")) {
                    z = true;
                }
                if (!z) {
                    hashMap.put("base", Integer.valueOf(jVar.f19596h));
                    hashMap.put("extent", Integer.valueOf(jVar.f19596h));
                } else {
                    hashMap.put("base", Integer.valueOf(bundle.getInt("ACTION_ARGUMENT_SELECTION_START_INT")));
                    hashMap.put("extent", Integer.valueOf(bundle.getInt("ACTION_ARGUMENT_SELECTION_END_INT")));
                }
                this.f19565b.a(i2, f.SET_SELECTION, hashMap);
                return true;
            case 1048576:
                this.f19565b.a(i2, f.DISMISS);
                return true;
            case R.id.accessibilityActionShowOnScreen:
                this.f19565b.a(i2, f.SHOW_ON_SCREEN);
                return true;
            default:
                g gVar = this.f19571h.get(Integer.valueOf(i3 - y));
                if (gVar == null) {
                    return false;
                }
                this.f19565b.a(i2, f.CUSTOM_ACTION, Integer.valueOf(gVar.f19584b));
                return true;
        }
    }

    @VisibleForTesting
    public c(@NonNull View view, @NonNull io.flutter.embedding.engine.i.b bVar, @NonNull AccessibilityManager accessibilityManager, @NonNull ContentResolver contentResolver, @NonNull AccessibilityViewEmbedder accessibilityViewEmbedder, io.flutter.plugin.platform.j jVar) {
        this.f19570g = new HashMap();
        this.f19571h = new HashMap();
        this.f19575l = 0;
        this.p = new ArrayList();
        this.q = 0;
        this.r = 0;
        this.t = false;
        this.u = new a();
        this.v = new b();
        this.x = new C0248c(new Handler());
        this.f19564a = view;
        this.f19565b = bVar;
        this.f19566c = accessibilityManager;
        this.f19569f = contentResolver;
        this.f19567d = accessibilityViewEmbedder;
        this.f19568e = jVar;
        this.v.onAccessibilityStateChanged(accessibilityManager.isEnabled());
        this.f19566c.addAccessibilityStateChangeListener(this.v);
        if (Build.VERSION.SDK_INT >= 19) {
            this.w = new d(accessibilityManager);
            this.w.onTouchExplorationStateChanged(accessibilityManager.isTouchExplorationEnabled());
            this.f19566c.addTouchExplorationStateChangeListener(this.w);
        } else {
            this.w = null;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            this.x.onChange(false);
            this.f19569f.registerContentObserver(Settings.Global.getUriFor("transition_animation_scale"), false, this.x);
        }
        if (jVar != null) {
            jVar.a(this);
        }
    }

    private void d(j jVar) {
        Integer num;
        jVar.G = null;
        if (jVar.f19597i != -1 && (num = this.f19573j) != null && this.f19567d.platformViewOfNode(num.intValue()) == this.f19568e.a(Integer.valueOf(jVar.f19597i))) {
            b(this.f19573j.intValue(), AntDetector.ACTION_ID_SAMPLE);
            this.f19573j = null;
        }
        j jVar2 = this.f19572i;
        if (jVar2 == jVar) {
            b(jVar2.f19590b, AntDetector.ACTION_ID_SAMPLE);
            this.f19572i = null;
        }
        if (this.m == jVar) {
            this.m = null;
        }
        if (this.o == jVar) {
            this.o = null;
        }
    }

    private j e() {
        return this.f19570g.get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        j jVar = this.o;
        if (jVar != null) {
            b(jVar.f19590b, 256);
            this.o = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        this.f19565b.a(this.f19575l);
    }

    public void c() {
        this.t = true;
        io.flutter.plugin.platform.j jVar = this.f19568e;
        if (jVar != null) {
            jVar.a();
        }
        a((i) null);
        this.f19566c.removeAccessibilityStateChangeListener(this.v);
        if (Build.VERSION.SDK_INT >= 19) {
            this.f19566c.removeTouchExplorationStateChangeListener(this.w);
        }
        this.f19569f.unregisterContentObserver(this.x);
        this.f19565b.a((b.InterfaceC0237b) null);
    }

    public boolean b() {
        return this.f19566c.isTouchExplorationEnabled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public j b(int i2) {
        j jVar = this.f19570g.get(Integer.valueOf(i2));
        if (jVar != null) {
            return jVar;
        }
        j jVar2 = new j(this);
        jVar2.f19590b = i2;
        this.f19570g.put(Integer.valueOf(i2), jVar2);
        return jVar2;
    }

    public boolean a() {
        return this.f19566c.isEnabled();
    }

    public void a(@Nullable i iVar) {
        this.s = iVar;
    }

    @RequiresApi(18)
    @TargetApi(18)
    private boolean a(@NonNull j jVar, int i2, @NonNull Bundle bundle, boolean z) {
        int i3 = bundle.getInt("ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT");
        boolean z2 = bundle.getBoolean("ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN");
        if (i3 == 1) {
            if (!z || !jVar.b(f.MOVE_CURSOR_FORWARD_BY_CHARACTER)) {
                if (z || !jVar.b(f.MOVE_CURSOR_BACKWARD_BY_CHARACTER)) {
                    return false;
                }
                this.f19565b.a(i2, f.MOVE_CURSOR_BACKWARD_BY_CHARACTER, Boolean.valueOf(z2));
                return true;
            }
            this.f19565b.a(i2, f.MOVE_CURSOR_FORWARD_BY_CHARACTER, Boolean.valueOf(z2));
            return true;
        }
        if (i3 != 2) {
            return false;
        }
        if (!z || !jVar.b(f.MOVE_CURSOR_FORWARD_BY_WORD)) {
            if (z || !jVar.b(f.MOVE_CURSOR_BACKWARD_BY_WORD)) {
                return false;
            }
            this.f19565b.a(i2, f.MOVE_CURSOR_BACKWARD_BY_WORD, Boolean.valueOf(z2));
            return true;
        }
        this.f19565b.a(i2, f.MOVE_CURSOR_FORWARD_BY_WORD, Boolean.valueOf(z2));
        return true;
    }

    void b(@NonNull ByteBuffer byteBuffer, @NonNull String[] strArr) {
        j jVar;
        j jVar2;
        float f2;
        float f3;
        WindowInsets rootWindowInsets;
        ArrayList arrayList = new ArrayList();
        while (byteBuffer.hasRemaining()) {
            j b2 = b(byteBuffer.getInt());
            b2.a(byteBuffer, strArr);
            if (!b2.b(h.IS_HIDDEN)) {
                if (b2.b(h.IS_FOCUSED)) {
                    this.m = b2;
                }
                if (b2.t) {
                    arrayList.add(b2);
                }
            }
        }
        HashSet hashSet = new HashSet();
        j e2 = e();
        ArrayList<j> arrayList2 = new ArrayList();
        if (e2 != null) {
            float[] fArr = new float[16];
            Matrix.setIdentityM(fArr, 0);
            if (Build.VERSION.SDK_INT >= 23 && (rootWindowInsets = this.f19564a.getRootWindowInsets()) != null) {
                if (!this.r.equals(Integer.valueOf(rootWindowInsets.getSystemWindowInsetLeft()))) {
                    e2.O = true;
                    e2.M = true;
                }
                this.r = Integer.valueOf(rootWindowInsets.getSystemWindowInsetLeft());
                Matrix.translateM(fArr, 0, this.r.intValue(), 0.0f, 0.0f);
            }
            e2.a(fArr, (Set<j>) hashSet, false);
            e2.a(arrayList2);
        }
        j jVar3 = null;
        for (j jVar4 : arrayList2) {
            if (!this.p.contains(Integer.valueOf(jVar4.f19590b))) {
                jVar3 = jVar4;
            }
        }
        if (jVar3 == null && arrayList2.size() > 0) {
            jVar3 = (j) arrayList2.get(arrayList2.size() - 1);
        }
        if (jVar3 != null && jVar3.f19590b != this.q) {
            this.q = jVar3.f19590b;
            b(jVar3);
        }
        this.p.clear();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            this.p.add(Integer.valueOf(((j) it.next()).f19590b));
        }
        Iterator<Map.Entry<Integer, j>> it2 = this.f19570g.entrySet().iterator();
        while (it2.hasNext()) {
            j value = it2.next().getValue();
            if (!hashSet.contains(value)) {
                d(value);
                it2.remove();
            }
        }
        c(0);
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            j jVar5 = (j) it3.next();
            if (jVar5.b()) {
                AccessibilityEvent a2 = a(jVar5.f19590b, 4096);
                float f4 = jVar5.f19600l;
                float f5 = jVar5.m;
                if (Float.isInfinite(jVar5.m)) {
                    if (f4 > 70000.0f) {
                        f4 = 70000.0f;
                    }
                    f5 = 100000.0f;
                }
                if (Float.isInfinite(jVar5.n)) {
                    f2 = f5 + 100000.0f;
                    if (f4 < -70000.0f) {
                        f4 = -70000.0f;
                    }
                    f3 = f4 + 100000.0f;
                } else {
                    f2 = f5 - jVar5.n;
                    f3 = f4 - jVar5.n;
                }
                if (!jVar5.a(f.SCROLL_UP) && !jVar5.a(f.SCROLL_DOWN)) {
                    if (jVar5.a(f.SCROLL_LEFT) || jVar5.a(f.SCROLL_RIGHT)) {
                        a2.setScrollX((int) f3);
                        a2.setMaxScrollX((int) f2);
                    }
                } else {
                    a2.setScrollY((int) f3);
                    a2.setMaxScrollY((int) f2);
                }
                if (jVar5.f19598j > 0) {
                    a2.setItemCount(jVar5.f19598j);
                    a2.setFromIndex(jVar5.f19599k);
                    Iterator it4 = jVar5.I.iterator();
                    int i2 = 0;
                    while (it4.hasNext()) {
                        if (!((j) it4.next()).b(h.IS_HIDDEN)) {
                            i2++;
                        }
                    }
                    a2.setToIndex((jVar5.f19599k + i2) - 1);
                }
                a(a2);
            }
            if (jVar5.b(h.IS_LIVE_REGION) && jVar5.a()) {
                c(jVar5.f19590b);
            }
            j jVar6 = this.f19572i;
            if (jVar6 != null && jVar6.f19590b == jVar5.f19590b && !jVar5.a(h.IS_SELECTED) && jVar5.b(h.IS_SELECTED)) {
                AccessibilityEvent a3 = a(jVar5.f19590b, 4);
                a3.getText().add(jVar5.o);
                a(a3);
            }
            j jVar7 = this.m;
            if (jVar7 != null && jVar7.f19590b == jVar5.f19590b && ((jVar2 = this.n) == null || jVar2.f19590b != this.m.f19590b)) {
                this.n = this.m;
                a(a(jVar5.f19590b, 8));
            } else if (this.m == null) {
                this.n = null;
            }
            j jVar8 = this.m;
            if (jVar8 != null && jVar8.f19590b == jVar5.f19590b && jVar5.a(h.IS_TEXT_FIELD) && jVar5.b(h.IS_TEXT_FIELD) && ((jVar = this.f19572i) == null || jVar.f19590b == this.m.f19590b)) {
                String str = jVar5.z != null ? jVar5.z : "";
                String str2 = jVar5.p != null ? jVar5.p : "";
                AccessibilityEvent a4 = a(jVar5.f19590b, str, str2);
                if (a4 != null) {
                    a(a4);
                }
                if (jVar5.w != jVar5.f19595g || jVar5.x != jVar5.f19596h) {
                    AccessibilityEvent a5 = a(jVar5.f19590b, FileUtil.STREAM_BUFFER_SIZE);
                    a5.getText().add(str2);
                    a5.setFromIndex(jVar5.f19595g);
                    a5.setToIndex(jVar5.f19596h);
                    a5.setItemCount(str2.length());
                    a(a5);
                }
            }
        }
    }

    private boolean c(final j jVar) {
        return jVar.f19598j > 0 && (j.b(this.f19572i, (g.a.d.c<j>) new g.a.d.c() { // from class: io.flutter.view.a
            @Override // g.a.d.c
            public final boolean a(Object obj) {
                return c.a(c.j.this, (c.j) obj);
            }
        }) || !j.b(this.f19572i, new g.a.d.c() { // from class: io.flutter.view.b
            @Override // g.a.d.c
            public final boolean a(Object obj) {
                boolean b2;
                b2 = ((c.j) obj).b(c.h.HAS_IMPLICIT_SCROLLING);
                return b2;
            }
        }));
    }

    private void c(int i2) {
        AccessibilityEvent a2 = a(i2, 2048);
        if (Build.VERSION.SDK_INT >= 19) {
            a2.setContentChangeTypes(1);
        }
        a(a2);
    }

    public void d() {
        this.f19570g.clear();
        j jVar = this.f19572i;
        if (jVar != null) {
            b(jVar.f19590b, AntDetector.ACTION_ID_SAMPLE);
        }
        this.f19572i = null;
        this.o = null;
        c(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g a(int i2) {
        g gVar = this.f19571h.get(Integer.valueOf(i2));
        if (gVar != null) {
            return gVar;
        }
        g gVar2 = new g();
        gVar2.f19584b = i2;
        gVar2.f19583a = y + i2;
        this.f19571h.put(Integer.valueOf(i2), gVar2);
        return gVar2;
    }

    public boolean a(MotionEvent motionEvent) {
        if (!this.f19566c.isTouchExplorationEnabled() || this.f19570g.isEmpty()) {
            return false;
        }
        j a2 = e().a(new float[]{motionEvent.getX(), motionEvent.getY(), 0.0f, 1.0f});
        if (a2 != null && a2.f19597i != -1) {
            return this.f19567d.onAccessibilityHoverEvent(a2.f19590b, motionEvent);
        }
        if (motionEvent.getAction() != 9 && motionEvent.getAction() != 7) {
            if (motionEvent.getAction() == 10) {
                f();
            } else {
                String str = "unexpected accessibility hover event: " + motionEvent;
                return false;
            }
        } else {
            a(motionEvent.getX(), motionEvent.getY());
        }
        return true;
    }

    private void a(float f2, float f3) {
        j a2;
        if (this.f19570g.isEmpty() || (a2 = e().a(new float[]{f2, f3, 0.0f, 1.0f})) == this.o) {
            return;
        }
        if (a2 != null) {
            b(a2.f19590b, 128);
        }
        j jVar = this.o;
        if (jVar != null) {
            b(jVar.f19590b, 256);
        }
        this.o = a2;
    }

    void a(@NonNull ByteBuffer byteBuffer, @NonNull String[] strArr) {
        while (byteBuffer.hasRemaining()) {
            g a2 = a(byteBuffer.getInt());
            a2.f19585c = byteBuffer.getInt();
            int i2 = byteBuffer.getInt();
            String str = null;
            a2.f19586d = i2 == -1 ? null : strArr[i2];
            int i3 = byteBuffer.getInt();
            if (i3 != -1) {
                str = strArr[i3];
            }
            a2.f19587e = str;
        }
    }

    private AccessibilityEvent a(int i2, String str, String str2) {
        AccessibilityEvent a2 = a(i2, 16);
        a2.setBeforeText(str);
        a2.getText().add(str2);
        int i3 = 0;
        while (i3 < str.length() && i3 < str2.length() && str.charAt(i3) == str2.charAt(i3)) {
            i3++;
        }
        if (i3 >= str.length() && i3 >= str2.length()) {
            return null;
        }
        a2.setFromIndex(i3);
        int length = str.length() - 1;
        int length2 = str2.length() - 1;
        while (length >= i3 && length2 >= i3 && str.charAt(length) == str2.charAt(length2)) {
            length--;
            length2--;
        }
        a2.setRemovedCount((length - i3) + 1);
        a2.setAddedCount((length2 - i3) + 1);
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@NonNull AccessibilityEvent accessibilityEvent) {
        if (this.f19566c.isEnabled()) {
            this.f19564a.getParent().requestSendAccessibilityEvent(this.f19564a, accessibilityEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AccessibilityEvent a(int i2, int i3) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i3);
        obtain.setPackageName(this.f19564a.getContext().getPackageName());
        obtain.setSource(this.f19564a, i2);
        return obtain;
    }

    public boolean a(View view, View view2, AccessibilityEvent accessibilityEvent) {
        Integer recordFlutterId;
        if (!this.f19567d.requestSendAccessibilityEvent(view, view2, accessibilityEvent) || (recordFlutterId = this.f19567d.getRecordFlutterId(view, accessibilityEvent)) == null) {
            return false;
        }
        int eventType = accessibilityEvent.getEventType();
        if (eventType == 8) {
            this.f19574k = recordFlutterId;
            this.m = null;
            return true;
        }
        if (eventType == 128) {
            this.o = null;
            return true;
        }
        if (eventType == 32768) {
            this.f19573j = recordFlutterId;
            this.f19572i = null;
            return true;
        }
        if (eventType != 65536) {
            return true;
        }
        this.f19574k = null;
        this.f19573j = null;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i2, int i3) {
        if (this.f19566c.isEnabled()) {
            a(a(i2, i3));
        }
    }

    private void b(@NonNull j jVar) {
        AccessibilityEvent a2 = a(jVar.f19590b, 32);
        String e2 = jVar.e();
        if (e2 == null) {
            e2 = HanziToPinyin.Token.SEPARATOR;
        }
        a2.getText().add(e2);
        a(a2);
    }
}
