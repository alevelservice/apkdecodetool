package io.flutter.plugin.platform;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.Presentation;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

@Keep
@TargetApi(17)
/* loaded from: classes2.dex */
class SingleViewPresentation extends Presentation {
    private final io.flutter.plugin.platform.c accessibilityEventsDelegate;
    private FrameLayout container;
    private Object createParams;
    private final View.OnFocusChangeListener focusChangeListener;
    private final Context outerContext;
    private a rootView;
    private boolean startFocused;
    private e state;
    private final g viewFactory;
    private int viewId;

    /* loaded from: classes2.dex */
    private static class a extends FrameLayout {

        /* renamed from: e, reason: collision with root package name */
        private final io.flutter.plugin.platform.c f19274e;

        /* renamed from: f, reason: collision with root package name */
        private final View f19275f;

        public a(Context context, io.flutter.plugin.platform.c cVar, View view) {
            super(context);
            this.f19274e = cVar;
            this.f19275f = view;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public boolean requestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f19274e.a(this.f19275f, view, accessibilityEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b extends ViewGroup {

        /* renamed from: e, reason: collision with root package name */
        private final Rect f19276e;

        /* renamed from: f, reason: collision with root package name */
        private final Rect f19277f;

        public b(Context context) {
            super(context);
            this.f19276e = new Rect();
            this.f19277f = new Rect();
        }

        private static int a(int i2) {
            return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), e.b.b.a.a.a.c.ALL_INT);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
            for (int i6 = 0; i6 < getChildCount(); i6++) {
                View childAt = getChildAt(i6);
                WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) childAt.getLayoutParams();
                this.f19276e.set(i2, i3, i4, i5);
                Gravity.apply(layoutParams.gravity, childAt.getMeasuredWidth(), childAt.getMeasuredHeight(), this.f19276e, layoutParams.x, layoutParams.y, this.f19277f);
                Rect rect = this.f19277f;
                childAt.layout(rect.left, rect.top, rect.right, rect.bottom);
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i2, int i3) {
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                getChildAt(i4).measure(a(i2), a(i3));
            }
            super.onMeasure(i2, i3);
        }
    }

    /* loaded from: classes2.dex */
    private static class c extends ContextWrapper {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final InputMethodManager f19278a;

