package io.flutter.plugin.editing;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.Editable;
import android.text.Selection;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewStructure;
import android.view.WindowInsets;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.alipay.mobile.security.bio.utils.FileUtil;
import io.flutter.embedding.engine.i.m;
import io.flutter.plugin.platform.k;
import java.util.HashMap;

/* compiled from: TextInputPlugin.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final View f19253a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final InputMethodManager f19254b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    private final AutofillManager f19255c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    private final m f19256d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    private C0240c f19257e = new C0240c(C0240c.a.NO_TARGET, 0);

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private m.b f19258f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private SparseArray<m.b> f19259g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private Editable f19260h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f19261i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private InputConnection f19262j;

    /* renamed from: k, reason: collision with root package name */
    @NonNull
    private k f19263k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    private Rect f19264l;
    private final boolean m;
    private ImeSyncDeferringInsetsCallback n;
    private boolean o;

    /* compiled from: TextInputPlugin.java */
    /* loaded from: classes2.dex */
    class a implements m.f {
        a() {
        }

        @Override // io.flutter.embedding.engine.i.m.f
        public void a() {
            c cVar = c.this;
            cVar.a(cVar.f19253a);
        }

        @Override // io.flutter.embedding.engine.i.m.f
        public void b() {
            c.this.i();
        }

        @Override // io.flutter.embedding.engine.i.m.f
        public void c() {
            c.this.f();
        }

        @Override // io.flutter.embedding.engine.i.m.f
        public void show() {
            c cVar = c.this;
            cVar.b(cVar.f19253a);
        }

        @Override // io.flutter.embedding.engine.i.m.f
        public void a(boolean z) {
            if (Build.VERSION.SDK_INT < 26 || c.this.f19255c == null) {
                return;
            }
            if (z) {
                c.this.f19255c.commit();
            } else {
                c.this.f19255c.cancel();
            }
        }

        @Override // io.flutter.embedding.engine.i.m.f
        public void a(int i2, m.b bVar) {
            c.this.a(i2, bVar);
        }

        @Override // io.flutter.embedding.engine.i.m.f
        public void a(int i2) {
            c.this.b(i2);
        }

        @Override // io.flutter.embedding.engine.i.m.f
        public void a(m.e eVar) {
            c cVar = c.this;
            cVar.a(cVar.f19253a, eVar);
        }

        @Override // io.flutter.embedding.engine.i.m.f
        public void a(double d2, double d3, double[] dArr) {
            c.this.a(d2, d3, dArr);
        }

        @Override // io.flutter.embedding.engine.i.m.f
        public void a(String str, Bundle bundle) {
            c.this.a(str, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TextInputPlugin.java */
    /* loaded from: classes2.dex */
    public class b implements d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f19266a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ double[] f19267b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ double[] f19268c;

        b(c cVar, boolean z, double[] dArr, double[] dArr2) {
            this.f19266a = z;
            this.f19267b = dArr;
            this.f19268c = dArr2;
        }

        @Override // io.flutter.plugin.editing.c.d
        public void a(double d2, double d3) {
            double d4 = 1.0d;
            if (!this.f19266a) {
                double[] dArr = this.f19267b;
                d4 = 1.0d / (((dArr[3] * d2) + (dArr[7] * d3)) + dArr[15]);
            }
            double[] dArr2 = this.f19267b;
            double d5 = ((dArr2[0] * d2) + (dArr2[4] * d3) + dArr2[12]) * d4;
            double d6 = ((dArr2[1] * d2) + (dArr2[5] * d3) + dArr2[13]) * d4;
            double[] dArr3 = this.f19268c;
            if (d5 < dArr3[0]) {
                dArr3[0] = d5;
            } else if (d5 > dArr3[1]) {
                dArr3[1] = d5;
            }
            double[] dArr4 = this.f19268c;
            if (d6 < dArr4[2]) {
                dArr4[2] = d6;
            } else if (d6 > dArr4[3]) {
                dArr4[3] = d6;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TextInputPlugin.java */
    /* renamed from: io.flutter.plugin.editing.c$c, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0240c {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        a f19269a;

        /* renamed from: b, reason: collision with root package name */
        int f19270b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: TextInputPlugin.java */
        /* renamed from: io.flutter.plugin.editing.c$c$a */
        /* loaded from: classes2.dex */
        public enum a {
            NO_TARGET,
            FRAMEWORK_CLIENT,
            PLATFORM_VIEW
        }

        public C0240c(@NonNull a aVar, int i2) {
            this.f19269a = aVar;
            this.f19270b = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TextInputPlugin.java */
    /* loaded from: classes2.dex */
    public interface d {
        void a(double d2, double d3);
    }

    @SuppressLint({"NewApi"})
    public c(View view, @NonNull m mVar, @NonNull k kVar) {
        this.f19253a = view;
        this.f19254b = (InputMethodManager) view.getContext().getSystemService("input_method");
        if (Build.VERSION.SDK_INT >= 26) {
            this.f19255c = (AutofillManager) view.getContext().getSystemService(AutofillManager.class);
        } else {
            this.f19255c = null;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            int navigationBars = (this.f19253a.getWindowSystemUiVisibility() & 2) == 0 ? 0 | WindowInsets.Type.navigationBars() : 0;
            this.n = new ImeSyncDeferringInsetsCallback(view, (this.f19253a.getWindowSystemUiVisibility() & 4) == 0 ? navigationBars | WindowInsets.Type.statusBars() : navigationBars, WindowInsets.Type.ime());
            this.n.install();
        }
        this.f19256d = mVar;
        mVar.a(new a());
        mVar.a();
        this.f19263k = kVar;
        this.f19263k.a(this);
        this.m = g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.f19257e.f19269a == C0240c.a.PLATFORM_VIEW) {
            return;
        }
        this.f19257e = new C0240c(C0240c.a.NO_TARGET, 0);
        e();
        j();
        this.f19264l = null;
    }

    @SuppressLint({"NewApi"})
    private boolean g() {
        if (this.f19254b.getCurrentInputMethodSubtype() == null || Build.VERSION.SDK_INT < 21 || !Build.MANUFACTURER.equals("samsung")) {
            return false;
        }
        return Settings.Secure.getString(this.f19253a.getContext().getContentResolver(), "default_input_method").contains("Samsung");
    }

    private boolean h() {
        return this.f19259g != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (Build.VERSION.SDK_INT < 26 || this.f19255c == null || !h()) {
            return;
        }
        String str = this.f19258f.f19213h.f19215a;
        int[] iArr = new int[2];
        this.f19253a.getLocationOnScreen(iArr);
        Rect rect = new Rect(this.f19264l);
        rect.offset(iArr[0], iArr[1]);
        this.f19255c.notifyViewEntered(this.f19253a, str.hashCode(), rect);
    }

    private void j() {
        AutofillManager autofillManager;
        m.b bVar;
        m.b.a aVar;
        if (Build.VERSION.SDK_INT < 26 || (autofillManager = this.f19255c) == null || (bVar = this.f19258f) == null || (aVar = bVar.f19213h) == null) {
            return;
        }
        autofillManager.notifyViewExited(this.f19253a, aVar.f19215a.hashCode());
    }

    public void e() {
        this.o = false;
    }

    @Nullable
    public InputConnection c() {
        return this.f19262j;
    }

    public void d() {
        if (this.f19257e.f19269a == C0240c.a.PLATFORM_VIEW) {
            this.o = true;
        }
    }

    @NonNull
    public InputMethodManager b() {
        return this.f19254b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(View view) {
        view.requestFocus();
        this.f19254b.showSoftInput(view, 0);
    }

    @SuppressLint({"NewApi"})
    public void a() {
        this.f19263k.f();
        this.f19256d.a((m.f) null);
        ImeSyncDeferringInsetsCallback imeSyncDeferringInsetsCallback = this.n;
        if (imeSyncDeferringInsetsCallback != null) {
            imeSyncDeferringInsetsCallback.remove();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i2) {
        this.f19253a.requestFocus();
        this.f19257e = new C0240c(C0240c.a.PLATFORM_VIEW, i2);
        this.f19254b.restartInput(this.f19253a);
        this.f19261i = false;
    }

    private static int a(m.c cVar, boolean z, boolean z2, boolean z3, m.d dVar) {
        m.g gVar = cVar.f19218a;
        if (gVar == m.g.DATETIME) {
            return 4;
        }
        if (gVar == m.g.NUMBER) {
            int i2 = cVar.f19219b ? 4098 : 2;
            return cVar.f19220c ? i2 | FileUtil.STREAM_BUFFER_SIZE : i2;
        }
        if (gVar == m.g.PHONE) {
            return 3;
        }
        int i3 = 1;
        if (gVar == m.g.MULTILINE) {
            i3 = 131073;
        } else if (gVar == m.g.EMAIL_ADDRESS) {
            i3 = 33;
        } else if (gVar == m.g.URL) {
            i3 = 17;
        } else if (gVar == m.g.VISIBLE_PASSWORD) {
            i3 = 145;
        } else if (gVar == m.g.NAME) {
            i3 = 97;
        } else if (gVar == m.g.POSTAL_ADDRESS) {
            i3 = 113;
        }
        if (z) {
            i3 = i3 | 524288 | 128;
        } else {
            if (z2) {
                i3 |= 32768;
            }
            if (!z3) {
                i3 |= 524288;
            }
        }
        return dVar == m.d.CHARACTERS ? i3 | 4096 : dVar == m.d.WORDS ? i3 | FileUtil.STREAM_BUFFER_SIZE : dVar == m.d.SENTENCES ? i3 | 16384 : i3;
    }

    public InputConnection a(View view, EditorInfo editorInfo) {
        int intValue;
        C0240c c0240c = this.f19257e;
        C0240c.a aVar = c0240c.f19269a;
        if (aVar == C0240c.a.NO_TARGET) {
            this.f19262j = null;
            return null;
        }
        if (aVar == C0240c.a.PLATFORM_VIEW) {
            if (this.o) {
                return this.f19262j;
            }
            this.f19262j = this.f19263k.a(Integer.valueOf(c0240c.f19270b)).onCreateInputConnection(editorInfo);
            return this.f19262j;
        }
        m.b bVar = this.f19258f;
        editorInfo.inputType = a(bVar.f19210e, bVar.f19206a, bVar.f19207b, bVar.f19208c, bVar.f19209d);
        editorInfo.imeOptions = 33554432;
        Integer num = this.f19258f.f19211f;
        if (num == null) {
            intValue = (131072 & editorInfo.inputType) != 0 ? 1 : 6;
        } else {
            intValue = num.intValue();
        }
        String str = this.f19258f.f19212g;
        if (str != null) {
            editorInfo.actionLabel = str;
            editorInfo.actionId = intValue;
        }
        editorInfo.imeOptions = intValue | editorInfo.imeOptions;
        io.flutter.plugin.editing.b bVar2 = new io.flutter.plugin.editing.b(view, this.f19257e.f19270b, this.f19256d, this.f19260h, editorInfo);
        editorInfo.initialSelStart = Selection.getSelectionStart(this.f19260h);
        editorInfo.initialSelEnd = Selection.getSelectionEnd(this.f19260h);
        this.f19262j = bVar2;
        return this.f19262j;
    }

    public void a(int i2) {
        C0240c c0240c = this.f19257e;
        if (c0240c.f19269a == C0240c.a.PLATFORM_VIEW && c0240c.f19270b == i2) {
            this.f19257e = new C0240c(C0240c.a.NO_TARGET, 0);
            a(this.f19253a);
            this.f19254b.restartInput(this.f19253a);
            this.f19261i = false;
        }
    }

    public void a(String str, Bundle bundle) {
        this.f19254b.sendAppPrivateCommand(this.f19253a, str, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view) {
        j();
        this.f19254b.hideSoftInputFromWindow(view.getApplicationWindowToken(), 0);
    }

    private void a(String str) {
        if (Build.VERSION.SDK_INT < 26 || this.f19255c == null || !h()) {
            return;
        }
        this.f19255c.notifyValueChanged(this.f19253a, this.f19258f.f19213h.f19215a.hashCode(), AutofillValue.forText(str));
    }

    @VisibleForTesting
    void a(int i2, m.b bVar) {
        this.f19257e = new C0240c(C0240c.a.FRAMEWORK_CLIENT, i2);
        a(bVar);
        this.f19260h = Editable.Factory.getInstance().newEditable("");
        this.f19261i = true;
        e();
        this.f19264l = null;
    }

    private void a(m.e eVar) {
        int i2 = eVar.f19223b;
        int i3 = eVar.f19224c;
        if (i2 >= 0 && i2 <= this.f19260h.length() && i3 >= 0 && i3 <= this.f19260h.length()) {
            Selection.setSelection(this.f19260h, i2, i3);
        } else {
            Selection.removeSelection(this.f19260h);
        }
    }

    @VisibleForTesting
    void a(View view, m.e eVar) {
        if (!eVar.f19222a.equals(this.f19260h.toString())) {
            Editable editable = this.f19260h;
            editable.replace(0, editable.length(), eVar.f19222a);
        }
        a(this.f19260h.toString());
        a(eVar);
        InputConnection c2 = c();
        if (c2 != null && (c2 instanceof io.flutter.plugin.editing.b)) {
            ((io.flutter.plugin.editing.b) c2).a();
        }
        if (!this.m && !this.f19261i) {
            this.f19254b.updateSelection(this.f19253a, Math.max(Selection.getSelectionStart(this.f19260h), 0), Math.max(Selection.getSelectionEnd(this.f19260h), 0), BaseInputConnection.getComposingSpanStart(this.f19260h), BaseInputConnection.getComposingSpanEnd(this.f19260h));
        } else {
            this.f19254b.restartInput(view);
            this.f19261i = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(double d2, double d3, double[] dArr) {
        double[] dArr2 = new double[4];
        boolean z = dArr[3] == 0.0d && dArr[7] == 0.0d && dArr[15] == 1.0d;
        double d4 = dArr[12] / dArr[15];
        dArr2[1] = d4;
        dArr2[0] = d4;
        double d5 = dArr[13] / dArr[15];
        dArr2[3] = d5;
        dArr2[2] = d5;
        b bVar = new b(this, z, dArr, dArr2);
        bVar.a(d2, 0.0d);
        bVar.a(d2, d3);
        bVar.a(0.0d, d3);
        Float valueOf = Float.valueOf(this.f19253a.getContext().getResources().getDisplayMetrics().density);
        double d6 = dArr2[0];
        double floatValue = valueOf.floatValue();
        Double.isNaN(floatValue);
        double d7 = dArr2[2];
        double floatValue2 = valueOf.floatValue();
        Double.isNaN(floatValue2);
        int i2 = (int) (d7 * floatValue2);
        double d8 = dArr2[1];
        double floatValue3 = valueOf.floatValue();
        Double.isNaN(floatValue3);
        int ceil = (int) Math.ceil(d8 * floatValue3);
        double d9 = dArr2[3];
        double floatValue4 = valueOf.floatValue();
        Double.isNaN(floatValue4);
        this.f19264l = new Rect((int) (d6 * floatValue), i2, ceil, (int) Math.ceil(d9 * floatValue4));
    }

    private void a(m.b bVar) {
        j();
        this.f19258f = bVar;
        m.b[] bVarArr = bVar.f19214i;
        if (bVar.f19213h == null) {
            this.f19259g = null;
            return;
        }
        this.f19259g = new SparseArray<>();
        if (bVarArr == null) {
            this.f19259g.put(bVar.f19213h.f19215a.hashCode(), bVar);
            return;
        }
        for (m.b bVar2 : bVarArr) {
            m.b.a aVar = bVar2.f19213h;
            if (aVar != null) {
                this.f19259g.put(aVar.f19215a.hashCode(), bVar2);
            }
        }
    }

    public void a(ViewStructure viewStructure, int i2) {
        Rect rect;
        if (Build.VERSION.SDK_INT < 26 || !h()) {
            return;
        }
        String str = this.f19258f.f19213h.f19215a;
        AutofillId autofillId = viewStructure.getAutofillId();
        for (int i3 = 0; i3 < this.f19259g.size(); i3++) {
            int keyAt = this.f19259g.keyAt(i3);
            m.b.a aVar = this.f19259g.valueAt(i3).f19213h;
            if (aVar != null) {
                viewStructure.addChildCount(1);
                ViewStructure newChild = viewStructure.newChild(i3);
                newChild.setAutofillId(autofillId, keyAt);
                newChild.setAutofillValue(AutofillValue.forText(aVar.f19217c.f19222a));
                newChild.setAutofillHints(aVar.f19216b);
                newChild.setAutofillType(1);
                newChild.setVisibility(0);
                if (str.hashCode() == keyAt && (rect = this.f19264l) != null) {
                    newChild.setDimens(rect.left, rect.top, 0, 0, rect.width(), this.f19264l.height());
                } else {
                    newChild.setDimens(0, 0, 0, 0, 1, 1);
                }
            }
        }
    }

    public void a(SparseArray<AutofillValue> sparseArray) {
        m.b.a aVar;
        m.b.a aVar2;
        if (Build.VERSION.SDK_INT >= 26 && (aVar = this.f19258f.f19213h) != null) {
            HashMap<String, m.e> hashMap = new HashMap<>();
            for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                m.b bVar = this.f19259g.get(sparseArray.keyAt(i2));
                if (bVar != null && (aVar2 = bVar.f19213h) != null) {
                    String charSequence = sparseArray.valueAt(i2).getTextValue().toString();
                    m.e eVar = new m.e(charSequence, charSequence.length(), charSequence.length());
                    if (aVar2.f19215a.equals(aVar.f19215a)) {
                        a(this.f19253a, eVar);
                    }
                    hashMap.put(aVar2.f19215a, eVar);
                }
            }
            this.f19256d.a(this.f19257e.f19270b, hashMap);
        }
    }
}
