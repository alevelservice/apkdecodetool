package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: ConstraintSet.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: b, reason: collision with root package name */
    private static final int[] f1595b = {0, 4, 8};

    /* renamed from: c, reason: collision with root package name */
    private static SparseIntArray f1596c = new SparseIntArray();

    /* renamed from: a, reason: collision with root package name */
    private HashMap<Integer, b> f1597a = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConstraintSet.java */
    /* loaded from: classes.dex */
    public static class b {
        public int A;
        public int B;
        public int C;
        public int D;
        public int E;
        public int F;
        public int G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public int N;
        public int O;
        public int P;
        public float Q;
        public float R;
        public int S;
        public int T;
        public float U;
        public boolean V;
        public float W;
        public float X;
        public float Y;
        public float Z;

        /* renamed from: a, reason: collision with root package name */
        boolean f1598a;
        public float a0;

        /* renamed from: b, reason: collision with root package name */
        public int f1599b;
        public float b0;

        /* renamed from: c, reason: collision with root package name */
        public int f1600c;
        public float c0;

        /* renamed from: d, reason: collision with root package name */
        int f1601d;
        public float d0;

        /* renamed from: e, reason: collision with root package name */
        public int f1602e;
        public float e0;

        /* renamed from: f, reason: collision with root package name */
        public int f1603f;
        public float f0;

        /* renamed from: g, reason: collision with root package name */
        public float f1604g;
        public float g0;

        /* renamed from: h, reason: collision with root package name */
        public int f1605h;
        public boolean h0;

        /* renamed from: i, reason: collision with root package name */
        public int f1606i;
        public boolean i0;

        /* renamed from: j, reason: collision with root package name */
        public int f1607j;
        public int j0;

        /* renamed from: k, reason: collision with root package name */
        public int f1608k;
        public int k0;

        /* renamed from: l, reason: collision with root package name */
        public int f1609l;
        public int l0;
        public int m;
        public int m0;
        public int n;
        public int n0;
        public int o;
        public int o0;
        public int p;
        public float p0;
        public int q;
        public float q0;
        public int r;
        public boolean r0;
        public int s;
        public int s0;
        public int t;
        public int t0;
        public float u;
        public int[] u0;
        public float v;
        public String v0;
        public String w;
        public int x;
        public int y;
        public float z;

        private b() {
            this.f1598a = false;
            this.f1602e = -1;
            this.f1603f = -1;
            this.f1604g = -1.0f;
            this.f1605h = -1;
            this.f1606i = -1;
            this.f1607j = -1;
            this.f1608k = -1;
            this.f1609l = -1;
            this.m = -1;
            this.n = -1;
            this.o = -1;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = 0.5f;
            this.v = 0.5f;
            this.w = null;
            this.x = -1;
            this.y = 0;
            this.z = 0.0f;
            this.A = -1;
            this.B = -1;
            this.C = -1;
            this.D = -1;
            this.E = -1;
            this.F = -1;
            this.G = -1;
            this.H = -1;
            this.I = -1;
            this.J = 0;
            this.K = -1;
            this.L = -1;
            this.M = -1;
            this.N = -1;
            this.O = -1;
            this.P = -1;
            this.Q = 0.0f;
            this.R = 0.0f;
            this.S = 0;
            this.T = 0;
            this.U = 1.0f;
            this.V = false;
            this.W = 0.0f;
            this.X = 0.0f;
            this.Y = 0.0f;
            this.Z = 0.0f;
            this.a0 = 1.0f;
            this.b0 = 1.0f;
            this.c0 = Float.NaN;
            this.d0 = Float.NaN;
            this.e0 = 0.0f;
            this.f0 = 0.0f;
            this.g0 = 0.0f;
            this.h0 = false;
            this.i0 = false;
            this.j0 = 0;
            this.k0 = 0;
            this.l0 = -1;
            this.m0 = -1;
            this.n0 = -1;
            this.o0 = -1;
            this.p0 = 1.0f;
            this.q0 = 1.0f;
            this.r0 = false;
            this.s0 = -1;
            this.t0 = -1;
        }

        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public b m2clone() {
            b bVar = new b();
            bVar.f1598a = this.f1598a;
            bVar.f1599b = this.f1599b;
            bVar.f1600c = this.f1600c;
            bVar.f1602e = this.f1602e;
            bVar.f1603f = this.f1603f;
            bVar.f1604g = this.f1604g;
            bVar.f1605h = this.f1605h;
            bVar.f1606i = this.f1606i;
            bVar.f1607j = this.f1607j;
            bVar.f1608k = this.f1608k;
            bVar.f1609l = this.f1609l;
            bVar.m = this.m;
            bVar.n = this.n;
            bVar.o = this.o;
            bVar.p = this.p;
            bVar.q = this.q;
            bVar.r = this.r;
            bVar.s = this.s;
            bVar.t = this.t;
            bVar.u = this.u;
            bVar.v = this.v;
            bVar.w = this.w;
            bVar.A = this.A;
            bVar.B = this.B;
            bVar.u = this.u;
            bVar.u = this.u;
            bVar.u = this.u;
            bVar.u = this.u;
            bVar.u = this.u;
            bVar.C = this.C;
            bVar.D = this.D;
            bVar.E = this.E;
            bVar.F = this.F;
            bVar.G = this.G;
            bVar.H = this.H;
            bVar.I = this.I;
            bVar.J = this.J;
            bVar.K = this.K;
            bVar.L = this.L;
            bVar.M = this.M;
            bVar.N = this.N;
            bVar.O = this.O;
            bVar.P = this.P;
            bVar.Q = this.Q;
            bVar.R = this.R;
            bVar.S = this.S;
            bVar.T = this.T;
            bVar.U = this.U;
            bVar.V = this.V;
            bVar.W = this.W;
            bVar.X = this.X;
            bVar.Y = this.Y;
            bVar.Z = this.Z;
            bVar.a0 = this.a0;
            bVar.b0 = this.b0;
            bVar.c0 = this.c0;
            bVar.d0 = this.d0;
            bVar.e0 = this.e0;
            bVar.f0 = this.f0;
            bVar.g0 = this.g0;
            bVar.h0 = this.h0;
            bVar.i0 = this.i0;
            bVar.j0 = this.j0;
            bVar.k0 = this.k0;
            bVar.l0 = this.l0;
            bVar.m0 = this.m0;
            bVar.n0 = this.n0;
            bVar.o0 = this.o0;
            bVar.p0 = this.p0;
            bVar.q0 = this.q0;
            bVar.s0 = this.s0;
            bVar.t0 = this.t0;
            int[] iArr = this.u0;
            if (iArr != null) {
                bVar.u0 = Arrays.copyOf(iArr, iArr.length);
            }
            bVar.x = this.x;
            bVar.y = this.y;
            bVar.z = this.z;
            bVar.r0 = this.r0;
            return bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(ConstraintHelper constraintHelper, int i2, Constraints.LayoutParams layoutParams) {
            a(i2, layoutParams);
            if (constraintHelper instanceof Barrier) {
                this.t0 = 1;
                Barrier barrier = (Barrier) constraintHelper;
                this.s0 = barrier.getType();
                this.u0 = barrier.getReferencedIds();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i2, Constraints.LayoutParams layoutParams) {
            a(i2, (ConstraintLayout.LayoutParams) layoutParams);
            this.U = layoutParams.m0;
            this.X = layoutParams.p0;
            this.Y = layoutParams.q0;
            this.Z = layoutParams.r0;
            this.a0 = layoutParams.s0;
            this.b0 = layoutParams.t0;
            this.c0 = layoutParams.u0;
            this.d0 = layoutParams.v0;
            this.e0 = layoutParams.w0;
            this.f0 = layoutParams.x0;
            this.g0 = layoutParams.y0;
            this.W = layoutParams.o0;
            this.V = layoutParams.n0;
        }

        private void a(int i2, ConstraintLayout.LayoutParams layoutParams) {
            this.f1601d = i2;
            this.f1605h = layoutParams.f1582d;
            this.f1606i = layoutParams.f1583e;
            this.f1607j = layoutParams.f1584f;
            this.f1608k = layoutParams.f1585g;
            this.f1609l = layoutParams.f1586h;
            this.m = layoutParams.f1587i;
            this.n = layoutParams.f1588j;
            this.o = layoutParams.f1589k;
            this.p = layoutParams.f1590l;
            this.q = layoutParams.p;
            this.r = layoutParams.q;
            this.s = layoutParams.r;
            this.t = layoutParams.s;
            this.u = layoutParams.z;
            this.v = layoutParams.A;
            this.w = layoutParams.B;
            this.x = layoutParams.m;
            this.y = layoutParams.n;
            this.z = layoutParams.o;
            this.A = layoutParams.P;
            this.B = layoutParams.Q;
            this.C = layoutParams.R;
            this.f1604g = layoutParams.f1581c;
            this.f1602e = layoutParams.f1579a;
            this.f1603f = layoutParams.f1580b;
            this.f1599b = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            this.f1600c = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            this.D = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            this.E = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            this.F = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            this.G = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            this.Q = layoutParams.E;
            this.R = layoutParams.D;
            this.T = layoutParams.G;
            this.S = layoutParams.F;
            boolean z = layoutParams.S;
            this.h0 = z;
            this.i0 = layoutParams.T;
            this.j0 = layoutParams.H;
            this.k0 = layoutParams.I;
            this.h0 = z;
            this.l0 = layoutParams.L;
            this.m0 = layoutParams.M;
            this.n0 = layoutParams.J;
            this.o0 = layoutParams.K;
            this.p0 = layoutParams.N;
            this.q0 = layoutParams.O;
            if (Build.VERSION.SDK_INT >= 17) {
                this.H = layoutParams.getMarginEnd();
                this.I = layoutParams.getMarginStart();
            }
        }

        public void a(ConstraintLayout.LayoutParams layoutParams) {
            layoutParams.f1582d = this.f1605h;
            layoutParams.f1583e = this.f1606i;
            layoutParams.f1584f = this.f1607j;
            layoutParams.f1585g = this.f1608k;
            layoutParams.f1586h = this.f1609l;
            layoutParams.f1587i = this.m;
            layoutParams.f1588j = this.n;
            layoutParams.f1589k = this.o;
            layoutParams.f1590l = this.p;
            layoutParams.p = this.q;
            layoutParams.q = this.r;
            layoutParams.r = this.s;
            layoutParams.s = this.t;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = this.D;
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = this.E;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = this.F;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = this.G;
            layoutParams.x = this.P;
            layoutParams.y = this.O;
            layoutParams.z = this.u;
            layoutParams.A = this.v;
            layoutParams.m = this.x;
            layoutParams.n = this.y;
            layoutParams.o = this.z;
            layoutParams.B = this.w;
            layoutParams.P = this.A;
            layoutParams.Q = this.B;
            layoutParams.E = this.Q;
            layoutParams.D = this.R;
            layoutParams.G = this.T;
            layoutParams.F = this.S;
            layoutParams.S = this.h0;
            layoutParams.T = this.i0;
            layoutParams.H = this.j0;
            layoutParams.I = this.k0;
            layoutParams.L = this.l0;
            layoutParams.M = this.m0;
            layoutParams.J = this.n0;
            layoutParams.K = this.o0;
            layoutParams.N = this.p0;
            layoutParams.O = this.q0;
            layoutParams.R = this.C;
            layoutParams.f1581c = this.f1604g;
            layoutParams.f1579a = this.f1602e;
            layoutParams.f1580b = this.f1603f;
            ((ViewGroup.MarginLayoutParams) layoutParams).width = this.f1599b;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = this.f1600c;
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.setMarginStart(this.I);
                layoutParams.setMarginEnd(this.H);
            }
            layoutParams.a();
        }
    }

    static {
        f1596c.append(c.ConstraintSet_layout_constraintLeft_toLeftOf, 25);
        f1596c.append(c.ConstraintSet_layout_constraintLeft_toRightOf, 26);
        f1596c.append(c.ConstraintSet_layout_constraintRight_toLeftOf, 29);
        f1596c.append(c.ConstraintSet_layout_constraintRight_toRightOf, 30);
        f1596c.append(c.ConstraintSet_layout_constraintTop_toTopOf, 36);
        f1596c.append(c.ConstraintSet_layout_constraintTop_toBottomOf, 35);
        f1596c.append(c.ConstraintSet_layout_constraintBottom_toTopOf, 4);
        f1596c.append(c.ConstraintSet_layout_constraintBottom_toBottomOf, 3);
        f1596c.append(c.ConstraintSet_layout_constraintBaseline_toBaselineOf, 1);
        f1596c.append(c.ConstraintSet_layout_editor_absoluteX, 6);
        f1596c.append(c.ConstraintSet_layout_editor_absoluteY, 7);
        f1596c.append(c.ConstraintSet_layout_constraintGuide_begin, 17);
        f1596c.append(c.ConstraintSet_layout_constraintGuide_end, 18);
        f1596c.append(c.ConstraintSet_layout_constraintGuide_percent, 19);
        f1596c.append(c.ConstraintSet_android_orientation, 27);
        f1596c.append(c.ConstraintSet_layout_constraintStart_toEndOf, 32);
        f1596c.append(c.ConstraintSet_layout_constraintStart_toStartOf, 33);
        f1596c.append(c.ConstraintSet_layout_constraintEnd_toStartOf, 10);
        f1596c.append(c.ConstraintSet_layout_constraintEnd_toEndOf, 9);
        f1596c.append(c.ConstraintSet_layout_goneMarginLeft, 13);
        f1596c.append(c.ConstraintSet_layout_goneMarginTop, 16);
        f1596c.append(c.ConstraintSet_layout_goneMarginRight, 14);
        f1596c.append(c.ConstraintSet_layout_goneMarginBottom, 11);
        f1596c.append(c.ConstraintSet_layout_goneMarginStart, 15);
        f1596c.append(c.ConstraintSet_layout_goneMarginEnd, 12);
        f1596c.append(c.ConstraintSet_layout_constraintVertical_weight, 40);
        f1596c.append(c.ConstraintSet_layout_constraintHorizontal_weight, 39);
        f1596c.append(c.ConstraintSet_layout_constraintHorizontal_chainStyle, 41);
        f1596c.append(c.ConstraintSet_layout_constraintVertical_chainStyle, 42);
        f1596c.append(c.ConstraintSet_layout_constraintHorizontal_bias, 20);
        f1596c.append(c.ConstraintSet_layout_constraintVertical_bias, 37);
        f1596c.append(c.ConstraintSet_layout_constraintDimensionRatio, 5);
        f1596c.append(c.ConstraintSet_layout_constraintLeft_creator, 75);
        f1596c.append(c.ConstraintSet_layout_constraintTop_creator, 75);
        f1596c.append(c.ConstraintSet_layout_constraintRight_creator, 75);
        f1596c.append(c.ConstraintSet_layout_constraintBottom_creator, 75);
        f1596c.append(c.ConstraintSet_layout_constraintBaseline_creator, 75);
        f1596c.append(c.ConstraintSet_android_layout_marginLeft, 24);
        f1596c.append(c.ConstraintSet_android_layout_marginRight, 28);
        f1596c.append(c.ConstraintSet_android_layout_marginStart, 31);
        f1596c.append(c.ConstraintSet_android_layout_marginEnd, 8);
        f1596c.append(c.ConstraintSet_android_layout_marginTop, 34);
        f1596c.append(c.ConstraintSet_android_layout_marginBottom, 2);
        f1596c.append(c.ConstraintSet_android_layout_width, 23);
        f1596c.append(c.ConstraintSet_android_layout_height, 21);
        f1596c.append(c.ConstraintSet_android_visibility, 22);
        f1596c.append(c.ConstraintSet_android_alpha, 43);
        f1596c.append(c.ConstraintSet_android_elevation, 44);
        f1596c.append(c.ConstraintSet_android_rotationX, 45);
        f1596c.append(c.ConstraintSet_android_rotationY, 46);
        f1596c.append(c.ConstraintSet_android_rotation, 60);
        f1596c.append(c.ConstraintSet_android_scaleX, 47);
        f1596c.append(c.ConstraintSet_android_scaleY, 48);
        f1596c.append(c.ConstraintSet_android_transformPivotX, 49);
        f1596c.append(c.ConstraintSet_android_transformPivotY, 50);
        f1596c.append(c.ConstraintSet_android_translationX, 51);
        f1596c.append(c.ConstraintSet_android_translationY, 52);
        f1596c.append(c.ConstraintSet_android_translationZ, 53);
        f1596c.append(c.ConstraintSet_layout_constraintWidth_default, 54);
        f1596c.append(c.ConstraintSet_layout_constraintHeight_default, 55);
        f1596c.append(c.ConstraintSet_layout_constraintWidth_max, 56);
        f1596c.append(c.ConstraintSet_layout_constraintHeight_max, 57);
        f1596c.append(c.ConstraintSet_layout_constraintWidth_min, 58);
        f1596c.append(c.ConstraintSet_layout_constraintHeight_min, 59);
        f1596c.append(c.ConstraintSet_layout_constraintCircle, 61);
        f1596c.append(c.ConstraintSet_layout_constraintCircleRadius, 62);
        f1596c.append(c.ConstraintSet_layout_constraintCircleAngle, 63);
        f1596c.append(c.ConstraintSet_android_id, 38);
        f1596c.append(c.ConstraintSet_layout_constraintWidth_percent, 69);
        f1596c.append(c.ConstraintSet_layout_constraintHeight_percent, 70);
        f1596c.append(c.ConstraintSet_chainUseRtl, 71);
        f1596c.append(c.ConstraintSet_barrierDirection, 72);
        f1596c.append(c.ConstraintSet_constraint_referenced_ids, 73);
        f1596c.append(c.ConstraintSet_barrierAllowsGoneWidgets, 74);
    }

    public void a(Constraints constraints) {
        int childCount = constraints.getChildCount();
        this.f1597a.clear();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = constraints.getChildAt(i2);
            Constraints.LayoutParams layoutParams = (Constraints.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (id != -1) {
                if (!this.f1597a.containsKey(Integer.valueOf(id))) {
                    this.f1597a.put(Integer.valueOf(id), new b());
                }
                b bVar = this.f1597a.get(Integer.valueOf(id));
                if (childAt instanceof ConstraintHelper) {
                    bVar.a((ConstraintHelper) childAt, id, layoutParams);
                }
                bVar.a(id, layoutParams);
            } else {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.f1597a.keySet());
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = constraintLayout.getChildAt(i2);
            int id = childAt.getId();
            if (id != -1) {
                if (this.f1597a.containsKey(Integer.valueOf(id))) {
                    hashSet.remove(Integer.valueOf(id));
                    b bVar = this.f1597a.get(Integer.valueOf(id));
                    if (childAt instanceof Barrier) {
                        bVar.t0 = 1;
                    }
                    int i3 = bVar.t0;
                    if (i3 != -1 && i3 == 1) {
                        Barrier barrier = (Barrier) childAt;
                        barrier.setId(id);
                        barrier.setType(bVar.s0);
                        barrier.setAllowsGoneWidget(bVar.r0);
                        int[] iArr = bVar.u0;
                        if (iArr != null) {
                            barrier.setReferencedIds(iArr);
                        } else {
                            String str = bVar.v0;
                            if (str != null) {
                                bVar.u0 = a(barrier, str);
                                barrier.setReferencedIds(bVar.u0);
                            }
                        }
                    }
                    ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                    bVar.a(layoutParams);
                    childAt.setLayoutParams(layoutParams);
                    childAt.setVisibility(bVar.J);
                    if (Build.VERSION.SDK_INT >= 17) {
                        childAt.setAlpha(bVar.U);
                        childAt.setRotation(bVar.X);
                        childAt.setRotationX(bVar.Y);
                        childAt.setRotationY(bVar.Z);
                        childAt.setScaleX(bVar.a0);
                        childAt.setScaleY(bVar.b0);
                        if (!Float.isNaN(bVar.c0)) {
                            childAt.setPivotX(bVar.c0);
                        }
                        if (!Float.isNaN(bVar.d0)) {
                            childAt.setPivotY(bVar.d0);
                        }
                        childAt.setTranslationX(bVar.e0);
                        childAt.setTranslationY(bVar.f0);
                        if (Build.VERSION.SDK_INT >= 21) {
                            childAt.setTranslationZ(bVar.g0);
                            if (bVar.V) {
                                childAt.setElevation(bVar.W);
                            }
                        }
                    }
                }
            } else {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            b bVar2 = this.f1597a.get(num);
            int i4 = bVar2.t0;
            if (i4 != -1 && i4 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                int[] iArr2 = bVar2.u0;
                if (iArr2 != null) {
                    barrier2.setReferencedIds(iArr2);
                } else {
                    String str2 = bVar2.v0;
                    if (str2 != null) {
                        bVar2.u0 = a(barrier2, str2);
                        barrier2.setReferencedIds(bVar2.u0);
                    }
                }
                barrier2.setType(bVar2.s0);
                ConstraintLayout.LayoutParams generateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                barrier2.validateParams();
                bVar2.a(generateDefaultLayoutParams);
                constraintLayout.addView(barrier2, generateDefaultLayoutParams);
            }
            if (bVar2.f1598a) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.LayoutParams generateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                bVar2.a(generateDefaultLayoutParams2);
                constraintLayout.addView(guideline, generateDefaultLayoutParams2);
            }
        }
    }

    public void a(Context context, int i2) {
        XmlResourceParser xml = context.getResources().getXml(i2);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    b a2 = a(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        a2.f1598a = true;
                    }
                    this.f1597a.put(Integer.valueOf(a2.f1601d), a2);
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }

    private static int a(TypedArray typedArray, int i2, int i3) {
        int resourceId = typedArray.getResourceId(i2, i3);
        return resourceId == -1 ? typedArray.getInt(i2, -1) : resourceId;
    }

    private b a(Context context, AttributeSet attributeSet) {
        b bVar = new b();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.ConstraintSet);
        a(bVar, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        return bVar;
    }

    private void a(b bVar, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArray.getIndex(i2);
            int i3 = f1596c.get(index);
            switch (i3) {
                case 1:
                    bVar.p = a(typedArray, index, bVar.p);
                    break;
                case 2:
                    bVar.G = typedArray.getDimensionPixelSize(index, bVar.G);
                    break;
                case 3:
                    bVar.o = a(typedArray, index, bVar.o);
                    break;
                case 4:
                    bVar.n = a(typedArray, index, bVar.n);
                    break;
                case 5:
                    bVar.w = typedArray.getString(index);
                    break;
                case 6:
                    bVar.A = typedArray.getDimensionPixelOffset(index, bVar.A);
                    break;
                case 7:
                    bVar.B = typedArray.getDimensionPixelOffset(index, bVar.B);
                    break;
                case 8:
                    bVar.H = typedArray.getDimensionPixelSize(index, bVar.H);
                    break;
                case 9:
                    bVar.t = a(typedArray, index, bVar.t);
                    break;
                case 10:
                    bVar.s = a(typedArray, index, bVar.s);
                    break;
                case 11:
                    bVar.N = typedArray.getDimensionPixelSize(index, bVar.N);
                    break;
                case 12:
                    bVar.O = typedArray.getDimensionPixelSize(index, bVar.O);
                    break;
                case 13:
                    bVar.K = typedArray.getDimensionPixelSize(index, bVar.K);
                    break;
                case 14:
                    bVar.M = typedArray.getDimensionPixelSize(index, bVar.M);
                    break;
                case 15:
                    bVar.P = typedArray.getDimensionPixelSize(index, bVar.P);
                    break;
                case 16:
                    bVar.L = typedArray.getDimensionPixelSize(index, bVar.L);
                    break;
                case 17:
                    bVar.f1602e = typedArray.getDimensionPixelOffset(index, bVar.f1602e);
                    break;
                case 18:
                    bVar.f1603f = typedArray.getDimensionPixelOffset(index, bVar.f1603f);
                    break;
                case 19:
                    bVar.f1604g = typedArray.getFloat(index, bVar.f1604g);
                    break;
                case 20:
                    bVar.u = typedArray.getFloat(index, bVar.u);
                    break;
                case 21:
                    bVar.f1600c = typedArray.getLayoutDimension(index, bVar.f1600c);
                    break;
                case 22:
                    bVar.J = typedArray.getInt(index, bVar.J);
                    bVar.J = f1595b[bVar.J];
                    break;
                case 23:
                    bVar.f1599b = typedArray.getLayoutDimension(index, bVar.f1599b);
                    break;
                case 24:
                    bVar.D = typedArray.getDimensionPixelSize(index, bVar.D);
                    break;
                case 25:
                    bVar.f1605h = a(typedArray, index, bVar.f1605h);
                    break;
                case 26:
                    bVar.f1606i = a(typedArray, index, bVar.f1606i);
                    break;
                case 27:
                    bVar.C = typedArray.getInt(index, bVar.C);
                    break;
                case 28:
                    bVar.E = typedArray.getDimensionPixelSize(index, bVar.E);
                    break;
                case 29:
                    bVar.f1607j = a(typedArray, index, bVar.f1607j);
                    break;
                case 30:
                    bVar.f1608k = a(typedArray, index, bVar.f1608k);
                    break;
                case 31:
                    bVar.I = typedArray.getDimensionPixelSize(index, bVar.I);
                    break;
                case 32:
                    bVar.q = a(typedArray, index, bVar.q);
                    break;
                case 33:
                    bVar.r = a(typedArray, index, bVar.r);
                    break;
                case 34:
                    bVar.F = typedArray.getDimensionPixelSize(index, bVar.F);
                    break;
                case 35:
                    bVar.m = a(typedArray, index, bVar.m);
                    break;
                case 36:
                    bVar.f1609l = a(typedArray, index, bVar.f1609l);
                    break;
                case 37:
                    bVar.v = typedArray.getFloat(index, bVar.v);
                    break;
                case 38:
                    bVar.f1601d = typedArray.getResourceId(index, bVar.f1601d);
                    break;
                case 39:
                    bVar.R = typedArray.getFloat(index, bVar.R);
                    break;
                case 40:
                    bVar.Q = typedArray.getFloat(index, bVar.Q);
                    break;
                case 41:
                    bVar.S = typedArray.getInt(index, bVar.S);
                    break;
                case 42:
                    bVar.T = typedArray.getInt(index, bVar.T);
                    break;
                case 43:
                    bVar.U = typedArray.getFloat(index, bVar.U);
                    break;
                case 44:
                    bVar.V = true;
                    bVar.W = typedArray.getDimension(index, bVar.W);
                    break;
                case 45:
                    bVar.Y = typedArray.getFloat(index, bVar.Y);
                    break;
                case 46:
                    bVar.Z = typedArray.getFloat(index, bVar.Z);
                    break;
                case 47:
                    bVar.a0 = typedArray.getFloat(index, bVar.a0);
                    break;
                case 48:
                    bVar.b0 = typedArray.getFloat(index, bVar.b0);
                    break;
                case 49:
                    bVar.c0 = typedArray.getFloat(index, bVar.c0);
                    break;
                case 50:
                    bVar.d0 = typedArray.getFloat(index, bVar.d0);
                    break;
                case 51:
                    bVar.e0 = typedArray.getDimension(index, bVar.e0);
                    break;
                case 52:
                    bVar.f0 = typedArray.getDimension(index, bVar.f0);
                    break;
                case 53:
                    bVar.g0 = typedArray.getDimension(index, bVar.g0);
                    break;
                default:
                    switch (i3) {
                        case 60:
                            bVar.X = typedArray.getFloat(index, bVar.X);
                            break;
                        case 61:
                            bVar.x = a(typedArray, index, bVar.x);
                            break;
                        case 62:
                            bVar.y = typedArray.getDimensionPixelSize(index, bVar.y);
                            break;
                        case 63:
                            bVar.z = typedArray.getFloat(index, bVar.z);
                            break;
                        default:
                            switch (i3) {
                                case 69:
                                    bVar.p0 = typedArray.getFloat(index, 1.0f);
                                    break;
                                case 70:
                                    bVar.q0 = typedArray.getFloat(index, 1.0f);
                                    break;
                                case 71:
                                    break;
                                case 72:
                                    bVar.s0 = typedArray.getInt(index, bVar.s0);
                                    break;
                                case 73:
                                    bVar.v0 = typedArray.getString(index);
                                    break;
                                case 74:
                                    bVar.r0 = typedArray.getBoolean(index, bVar.r0);
                                    break;
                                case 75:
                                    String str = "unused attribute 0x" + Integer.toHexString(index) + "   " + f1596c.get(index);
                                    break;
                                default:
                                    String str2 = "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f1596c.get(index);
                                    break;
                            }
                    }
            }
        }
    }

    private int[] a(View view, String str) {
        int i2;
        Object designInformation;
        String[] split = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i3 = 0;
        int i4 = 0;
        while (i3 < split.length) {
            String trim = split[i3].trim();
            try {
                i2 = androidx.constraintlayout.widget.b.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i2 = 0;
            }
            if (i2 == 0) {
                i2 = context.getResources().getIdentifier(trim, "id", context.getPackageName());
            }
            if (i2 == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (designInformation = ((ConstraintLayout) view.getParent()).getDesignInformation(0, trim)) != null && (designInformation instanceof Integer)) {
                i2 = ((Integer) designInformation).intValue();
            }
            iArr[i4] = i2;
            i3++;
            i4++;
        }
        return i4 != split.length ? Arrays.copyOf(iArr, i4) : iArr;
    }
}
