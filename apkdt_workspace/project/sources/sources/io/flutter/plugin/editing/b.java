package io.flutter.plugin.editing;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.DynamicLayout;
import android.text.Editable;
import android.text.Layout;
import android.text.Selection;
import android.text.TextPaint;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputMethodManager;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.i.m;

/* compiled from: InputConnectionAdaptor.java */
/* loaded from: classes2.dex */
class b extends BaseInputConnection {

    /* renamed from: a, reason: collision with root package name */
    private final View f19236a;

    /* renamed from: b, reason: collision with root package name */
    private final int f19237b;

    /* renamed from: c, reason: collision with root package name */
    private final m f19238c;

    /* renamed from: d, reason: collision with root package name */
    private final Editable f19239d;

    /* renamed from: e, reason: collision with root package name */
    private final EditorInfo f19240e;

    /* renamed from: f, reason: collision with root package name */
    private int f19241f;

    /* renamed from: g, reason: collision with root package name */
    private InputMethodManager f19242g;

    /* renamed from: h, reason: collision with root package name */
    private final Layout f19243h;

    /* renamed from: i, reason: collision with root package name */
    private io.flutter.plugin.editing.a f19244i;

    /* renamed from: j, reason: collision with root package name */
    private final boolean f19245j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f19246k;

    /* renamed from: l, reason: collision with root package name */
    private a f19247l;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: InputConnectionAdaptor.java */
    /* loaded from: classes2.dex */
    public class a {

        /* renamed from: a, reason: collision with root package name */
        public int f19248a;

        /* renamed from: b, reason: collision with root package name */
        public int f19249b;

        /* renamed from: c, reason: collision with root package name */
        public int f19250c;

        /* renamed from: d, reason: collision with root package name */
        public int f19251d;

        /* renamed from: e, reason: collision with root package name */
        public String f19252e;

        public a(b bVar, Editable editable) {
            this.f19248a = Selection.getSelectionStart(editable);
            this.f19249b = Selection.getSelectionEnd(editable);
            this.f19250c = BaseInputConnection.getComposingSpanStart(editable);
            this.f19251d = BaseInputConnection.getComposingSpanEnd(editable);
            this.f19252e = editable.toString();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f19248a == aVar.f19248a && this.f19249b == aVar.f19249b && this.f19250c == aVar.f19250c && this.f19251d == aVar.f19251d && this.f19252e.equals(aVar.f19252e);
        }

        public int hashCode() {
            return ((((((((this.f19248a + 31) * 31) + this.f19249b) * 31) + this.f19250c) * 31) + this.f19251d) * 31) + this.f19252e.hashCode();
        }
    }