        c(Context context) {
            this(context, null);
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Context createDisplayContext(Display display) {
            return new c(super.createDisplayContext(display), this.f19278a);
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Object getSystemService(String str) {
            if ("input_method".equals(str)) {
                return this.f19278a;
            }
            return super.getSystemService(str);
        }

        private c(Context context, @Nullable InputMethodManager inputMethodManager) {
            super(context);
            this.f19278a = inputMethodManager == null ? (InputMethodManager) context.getSystemService("input_method") : inputMethodManager;
        }
    }

    /* loaded from: classes2.dex */
    private static class d extends ContextWrapper {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final WindowManagerHandler f19279a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        private WindowManager f19280b;

        /* renamed from: c, reason: collision with root package name */
        private final Context f19281c;

        d(Context context, @NonNull WindowManagerHandler windowManagerHandler, Context context2) {
            super(context);
            this.f19279a = windowManagerHandler;
            this.f19281c = context2;
        }

        private WindowManager a() {
            if (this.f19280b == null) {
                this.f19280b = this.f19279a.a();
            }
            return this.f19280b;
        }

        private boolean b() {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            for (int i2 = 0; i2 < stackTrace.length && i2 < 11; i2++) {
                if (stackTrace[i2].getClassName().equals(AlertDialog.class.getCanonicalName()) && stackTrace[i2].getMethodName().equals("<init>")) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Object getSystemService(String str) {
            if ("window".equals(str)) {
                if (b()) {
                    return this.f19281c.getSystemService(str);
                }
                return a();
            }
            return super.getSystemService(str);
        }
    }

    /* loaded from: classes2.dex */
    static class e {

        /* renamed from: a, reason: collision with root package name */
        private f f19282a;

        /* renamed from: b, reason: collision with root package name */
        private WindowManagerHandler f19283b;

        /* renamed from: c, reason: collision with root package name */
        private b f19284c;

        e() {
        }
    }

    public SingleViewPresentation(Context context, Display display, g gVar, io.flutter.plugin.platform.c cVar, int i2, Object obj, View.OnFocusChangeListener onFocusChangeListener) {
        super(new c(context), display);
        this.startFocused = false;
        this.viewFactory = gVar;
        this.accessibilityEventsDelegate = cVar;
        this.viewId = i2;
        this.createParams = obj;
        this.focusChangeListener = onFocusChangeListener;
        this.outerContext = context;
        this.state = new e();
        getWindow().setFlags(8, 8);
        if (Build.VERSION.SDK_INT >= 19) {
            getWindow().setType(2030);
        }
    }

    public e detachState() {
        this.container.removeAllViews();
        this.rootView.removeAllViews();
        return this.state;
    }

    public f getView() {
        if (this.state.f19282a == null) {
            return null;
        }
        return this.state.f19282a;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        if (this.state.f19284c == null) {
            this.state.f19284c = new b(getContext());
        }
        if (this.state.f19283b == null) {
            WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
            e eVar = this.state;
            eVar.f19283b = new WindowManagerHandler(windowManager, eVar.f19284c);
        }
        this.container = new FrameLayout(getContext());
        d dVar = new d(getContext(), this.state.f19283b, this.outerContext);
        if (this.state.f19282a == null) {
            this.state.f19282a = this.viewFactory.a(dVar, this.viewId, this.createParams);
        }
        View view = this.state.f19282a.getView();
        this.container.addView(view);
        this.rootView = new a(getContext(), this.accessibilityEventsDelegate, view);
        this.rootView.addView(this.container);
        this.rootView.addView(this.state.f19284c);
        view.setOnFocusChangeListener(this.focusChangeListener);
        this.rootView.setFocusableInTouchMode(true);
        if (this.startFocused) {
            view.requestFocus();
        } else {
            this.rootView.requestFocus();
        }
        setContentView(this.rootView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class WindowManagerHandler implements InvocationHandler {

        /* renamed from: e, reason: collision with root package name */
        private final WindowManager f19272e;

        /* renamed from: f, reason: collision with root package name */
        b f19273f;

        WindowManagerHandler(WindowManager windowManager, b bVar) {
            this.f19272e = windowManager;
            this.f19273f = bVar;
        }

        private void b(Object[] objArr) {
            b bVar = this.f19273f;
            if (bVar == null) {
                return;
            }
            bVar.removeView((View) objArr[0]);
        }

        private void c(Object[] objArr) {
            if (this.f19273f == null) {
                return;
            }
            View view = (View) objArr[0];
            view.clearAnimation();
            this.f19273f.removeView(view);
        }

        private void d(Object[] objArr) {
            b bVar = this.f19273f;
            if (bVar == null) {
                return;
            }
            bVar.updateViewLayout((View) objArr[0], (WindowManager.LayoutParams) objArr[1]);
        }

        public WindowManager a() {
            return (WindowManager) Proxy.newProxyInstance(WindowManager.class.getClassLoader(), new Class[]{WindowManager.class}, this);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            char c2;
            String name = method.getName();
            switch (name.hashCode()) {
                case -1148522778:
                    if (name.equals("addView")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 542766184:
                    if (name.equals("removeViewImmediate")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 931413976:
                    if (name.equals("updateViewLayout")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1098630473:
                    if (name.equals("removeView")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 == 0) {
                a(objArr);
                return null;
            }
            if (c2 == 1) {
                b(objArr);
                return null;
            }
            if (c2 == 2) {
                c(objArr);
                return null;
            }
            if (c2 != 3) {
                try {
                    return method.invoke(this.f19272e, objArr);
                } catch (InvocationTargetException e2) {
                    throw e2.getCause();
                }
            }
            d(objArr);
            return null;
        }

        private void a(Object[] objArr) {
            b bVar = this.f19273f;
            if (bVar == null) {
                return;
            }
            bVar.addView((View) objArr[0], (WindowManager.LayoutParams) objArr[1]);
        }
    }

    public SingleViewPresentation(Context context, Display display, io.flutter.plugin.platform.c cVar, e eVar, View.OnFocusChangeListener onFocusChangeListener, boolean z) {
        super(new c(context), display);
        this.startFocused = false;
        this.accessibilityEventsDelegate = cVar;
        this.viewFactory = null;
        this.state = eVar;
        this.focusChangeListener = onFocusChangeListener;
        this.outerContext = context;
        getWindow().setFlags(8, 8);
        this.startFocused = z;
    }
}
