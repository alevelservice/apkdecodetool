package androidx.constraintlayout.widget;

import a.g.a.j.f;
import a.g.a.j.g;
import a.g.a.j.i;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    static final boolean ALLOWS_EMBEDDED = false;
    public static final int DESIGN_INFO_ID = 0;
    public static final String VERSION = "ConstraintLayout-1.1.3";

    /* renamed from: e, reason: collision with root package name */
    private ArrayList<ConstraintHelper> f1571e;

    /* renamed from: f, reason: collision with root package name */
    private final ArrayList<f> f1572f;

    /* renamed from: g, reason: collision with root package name */
    private int f1573g;

    /* renamed from: h, reason: collision with root package name */
    private int f1574h;

    /* renamed from: i, reason: collision with root package name */
    private int f1575i;

    /* renamed from: j, reason: collision with root package name */
    private int f1576j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f1577k;

    /* renamed from: l, reason: collision with root package name */
    private int f1578l;
    private a m;
    SparseArray<View> mChildrenByIds;
    int mLastMeasureHeightMode;
    int mLastMeasureHeightSize;
    int mLastMeasureWidthMode;
    int mLastMeasureWidthSize;
    g mLayoutWidget;
    private int n;
    private HashMap<String, Integer> o;
    private int p;
    private int q;
    private a.g.a.f r;

    public ConstraintLayout(Context context) {
        super(context);
        this.mChildrenByIds = new SparseArray<>();
        this.f1571e = new ArrayList<>(4);
        this.f1572f = new ArrayList<>(100);
        this.mLayoutWidget = new g();
        this.f1573g = 0;
        this.f1574h = 0;
        this.f1575i = Integer.MAX_VALUE;
        this.f1576j = Integer.MAX_VALUE;
        this.f1577k = true;
        this.f1578l = 7;
        this.m = null;
        this.n = -1;
        this.o = new HashMap<>();
        this.p = -1;
        this.q = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        a((AttributeSet) null);
    }

    private void a(AttributeSet attributeSet) {
        this.mLayoutWidget.a(this);
        this.mChildrenByIds.put(getId(), this);
        this.m = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, c.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == c.ConstraintLayout_Layout_android_minWidth) {
                    this.f1573g = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1573g);
                } else if (index == c.ConstraintLayout_Layout_android_minHeight) {
                    this.f1574h = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1574h);
                } else if (index == c.ConstraintLayout_Layout_android_maxWidth) {
                    this.f1575i = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1575i);
                } else if (index == c.ConstraintLayout_Layout_android_maxHeight) {
                    this.f1576j = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1576j);
                } else if (index == c.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.f1578l = obtainStyledAttributes.getInt(index, this.f1578l);
                } else if (index == c.ConstraintLayout_Layout_constraintSet) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        this.m = new a();
                        this.m.a(getContext(), resourceId);
                    } catch (Resources.NotFoundException unused) {
                        this.m = null;
                    }
                    this.n = resourceId;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.mLayoutWidget.u(this.f1578l);
    }

    private void b() {
        int childCount = getChildCount();
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            if (getChildAt(i2).isLayoutRequested()) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            this.f1572f.clear();
            a();
        }
    }

    private void c() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt instanceof Placeholder) {
                ((Placeholder) childAt).updatePostMeasure(this);
            }
        }
        int size = this.f1571e.size();
        if (size > 0) {
            for (int i3 = 0; i3 < size; i3++) {
                this.f1571e.get(i3).updatePostMeasure(this);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        if (Build.VERSION.SDK_INT < 14) {
            onViewAdded(view);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int i3 = (int) ((parseInt / 1080.0f) * width);
                        int i4 = (int) ((parseInt2 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f2 = i3;
                        float f3 = i4;
                        float f4 = i3 + ((int) ((parseInt3 / 1080.0f) * width));
                        canvas.drawLine(f2, f3, f4, f3, paint);
                        float parseInt4 = i4 + ((int) ((Integer.parseInt(split[3]) / 1920.0f) * height));
                        canvas.drawLine(f4, f3, f4, parseInt4, paint);
                        canvas.drawLine(f4, parseInt4, f2, parseInt4, paint);
                        canvas.drawLine(f2, parseInt4, f2, f3, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f2, f3, f4, parseInt4, paint);
                        canvas.drawLine(f2, parseInt4, f4, f3, paint);
                    }
                }
            }
        }
    }

    public void fillMetrics(a.g.a.f fVar) {
        this.r = fVar;
        this.mLayoutWidget.a(fVar);
    }

    public Object getDesignInformation(int i2, Object obj) {
        if (i2 != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> hashMap = this.o;
        if (hashMap == null || !hashMap.containsKey(str)) {
            return null;
        }
        return this.o.get(str);
    }

    public int getMaxHeight() {
        return this.f1576j;
    }

    public int getMaxWidth() {
        return this.f1575i;
    }

    public int getMinHeight() {
        return this.f1574h;
    }

    public int getMinWidth() {
        return this.f1573g;
    }

    public int getOptimizationLevel() {
        return this.mLayoutWidget.M();
    }

    public View getViewById(int i2) {
        return this.mChildrenByIds.get(i2);
    }

    public final f getViewWidget(View view) {
        if (view == this) {
            return this.mLayoutWidget;
        }
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).k0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        View content;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            f fVar = layoutParams.k0;
            if ((childAt.getVisibility() != 8 || layoutParams.X || layoutParams.Y || isInEditMode) && !layoutParams.Z) {
                int g2 = fVar.g();
                int h2 = fVar.h();
                int s = fVar.s() + g2;
                int i7 = fVar.i() + h2;
                childAt.layout(g2, h2, s, i7);
                if ((childAt instanceof Placeholder) && (content = ((Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(g2, h2, s, i7);
                }
            }
        }
        int size = this.f1571e.size();
        if (size > 0) {
            for (int i8 = 0; i8 < size; i8++) {
                this.f1571e.get(i8).updatePostLayout(this);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:174:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x035b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x013b  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r25, int r26) {
        /*
            Method dump skipped, instructions count: 945
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        f viewWidget = getViewWidget(view);
        if ((view instanceof Guideline) && !(viewWidget instanceof i)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.k0 = new i();
            layoutParams.X = true;
            ((i) layoutParams.k0).v(layoutParams.R);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.validateParams();
            ((LayoutParams) view.getLayoutParams()).Y = true;
            if (!this.f1571e.contains(constraintHelper)) {
                this.f1571e.add(constraintHelper);
            }
        }
        this.mChildrenByIds.put(view.getId(), view);
        this.f1577k = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.mChildrenByIds.remove(view.getId());
        f viewWidget = getViewWidget(view);
        this.mLayoutWidget.c(viewWidget);
        this.f1571e.remove(view);
        this.f1572f.remove(viewWidget);
        this.f1577k = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        super.removeView(view);
        if (Build.VERSION.SDK_INT < 14) {
            onViewRemoved(view);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
        this.f1577k = true;
        this.p = -1;
        this.q = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
    }

    public void setConstraintSet(a aVar) {
        this.m = aVar;
    }

    public void setDesignInformation(int i2, Object obj, Object obj2) {
        if (i2 == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.o == null) {
                this.o = new HashMap<>();
            }
            String str = (String) obj;
            int indexOf = str.indexOf("/");
            if (indexOf != -1) {
                str = str.substring(indexOf + 1);
            }
            this.o.put(str, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    @Override // android.view.View
    public void setId(int i2) {
        this.mChildrenByIds.remove(getId());
        super.setId(i2);
        this.mChildrenByIds.put(getId(), this);
    }

    public void setMaxHeight(int i2) {
        if (i2 == this.f1576j) {
            return;
        }
        this.f1576j = i2;
        requestLayout();
    }

    public void setMaxWidth(int i2) {
        if (i2 == this.f1575i) {
            return;
        }
        this.f1575i = i2;
        requestLayout();
    }

    public void setMinHeight(int i2) {
        if (i2 == this.f1574h) {
            return;
        }
        this.f1574h = i2;
        requestLayout();
    }

    public void setMinWidth(int i2) {
        if (i2 == this.f1573g) {
            return;
        }
        this.f1573g = i2;
        requestLayout();
    }

    public void setOptimizationLevel(int i2) {
        this.mLayoutWidget.u(i2);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    protected void solveLinearSystem(String str) {
        this.mLayoutWidget.K();
        a.g.a.f fVar = this.r;
        if (fVar != null) {
            fVar.f191c++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02ca A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02a1  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x023e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(int r24, int r25) {
        /*
            Method dump skipped, instructions count: 737
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.b(int, int):void");
    }

    private void c(int i2, int i3) {
        int i4;
        f.b bVar;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        f.b bVar2 = f.b.FIXED;
        getLayoutParams();
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                bVar = f.b.WRAP_CONTENT;
            } else if (mode != 1073741824) {
                bVar = bVar2;
            } else {
                i4 = Math.min(this.f1575i, size) - paddingLeft;
                bVar = bVar2;
            }
            i4 = 0;
        } else {
            i4 = size;
            bVar = f.b.WRAP_CONTENT;
        }
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 == 0) {
                bVar2 = f.b.WRAP_CONTENT;
            } else if (mode2 == 1073741824) {
                size2 = Math.min(this.f1576j, size2) - paddingTop;
            }
            size2 = 0;
        } else {
            bVar2 = f.b.WRAP_CONTENT;
        }
        this.mLayoutWidget.l(0);
        this.mLayoutWidget.k(0);
        this.mLayoutWidget.a(bVar);
        this.mLayoutWidget.o(i4);
        this.mLayoutWidget.b(bVar2);
        this.mLayoutWidget.g(size2);
        this.mLayoutWidget.l((this.f1573g - getPaddingLeft()) - getPaddingRight());
        this.mLayoutWidget.k((this.f1574h - getPaddingTop()) - getPaddingBottom());
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mChildrenByIds = new SparseArray<>();
        this.f1571e = new ArrayList<>(4);
        this.f1572f = new ArrayList<>(100);
        this.mLayoutWidget = new g();
        this.f1573g = 0;
        this.f1574h = 0;
        this.f1575i = Integer.MAX_VALUE;
        this.f1576j = Integer.MAX_VALUE;
        this.f1577k = true;
        this.f1578l = 7;
        this.m = null;
        this.n = -1;
        this.o = new HashMap<>();
        this.p = -1;
        this.q = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        a(attributeSet);
    }

    /* JADX WARN: Code restructure failed: missing block: B:230:0x01d6, code lost:
    
        if (r11 != (-1)) goto L123;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x036e  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x01e7  */
    /* JADX WARN: Type inference failed for: r26v0, types: [androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v37 */
    /* JADX WARN: Type inference failed for: r3v56 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a() {
        /*
            Method dump skipped, instructions count: 998
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.a():void");
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mChildrenByIds = new SparseArray<>();
        this.f1571e = new ArrayList<>(4);
        this.f1572f = new ArrayList<>(100);
        this.mLayoutWidget = new g();
        this.f1573g = 0;
        this.f1574h = 0;
        this.f1575i = Integer.MAX_VALUE;
        this.f1576j = Integer.MAX_VALUE;
        this.f1577k = true;
        this.f1578l = 7;
        this.m = null;
        this.n = -1;
        this.o = new HashMap<>();
        this.p = -1;
        this.q = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        a(attributeSet);
    }

    private final f a(int i2) {
        if (i2 == 0) {
            return this.mLayoutWidget;
        }
        View view = this.mChildrenByIds.get(i2);
        if (view == null && (view = findViewById(i2)) != null && view != this && view.getParent() == this) {
            onViewAdded(view);
        }
        if (view == this) {
            return this.mLayoutWidget;
        }
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).k0;
    }

    private void a(int i2, int i3) {
        boolean z;
        boolean z2;
        int baseline;
        int childMeasureSpec;
        int childMeasureSpec2;
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                f fVar = layoutParams.k0;
                if (!layoutParams.X && !layoutParams.Y) {
                    fVar.n(childAt.getVisibility());
                    int i5 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                    int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                    boolean z3 = layoutParams.U;
                    if (z3 || layoutParams.V || (!z3 && layoutParams.H == 1) || ((ViewGroup.MarginLayoutParams) layoutParams).width == -1 || (!layoutParams.V && (layoutParams.I == 1 || ((ViewGroup.MarginLayoutParams) layoutParams).height == -1))) {
                        if (i5 == 0) {
                            childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingLeft, -2);
                            z = true;
                        } else if (i5 == -1) {
                            childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingLeft, -1);
                            z = false;
                        } else {
                            z = i5 == -2;
                            childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingLeft, i5);
                        }
                        if (i6 == 0) {
                            childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, paddingTop, -2);
                            z2 = true;
                        } else if (i6 == -1) {
                            childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, paddingTop, -1);
                            z2 = false;
                        } else {
                            z2 = i6 == -2;
                            childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, paddingTop, i6);
                        }
                        childAt.measure(childMeasureSpec, childMeasureSpec2);
                        a.g.a.f fVar2 = this.r;
                        if (fVar2 != null) {
                            fVar2.f189a++;
                        }
                        fVar.b(i5 == -2);
                        fVar.a(i6 == -2);
                        i5 = childAt.getMeasuredWidth();
                        i6 = childAt.getMeasuredHeight();
                    } else {
                        z = false;
                        z2 = false;
                    }
                    fVar.o(i5);
                    fVar.g(i6);
                    if (z) {
                        fVar.q(i5);
                    }
                    if (z2) {
                        fVar.p(i6);
                    }
                    if (layoutParams.W && (baseline = childAt.getBaseline()) != -1) {
                        fVar.f(baseline);
                    }
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public float A;
        public String B;
        int C;
        public float D;
        public float E;
        public int F;
        public int G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public float N;
        public float O;
        public int P;
        public int Q;
        public int R;
        public boolean S;
        public boolean T;
        boolean U;
        boolean V;
        boolean W;
        boolean X;
        boolean Y;
        boolean Z;

        /* renamed from: a, reason: collision with root package name */
        public int f1579a;
        int a0;

        /* renamed from: b, reason: collision with root package name */
        public int f1580b;
        int b0;

        /* renamed from: c, reason: collision with root package name */
        public float f1581c;
        int c0;

        /* renamed from: d, reason: collision with root package name */
        public int f1582d;
        int d0;

        /* renamed from: e, reason: collision with root package name */
        public int f1583e;
        int e0;

        /* renamed from: f, reason: collision with root package name */
        public int f1584f;
        int f0;

        /* renamed from: g, reason: collision with root package name */
        public int f1585g;
        float g0;

        /* renamed from: h, reason: collision with root package name */
        public int f1586h;
        int h0;

        /* renamed from: i, reason: collision with root package name */
        public int f1587i;
        int i0;

        /* renamed from: j, reason: collision with root package name */
        public int f1588j;
        float j0;

        /* renamed from: k, reason: collision with root package name */
        public int f1589k;
        f k0;

        /* renamed from: l, reason: collision with root package name */
        public int f1590l;
        public boolean l0;
        public int m;
        public int n;
        public float o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public int v;
        public int w;
        public int x;
        public int y;
        public float z;

        /* loaded from: classes.dex */
        private static class a {

            /* renamed from: a, reason: collision with root package name */
            public static final SparseIntArray f1591a = new SparseIntArray();

            static {
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintCircle, 2);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                f1591a.append(c.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                f1591a.append(c.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                f1591a.append(c.ConstraintLayout_Layout_android_orientation, 1);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                f1591a.append(c.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                f1591a.append(c.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                f1591a.append(c.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                f1591a.append(c.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                f1591a.append(c.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                f1591a.append(c.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                f1591a.append(c.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                f1591a.append(c.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                f1591a.append(c.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
            }
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int i2;
            this.f1579a = -1;
            this.f1580b = -1;
            this.f1581c = -1.0f;
            this.f1582d = -1;
            this.f1583e = -1;
            this.f1584f = -1;
            this.f1585g = -1;
            this.f1586h = -1;
            this.f1587i = -1;
            this.f1588j = -1;
            this.f1589k = -1;
            this.f1590l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 1;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = 0;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 1.0f;
            this.O = 1.0f;
            this.P = -1;
            this.Q = -1;
            this.R = -1;
            this.S = false;
            this.T = false;
            this.U = true;
            this.V = true;
            this.W = false;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.a0 = -1;
            this.b0 = -1;
            this.c0 = -1;
            this.d0 = -1;
            this.e0 = -1;
            this.f0 = -1;
            this.g0 = 0.5f;
            this.k0 = new f();
            this.l0 = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                switch (a.f1591a.get(index)) {
                    case 1:
                        this.R = obtainStyledAttributes.getInt(index, this.R);
                        break;
                    case 2:
                        this.m = obtainStyledAttributes.getResourceId(index, this.m);
                        if (this.m == -1) {
                            this.m = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.n = obtainStyledAttributes.getDimensionPixelSize(index, this.n);
                        break;
                    case 4:
                        this.o = obtainStyledAttributes.getFloat(index, this.o) % 360.0f;
                        float f2 = this.o;
                        if (f2 < 0.0f) {
                            this.o = (360.0f - f2) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.f1579a = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1579a);
                        break;
                    case 6:
                        this.f1580b = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1580b);
                        break;
                    case 7:
                        this.f1581c = obtainStyledAttributes.getFloat(index, this.f1581c);
                        break;
                    case 8:
                        this.f1582d = obtainStyledAttributes.getResourceId(index, this.f1582d);
                        if (this.f1582d == -1) {
                            this.f1582d = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        this.f1583e = obtainStyledAttributes.getResourceId(index, this.f1583e);
                        if (this.f1583e == -1) {
                            this.f1583e = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        this.f1584f = obtainStyledAttributes.getResourceId(index, this.f1584f);
                        if (this.f1584f == -1) {
                            this.f1584f = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        this.f1585g = obtainStyledAttributes.getResourceId(index, this.f1585g);
                        if (this.f1585g == -1) {
                            this.f1585g = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        this.f1586h = obtainStyledAttributes.getResourceId(index, this.f1586h);
                        if (this.f1586h == -1) {
                            this.f1586h = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        this.f1587i = obtainStyledAttributes.getResourceId(index, this.f1587i);
                        if (this.f1587i == -1) {
                            this.f1587i = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        this.f1588j = obtainStyledAttributes.getResourceId(index, this.f1588j);
                        if (this.f1588j == -1) {
                            this.f1588j = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        this.f1589k = obtainStyledAttributes.getResourceId(index, this.f1589k);
                        if (this.f1589k == -1) {
                            this.f1589k = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        this.f1590l = obtainStyledAttributes.getResourceId(index, this.f1590l);
                        if (this.f1590l == -1) {
                            this.f1590l = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        this.p = obtainStyledAttributes.getResourceId(index, this.p);
                        if (this.p == -1) {
                            this.p = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        this.q = obtainStyledAttributes.getResourceId(index, this.q);
                        if (this.q == -1) {
                            this.q = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        this.r = obtainStyledAttributes.getResourceId(index, this.r);
                        if (this.r == -1) {
                            this.r = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        this.s = obtainStyledAttributes.getResourceId(index, this.s);
                        if (this.s == -1) {
                            this.s = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.t = obtainStyledAttributes.getDimensionPixelSize(index, this.t);
                        break;
                    case 22:
                        this.u = obtainStyledAttributes.getDimensionPixelSize(index, this.u);
                        break;
                    case 23:
                        this.v = obtainStyledAttributes.getDimensionPixelSize(index, this.v);
                        break;
                    case 24:
                        this.w = obtainStyledAttributes.getDimensionPixelSize(index, this.w);
                        break;
                    case 25:
                        this.x = obtainStyledAttributes.getDimensionPixelSize(index, this.x);
                        break;
                    case 26:
                        this.y = obtainStyledAttributes.getDimensionPixelSize(index, this.y);
                        break;
                    case 27:
                        this.S = obtainStyledAttributes.getBoolean(index, this.S);
                        break;
                    case 28:
                        this.T = obtainStyledAttributes.getBoolean(index, this.T);
                        break;
                    case 29:
                        this.z = obtainStyledAttributes.getFloat(index, this.z);
                        break;
                    case 30:
                        this.A = obtainStyledAttributes.getFloat(index, this.A);
                        break;
                    case 31:
                        this.H = obtainStyledAttributes.getInt(index, 0);
                        int i4 = this.H;
                        break;
                    case 32:
                        this.I = obtainStyledAttributes.getInt(index, 0);
                        int i5 = this.I;
                        break;
                    case 33:
                        try {
                            this.J = obtainStyledAttributes.getDimensionPixelSize(index, this.J);
                            break;
                        } catch (Exception unused) {
                            if (obtainStyledAttributes.getInt(index, this.J) == -2) {
                                this.J = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.L = obtainStyledAttributes.getDimensionPixelSize(index, this.L);
                            break;
                        } catch (Exception unused2) {
                            if (obtainStyledAttributes.getInt(index, this.L) == -2) {
                                this.L = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.N = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.N));
                        break;
                    case 36:
                        try {
                            this.K = obtainStyledAttributes.getDimensionPixelSize(index, this.K);
                            break;
                        } catch (Exception unused3) {
                            if (obtainStyledAttributes.getInt(index, this.K) == -2) {
                                this.K = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.M = obtainStyledAttributes.getDimensionPixelSize(index, this.M);
                            break;
                        } catch (Exception unused4) {
                            if (obtainStyledAttributes.getInt(index, this.M) == -2) {
                                this.M = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.O = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.O));
                        break;
                    case 44:
                        this.B = obtainStyledAttributes.getString(index);
                        this.C = -1;
                        String str = this.B;
                        if (str != null) {
                            int length = str.length();
                            int indexOf = this.B.indexOf(44);
                            if (indexOf <= 0 || indexOf >= length - 1) {
                                i2 = 0;
                            } else {
                                String substring = this.B.substring(0, indexOf);
                                if (substring.equalsIgnoreCase("W")) {
                                    this.C = 0;
                                } else if (substring.equalsIgnoreCase("H")) {
                                    this.C = 1;
                                }
                                i2 = indexOf + 1;
                            }
                            int indexOf2 = this.B.indexOf(58);
                            if (indexOf2 >= 0 && indexOf2 < length - 1) {
                                String substring2 = this.B.substring(i2, indexOf2);
                                String substring3 = this.B.substring(indexOf2 + 1);
                                if (substring2.length() > 0 && substring3.length() > 0) {
                                    try {
                                        float parseFloat = Float.parseFloat(substring2);
                                        float parseFloat2 = Float.parseFloat(substring3);
                                        if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                            if (this.C == 1) {
                                                Math.abs(parseFloat2 / parseFloat);
                                                break;
                                            } else {
                                                Math.abs(parseFloat / parseFloat2);
                                                break;
                                            }
                                        }
                                    } catch (NumberFormatException unused5) {
                                        break;
                                    }
                                }
                            } else {
                                String substring4 = this.B.substring(i2);
                                if (substring4.length() > 0) {
                                    Float.parseFloat(substring4);
                                    break;
                                } else {
                                    break;
                                }
                            }
                        } else {
                            break;
                        }
                        break;
                    case 45:
                        this.D = obtainStyledAttributes.getFloat(index, this.D);
                        break;
                    case 46:
                        this.E = obtainStyledAttributes.getFloat(index, this.E);
                        break;
                    case 47:
                        this.F = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 48:
                        this.G = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 49:
                        this.P = obtainStyledAttributes.getDimensionPixelOffset(index, this.P);
                        break;
                    case 50:
                        this.Q = obtainStyledAttributes.getDimensionPixelOffset(index, this.Q);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
            a();
        }

        public void a() {
            this.X = false;
            this.U = true;
            this.V = true;
            if (((ViewGroup.MarginLayoutParams) this).width == -2 && this.S) {
                this.U = false;
                this.H = 1;
            }
            if (((ViewGroup.MarginLayoutParams) this).height == -2 && this.T) {
                this.V = false;
                this.I = 1;
            }
            if (((ViewGroup.MarginLayoutParams) this).width == 0 || ((ViewGroup.MarginLayoutParams) this).width == -1) {
                this.U = false;
                if (((ViewGroup.MarginLayoutParams) this).width == 0 && this.H == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.S = true;
                }
            }
            if (((ViewGroup.MarginLayoutParams) this).height == 0 || ((ViewGroup.MarginLayoutParams) this).height == -1) {
                this.V = false;
                if (((ViewGroup.MarginLayoutParams) this).height == 0 && this.I == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.T = true;
                }
            }
            if (this.f1581c == -1.0f && this.f1579a == -1 && this.f1580b == -1) {
                return;
            }
            this.X = true;
            this.U = true;
            this.V = true;
            if (!(this.k0 instanceof i)) {
                this.k0 = new i();
            }
            ((i) this.k0).v(this.R);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x007c  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0084  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @android.annotation.TargetApi(17)
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void resolveLayoutDirection(int r7) {
            /*
                Method dump skipped, instructions count: 265
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.resolveLayoutDirection(int):void");
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.f1579a = -1;
            this.f1580b = -1;
            this.f1581c = -1.0f;
            this.f1582d = -1;
            this.f1583e = -1;
            this.f1584f = -1;
            this.f1585g = -1;
            this.f1586h = -1;
            this.f1587i = -1;
            this.f1588j = -1;
            this.f1589k = -1;
            this.f1590l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 1;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = 0;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 1.0f;
            this.O = 1.0f;
            this.P = -1;
            this.Q = -1;
            this.R = -1;
            this.S = false;
            this.T = false;
            this.U = true;
            this.V = true;
            this.W = false;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.a0 = -1;
            this.b0 = -1;
            this.c0 = -1;
            this.d0 = -1;
            this.e0 = -1;
            this.f0 = -1;
            this.g0 = 0.5f;
            this.k0 = new f();
            this.l0 = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1579a = -1;
            this.f1580b = -1;
            this.f1581c = -1.0f;
            this.f1582d = -1;
            this.f1583e = -1;
            this.f1584f = -1;
            this.f1585g = -1;
            this.f1586h = -1;
            this.f1587i = -1;
            this.f1588j = -1;
            this.f1589k = -1;
            this.f1590l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 1;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = 0;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 1.0f;
            this.O = 1.0f;
            this.P = -1;
            this.Q = -1;
            this.R = -1;
            this.S = false;
            this.T = false;
            this.U = true;
            this.V = true;
            this.W = false;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.a0 = -1;
            this.b0 = -1;
            this.c0 = -1;
            this.d0 = -1;
            this.e0 = -1;
            this.f0 = -1;
            this.g0 = 0.5f;
            this.k0 = new f();
            this.l0 = false;
        }
    }
}