    public b(View view, int i2, m mVar, Editable editable, EditorInfo editorInfo, FlutterJNI flutterJNI) {
        super(view, true);
        this.f19246k = false;
        this.f19236a = view;
        this.f19237b = i2;
        this.f19238c = mVar;
        this.f19239d = editable;
        this.f19240e = editorInfo;
        this.f19241f = 0;
        this.f19244i = new io.flutter.plugin.editing.a(flutterJNI);
        this.f19243h = new DynamicLayout(this.f19239d, new TextPaint(), Integer.MAX_VALUE, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        this.f19242g = (InputMethodManager) view.getContext().getSystemService("input_method");
        this.f19245j = b();
    }

    @SuppressLint({"NewApi"})
    private boolean b() {
        if (this.f19242g.getCurrentInputMethodSubtype() == null || Build.VERSION.SDK_INT < 21 || !Build.MANUFACTURER.equals("samsung")) {
            return false;
        }
        return Settings.Secure.getString(this.f19236a.getContext().getContentResolver(), "default_input_method").contains("Samsung");
    }

    private void c() {
        if (this.f19241f > 0) {
            return;
        }
        a aVar = new a(this, this.f19239d);
        if (this.f19246k && aVar.equals(this.f19247l)) {
            return;
        }
        this.f19242g.updateSelection(this.f19236a, aVar.f19248a, aVar.f19249b, aVar.f19250c, aVar.f19251d);
        this.f19238c.a(this.f19237b, aVar.f19252e, aVar.f19248a, aVar.f19249b, aVar.f19250c, aVar.f19251d);
        this.f19246k = true;
        this.f19247l = aVar;
    }

    public void a() {
        this.f19246k = false;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean beginBatchEdit() {
        this.f19241f++;
        return super.beginBatchEdit();
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean clearMetaKeyStates(int i2) {
        boolean clearMetaKeyStates = super.clearMetaKeyStates(i2);
        a();
        return clearMetaKeyStates;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean commitText(CharSequence charSequence, int i2) {
        boolean commitText = super.commitText(charSequence, i2);
        a();
        return commitText;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i2, int i3) {
        if (Selection.getSelectionStart(this.f19239d) == -1) {
            return true;
        }
        boolean deleteSurroundingText = super.deleteSurroundingText(i2, i3);
        a();
        return deleteSurroundingText;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingTextInCodePoints(int i2, int i3) {
        boolean deleteSurroundingTextInCodePoints = super.deleteSurroundingTextInCodePoints(i2, i3);
        a();
        return deleteSurroundingTextInCodePoints;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean endBatchEdit() {
        boolean endBatchEdit = super.endBatchEdit();
        this.f19241f--;
        c();
        return endBatchEdit;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean finishComposingText() {
        boolean finishComposingText = super.finishComposingText();
        if (this.f19245j && Build.VERSION.SDK_INT >= 21) {
            CursorAnchorInfo.Builder builder = new CursorAnchorInfo.Builder();
            builder.setComposingText(-1, "");
            this.f19242g.updateCursorAnchorInfo(this.f19236a, builder.build());
        }
        a();
        return finishComposingText;
    }

    @Override // android.view.inputmethod.BaseInputConnection
    public Editable getEditable() {
        return this.f19239d;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i2) {
        ExtractedText extractedText = new ExtractedText();
        extractedText.selectionStart = Selection.getSelectionStart(this.f19239d);
        extractedText.selectionEnd = Selection.getSelectionEnd(this.f19239d);
        extractedText.text = this.f19239d.toString();
        return extractedText;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean performContextMenuAction(int i2) {
        a();
        if (i2 == 16908319) {
            setSelection(0, this.f19239d.length());
            return true;
        }
        if (i2 == 16908320) {
            int selectionStart = Selection.getSelectionStart(this.f19239d);
            int selectionEnd = Selection.getSelectionEnd(this.f19239d);
            if (selectionStart != selectionEnd) {
                int min = Math.min(selectionStart, selectionEnd);
                int max = Math.max(selectionStart, selectionEnd);
                ((ClipboardManager) this.f19236a.getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("text label?", this.f19239d.subSequence(min, max)));
                this.f19239d.delete(min, max);
                setSelection(min, min);
            }
            return true;
        }
        if (i2 == 16908321) {
            int selectionStart2 = Selection.getSelectionStart(this.f19239d);
            int selectionEnd2 = Selection.getSelectionEnd(this.f19239d);
            if (selectionStart2 != selectionEnd2) {
                ((ClipboardManager) this.f19236a.getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("text label?", this.f19239d.subSequence(Math.min(selectionStart2, selectionEnd2), Math.max(selectionStart2, selectionEnd2))));
            }
            return true;
        }
        if (i2 != 16908322) {
            return false;
        }
        ClipData primaryClip = ((ClipboardManager) this.f19236a.getContext().getSystemService("clipboard")).getPrimaryClip();
        if (primaryClip != null) {
            CharSequence coerceToText = primaryClip.getItemAt(0).coerceToText(this.f19236a.getContext());
            int max2 = Math.max(0, Selection.getSelectionStart(this.f19239d));
            int max3 = Math.max(0, Selection.getSelectionEnd(this.f19239d));
            int min2 = Math.min(max2, max3);
            int max4 = Math.max(max2, max3);
            if (min2 != max4) {
                this.f19239d.delete(min2, max4);
            }
            this.f19239d.insert(min2, coerceToText);
            int length = min2 + coerceToText.length();
            setSelection(length, length);
        }
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean performEditorAction(int i2) {
        a();
        if (i2 == 0) {
            this.f19238c.h(this.f19237b);
        } else if (i2 == 1) {
            this.f19238c.c(this.f19237b);
        } else if (i2 == 2) {
            this.f19238c.b(this.f19237b);
        } else if (i2 == 3) {
            this.f19238c.f(this.f19237b);
        } else if (i2 == 4) {
            this.f19238c.g(this.f19237b);
        } else if (i2 == 5) {
            this.f19238c.d(this.f19237b);
        } else if (i2 != 7) {
            this.f19238c.a(this.f19237b);
        } else {
            this.f19238c.e(this.f19237b);
        }
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(String str, Bundle bundle) {
        this.f19238c.a(this.f19237b, str, bundle);
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean sendKeyEvent(KeyEvent keyEvent) {
        a();
        if (keyEvent.getAction() == 0) {
            if (keyEvent.getKeyCode() == 67) {
                int a2 = a(Selection.getSelectionStart(this.f19239d), this.f19239d);
                int a3 = a(Selection.getSelectionEnd(this.f19239d), this.f19239d);
                if (a2 == a3 && a2 > 0) {
                    a2 = this.f19244i.b(this.f19239d, a2);
                }
                if (a3 <= a2) {
                    return false;
                }
                Selection.setSelection(this.f19239d, a2);
                this.f19239d.delete(a2, a3);
                c();
                return true;
            }
            if (keyEvent.getKeyCode() == 21) {
                int selectionStart = Selection.getSelectionStart(this.f19239d);
                int selectionEnd = Selection.getSelectionEnd(this.f19239d);
                if (selectionStart == selectionEnd && !keyEvent.isShiftPressed()) {
                    int max = Math.max(this.f19244i.b(this.f19239d, selectionStart), 0);
                    setSelection(max, max);
                } else {
                    setSelection(selectionStart, Math.max(this.f19244i.b(this.f19239d, selectionEnd), 0));
                }
                return true;
            }
            if (keyEvent.getKeyCode() == 22) {
                int selectionStart2 = Selection.getSelectionStart(this.f19239d);
                int selectionEnd2 = Selection.getSelectionEnd(this.f19239d);
                if (selectionStart2 == selectionEnd2 && !keyEvent.isShiftPressed()) {
                    int min = Math.min(this.f19244i.a(this.f19239d, selectionStart2), this.f19239d.length());
                    setSelection(min, min);
                } else {
                    setSelection(selectionStart2, Math.min(this.f19244i.a(this.f19239d, selectionEnd2), this.f19239d.length()));
                }
                return true;
            }
            if (keyEvent.getKeyCode() == 19) {
                if (Selection.getSelectionStart(this.f19239d) == Selection.getSelectionEnd(this.f19239d) && !keyEvent.isShiftPressed()) {
                    Selection.moveUp(this.f19239d, this.f19243h);
                    int selectionStart3 = Selection.getSelectionStart(this.f19239d);
                    setSelection(selectionStart3, selectionStart3);
                } else {
                    Selection.extendUp(this.f19239d, this.f19243h);
                    setSelection(Selection.getSelectionStart(this.f19239d), Selection.getSelectionEnd(this.f19239d));
                }
                return true;
            }
            if (keyEvent.getKeyCode() == 20) {
                if (Selection.getSelectionStart(this.f19239d) == Selection.getSelectionEnd(this.f19239d) && !keyEvent.isShiftPressed()) {
                    Selection.moveDown(this.f19239d, this.f19243h);
                    int selectionStart4 = Selection.getSelectionStart(this.f19239d);
                    setSelection(selectionStart4, selectionStart4);
                } else {
                    Selection.extendDown(this.f19239d, this.f19243h);
                    setSelection(Selection.getSelectionStart(this.f19239d), Selection.getSelectionEnd(this.f19239d));
                }
                return true;
            }
            if (keyEvent.getKeyCode() == 66 || keyEvent.getKeyCode() == 160) {
                EditorInfo editorInfo = this.f19240e;
                if ((131072 & editorInfo.inputType) == 0) {
                    performEditorAction(editorInfo.imeOptions & 255);
                    return true;
                }
            }
            int unicodeChar = keyEvent.getUnicodeChar();
            if (unicodeChar == 0) {
                return false;
            }
            int max2 = Math.max(0, Selection.getSelectionStart(this.f19239d));
            int max3 = Math.max(0, Selection.getSelectionEnd(this.f19239d));
            int min2 = Math.min(max2, max3);
            int max4 = Math.max(max2, max3);
            if (min2 != max4) {
                this.f19239d.delete(min2, max4);
            }
            this.f19239d.insert(min2, String.valueOf((char) unicodeChar));
            int i2 = min2 + 1;
            setSelection(i2, i2);
            return true;
        }
        if (keyEvent.getAction() != 1 || (keyEvent.getKeyCode() != 59 && keyEvent.getKeyCode() != 60)) {
            return false;
        }
        int selectionEnd3 = Selection.getSelectionEnd(this.f19239d);
        setSelection(selectionEnd3, selectionEnd3);
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean setComposingRegion(int i2, int i3) {
        boolean composingRegion = super.setComposingRegion(i2, i3);
        a();
        return composingRegion;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean setComposingText(CharSequence charSequence, int i2) {
        boolean composingText;
        if (charSequence.length() == 0) {
            composingText = super.commitText(charSequence, i2);
        } else {
            composingText = super.setComposingText(charSequence, i2);
        }
        a();
        return composingText;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean setSelection(int i2, int i3) {
        boolean selection = super.setSelection(i2, i3);
        a();
        c();
        return selection;
    }

    private static int a(int i2, Editable editable) {
        int max = Math.max(0, Math.min(editable.length(), i2));
        if (max != i2) {
            g.a.b.a("flutter", "Text selection index was clamped (" + i2 + "->" + max + ") to remain in bounds. This may not be your fault, as some keyboards may select outside of bounds.");
        }
        return max;
    }

    public b(View view, int i2, m mVar, Editable editable, EditorInfo editorInfo) {
        this(view, i2, mVar, editable, editorInfo, new FlutterJNI());
    }
}
