package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import com.alipay.zoloz.toyger.blob.BlobStatic;
import com.ap.zoloz.hummer.h5.H5PluginHandler;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class SearchView extends LinearLayoutCompat implements a.a.n.c {
    static final boolean DBG = false;
    static final String LOG_TAG = "SearchView";
    static final n PRE_API_29_HIDDEN_METHOD_INVOKER;
    private int[] A;
    private int[] B;
    private final ImageView C;
    private final Drawable D;
    private final int E;
    private final int F;
    private final Intent G;
    private final Intent H;
    private final CharSequence I;
    private l J;
    private k K;
    private m L;
    private View.OnClickListener M;
    private boolean N;
    private boolean O;
    private boolean P;
    private CharSequence Q;
    private boolean R;
    private boolean S;
    private int T;
    private boolean U;
    private CharSequence V;
    private CharSequence W;
    private boolean a0;
    private int b0;
    private Bundle c0;
    private final Runnable d0;
    private Runnable e0;
    private final WeakHashMap<String, Drawable.ConstantState> f0;
    private final View.OnClickListener g0;
    private final TextView.OnEditorActionListener h0;
    private final AdapterView.OnItemClickListener i0;
    private final AdapterView.OnItemSelectedListener j0;
    private TextWatcher k0;
    final ImageView mCloseButton;
    final ImageView mGoButton;
    View.OnFocusChangeListener mOnQueryTextFocusChangeListener;
    final ImageView mSearchButton;
    final SearchAutoComplete mSearchSrcTextView;
    SearchableInfo mSearchable;
    a.j.a.a mSuggestionsAdapter;
    View.OnKeyListener mTextKeyListener;
    final ImageView mVoiceButton;
    private final View t;
    private final View u;
    private final View v;
    private final View w;
    private o x;
    private Rect y;
    private Rect z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: g, reason: collision with root package name */
        boolean f1218g;

        /* loaded from: classes.dex */
        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f1218g + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeValue(Boolean.valueOf(this.f1218g));
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1218g = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {

        /* renamed from: h, reason: collision with root package name */
        private int f1219h;

        /* renamed from: i, reason: collision with root package name */
        private SearchView f1220i;

        /* renamed from: j, reason: collision with root package name */
        private boolean f1221j;
        final Runnable mRunShowSoftInputIfNecessary;

        /* loaded from: classes.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SearchAutoComplete.this.showSoftInputIfNecessary();
            }
        }

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i2 = configuration.screenWidthDp;
            int i3 = configuration.screenHeightDp;
            if (i2 >= 960 && i3 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i2 >= 600) {
                return 192;
            }
            if (i2 < 640 || i3 < 480) {
                return BlobStatic.MONITOR_IMAGE_WIDTH;
            }
            return 192;
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f1219h <= 0 || super.enoughToFilter();
        }

        void ensureImeVisible() {
            if (Build.VERSION.SDK_INT >= 29) {
                setInputMethodMode(1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            SearchView.PRE_API_29_HIDDEN_METHOD_INVOKER.c(this);
        }

        boolean isEmpty() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f1221j) {
                removeCallbacks(this.mRunShowSoftInputIfNecessary);
                post(this.mRunShowSoftInputIfNecessary);
            }
            return onCreateInputConnection;
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z, int i2, Rect rect) {
            super.onFocusChanged(z, i2, rect);
            this.f1220i.onTextFocusChanged();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i2, KeyEvent keyEvent) {
            if (i2 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f1220i.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i2, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.f1220i.hasFocus() && getVisibility() == 0) {
                this.f1221j = true;
                if (SearchView.isLandscapeMode(getContext())) {
                    ensureImeVisible();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
        }

        void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.f1221j = false;
                removeCallbacks(this.mRunShowSoftInputIfNecessary);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (inputMethodManager.isActive(this)) {
                    this.f1221j = false;
                    removeCallbacks(this.mRunShowSoftInputIfNecessary);
                    inputMethodManager.showSoftInput(this, 0);
                    return;
                }
                this.f1221j = true;
            }
        }

        void setSearchView(SearchView searchView) {
            this.f1220i = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i2) {
            super.setThreshold(i2);
            this.f1219h = i2;
        }

        void showSoftInputIfNecessary() {
            if (this.f1221j) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f1221j = false;
            }
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, a.a.a.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i2) {
            super(context, attributeSet, i2);
            this.mRunShowSoftInputIfNecessary = new a();
            this.f1219h = getThreshold();
        }
    }

    /* loaded from: classes.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            SearchView.this.onTextChanged(charSequence);
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchView.this.updateFocusedState();
        }
    }

    /* loaded from: classes.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.j.a.a aVar = SearchView.this.mSuggestionsAdapter;
            if (aVar instanceof x) {
                aVar.a((Cursor) null);
            }
        }
    }

    /* loaded from: classes.dex */
    class d implements View.OnFocusChangeListener {
        d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.mOnQueryTextFocusChangeListener;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z);
            }
        }
    }

    /* loaded from: classes.dex */
    class e implements View.OnLayoutChangeListener {
        e() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            SearchView.this.adjustDropDownSizeAndPosition();
        }
    }

    /* loaded from: classes.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchView searchView = SearchView.this;
            if (view == searchView.mSearchButton) {
                searchView.onSearchClicked();
                return;
            }
            if (view == searchView.mCloseButton) {
                searchView.onCloseClicked();
                return;
            }
            if (view == searchView.mGoButton) {
                searchView.onSubmitQuery();
            } else if (view == searchView.mVoiceButton) {
                searchView.onVoiceClicked();
            } else if (view == searchView.mSearchSrcTextView) {
                searchView.forceSuggestionQuery();
            }
        }
    }

    /* loaded from: classes.dex */
    class g implements View.OnKeyListener {
        g() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i2, KeyEvent keyEvent) {
            SearchView searchView = SearchView.this;
            if (searchView.mSearchable == null) {
                return false;
            }
            if (searchView.mSearchSrcTextView.isPopupShowing() && SearchView.this.mSearchSrcTextView.getListSelection() != -1) {
                return SearchView.this.onSuggestionsKey(view, i2, keyEvent);
            }
            if (SearchView.this.mSearchSrcTextView.isEmpty() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i2 != 66) {
                return false;
            }
            view.cancelLongPress();
            SearchView searchView2 = SearchView.this;
            searchView2.launchQuerySearch(0, null, searchView2.mSearchSrcTextView.getText().toString());
            return true;
        }
    }

    /* loaded from: classes.dex */
    class h implements TextView.OnEditorActionListener {
        h() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
            SearchView.this.onSubmitQuery();
            return true;
        }
    }

    /* loaded from: classes.dex */
    class i implements AdapterView.OnItemClickListener {
        i() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            SearchView.this.onItemClicked(i2, 0, null);
        }
    }

    /* loaded from: classes.dex */
    class j implements AdapterView.OnItemSelectedListener {
        j() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2) {
            SearchView.this.onItemSelected(i2);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* loaded from: classes.dex */
    public interface k {
        boolean onClose();
    }

    /* loaded from: classes.dex */
    public interface l {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    /* loaded from: classes.dex */
    public interface m {
        boolean a(int i2);

        boolean b(int i2);
    }

    /* loaded from: classes.dex */
    private static class o extends TouchDelegate {

        /* renamed from: a, reason: collision with root package name */
        private final View f1236a;

        /* renamed from: b, reason: collision with root package name */
        private final Rect f1237b;

        /* renamed from: c, reason: collision with root package name */
        private final Rect f1238c;

        /* renamed from: d, reason: collision with root package name */
        private final Rect f1239d;

        /* renamed from: e, reason: collision with root package name */
        private final int f1240e;

        /* renamed from: f, reason: collision with root package name */
        private boolean f1241f;

        public o(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f1240e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.f1237b = new Rect();
            this.f1239d = new Rect();
            this.f1238c = new Rect();
            a(rect, rect2);
            this.f1236a = view;
        }

        public void a(Rect rect, Rect rect2) {
            this.f1237b.set(rect);
            this.f1239d.set(rect);
            Rect rect3 = this.f1239d;
            int i2 = this.f1240e;
            rect3.inset(-i2, -i2);
            this.f1238c.set(rect2);
        }

        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z2 = true;
            if (action == 0) {
                if (this.f1237b.contains(x, y)) {
                    this.f1241f = true;
                    z = true;
                }
                z = false;
            } else if (action == 1 || action == 2) {
                z = this.f1241f;
                if (z && !this.f1239d.contains(x, y)) {
                    z2 = false;
                }
            } else {
                if (action == 3) {
                    z = this.f1241f;
                    this.f1241f = false;
                }
                z = false;
            }
            if (!z) {
                return false;
            }
            if (z2 && !this.f1238c.contains(x, y)) {
                motionEvent.setLocation(this.f1236a.getWidth() / 2, this.f1236a.getHeight() / 2);
            } else {
                Rect rect = this.f1238c;
                motionEvent.setLocation(x - rect.left, y - rect.top);
            }
            return this.f1236a.dispatchTouchEvent(motionEvent);
        }
    }

    static {
        PRE_API_29_HIDDEN_METHOD_INVOKER = Build.VERSION.SDK_INT < 29 ? new n() : null;
    }

    public SearchView(@NonNull Context context) {
        this(context, null);
    }

    private void a(View view, Rect rect) {
        view.getLocationInWindow(this.A);
        getLocationInWindow(this.B);
        int[] iArr = this.A;
        int i2 = iArr[1];
        int[] iArr2 = this.B;
        int i3 = i2 - iArr2[1];
        int i4 = iArr[0] - iArr2[0];
        rect.set(i4, i3, view.getWidth() + i4, view.getHeight() + i3);
    }

    private void b(boolean z) {
        this.O = z;
        int i2 = z ? 0 : 8;
        boolean z2 = !TextUtils.isEmpty(this.mSearchSrcTextView.getText());
        this.mSearchButton.setVisibility(i2);
        a(z2);
        this.t.setVisibility(z ? 8 : 0);
        this.C.setVisibility((this.C.getDrawable() == null || this.N) ? 8 : 0);
        e();
        c(!z2);
        h();
    }

    private boolean c() {
        return (this.P || this.U) && !isIconified();
    }

    private void d() {
        post(this.d0);
    }

    private void e() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.mSearchSrcTextView.getText());
        if (!z2 && (!this.N || this.a0)) {
            z = false;
        }
        this.mCloseButton.setVisibility(z ? 0 : 8);
        Drawable drawable = this.mCloseButton.getDrawable();
        if (drawable != null) {
            drawable.setState(z2 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    private void f() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.mSearchSrcTextView;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(a(queryHint));
    }

    private void g() {
        this.mSearchSrcTextView.setThreshold(this.mSearchable.getSuggestThreshold());
        this.mSearchSrcTextView.setImeOptions(this.mSearchable.getImeOptions());
        int inputType = this.mSearchable.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.mSearchable.getSuggestAuthority() != null) {
                inputType = inputType | AntDetector.ACTION_ID_SAMPLE | 524288;
            }
        }
        this.mSearchSrcTextView.setInputType(inputType);
        a.j.a.a aVar = this.mSuggestionsAdapter;
        if (aVar != null) {
            aVar.a((Cursor) null);
        }
        if (this.mSearchable.getSuggestAuthority() != null) {
            this.mSuggestionsAdapter = new x(getContext(), this, this.mSearchable, this.f0);
            this.mSearchSrcTextView.setAdapter(this.mSuggestionsAdapter);
            ((x) this.mSuggestionsAdapter).a(this.R ? 2 : 1);
        }
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(a.a.d.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(a.a.d.abc_search_view_preferred_width);
    }

    private void h() {
        this.v.setVisibility((c() && (this.mGoButton.getVisibility() == 0 || this.mVoiceButton.getVisibility() == 0)) ? 0 : 8);
    }

    static boolean isLandscapeMode(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    void adjustDropDownSizeAndPosition() {
        int i2;
        if (this.w.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.u.getPaddingLeft();
            Rect rect = new Rect();
            boolean a2 = j0.a(this);
            int dimensionPixelSize = this.N ? resources.getDimensionPixelSize(a.a.d.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(a.a.d.abc_dropdownitem_text_padding_left) : 0;
            this.mSearchSrcTextView.getDropDownBackground().getPadding(rect);
            if (a2) {
                i2 = -rect.left;
            } else {
                i2 = paddingLeft - (rect.left + dimensionPixelSize);
            }
            this.mSearchSrcTextView.setDropDownHorizontalOffset(i2);
            this.mSearchSrcTextView.setDropDownWidth((((this.w.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.S = true;
        super.clearFocus();
        this.mSearchSrcTextView.clearFocus();
        this.mSearchSrcTextView.setImeVisibility(false);
        this.S = false;
    }

    void forceSuggestionQuery() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.mSearchSrcTextView.refreshAutoCompleteResults();
        } else {
            PRE_API_29_HIDDEN_METHOD_INVOKER.b(this.mSearchSrcTextView);
            PRE_API_29_HIDDEN_METHOD_INVOKER.a(this.mSearchSrcTextView);
        }
    }

    public int getImeOptions() {
        return this.mSearchSrcTextView.getImeOptions();
    }

    public int getInputType() {
        return this.mSearchSrcTextView.getInputType();
    }

    public int getMaxWidth() {
        return this.T;
    }

    public CharSequence getQuery() {
        return this.mSearchSrcTextView.getText();
    }

    @Nullable
    public CharSequence getQueryHint() {
        CharSequence charSequence = this.Q;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.mSearchable;
        if (searchableInfo != null && searchableInfo.getHintId() != 0) {
            return getContext().getText(this.mSearchable.getHintId());
        }
        return this.I;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSuggestionCommitIconResId() {
        return this.F;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSuggestionRowLayout() {
        return this.E;
    }

    public a.j.a.a getSuggestionsAdapter() {
        return this.mSuggestionsAdapter;
    }

    public boolean isIconfiedByDefault() {
        return this.N;
    }

    public boolean isIconified() {
        return this.O;
    }

    public boolean isQueryRefinementEnabled() {
        return this.R;
    }

    public boolean isSubmitButtonEnabled() {
        return this.P;
    }

    void launchQuerySearch(int i2, String str, String str2) {
        getContext().startActivity(a("android.intent.action.SEARCH", null, null, str2, i2, str));
    }

    @Override // a.a.n.c
    public void onActionViewCollapsed() {
        setQuery("", false);
        clearFocus();
        b(true);
        this.mSearchSrcTextView.setImeOptions(this.b0);
        this.a0 = false;
    }

    @Override // a.a.n.c
    public void onActionViewExpanded() {
        if (this.a0) {
            return;
        }
        this.a0 = true;
        this.b0 = this.mSearchSrcTextView.getImeOptions();
        this.mSearchSrcTextView.setImeOptions(this.b0 | 33554432);
        this.mSearchSrcTextView.setText("");
        setIconified(false);
    }

    void onCloseClicked() {
        if (TextUtils.isEmpty(this.mSearchSrcTextView.getText())) {
            if (this.N) {
                k kVar = this.K;
                if (kVar == null || !kVar.onClose()) {
                    clearFocus();
                    b(true);
                    return;
                }
                return;
            }
            return;
        }
        this.mSearchSrcTextView.setText("");
        this.mSearchSrcTextView.requestFocus();
        this.mSearchSrcTextView.setImeVisibility(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.d0);
        post(this.e0);
        super.onDetachedFromWindow();
    }

    boolean onItemClicked(int i2, int i3, String str) {
        m mVar = this.L;
        if (mVar != null && mVar.b(i2)) {
            return false;
        }
        a(i2, 0, (String) null);
        this.mSearchSrcTextView.setImeVisibility(false);
        a();
        return true;
    }

    boolean onItemSelected(int i2) {
        m mVar = this.L;
        if (mVar != null && mVar.a(i2)) {
            return false;
        }
        a(i2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (z) {
            a(this.mSearchSrcTextView, this.y);
            Rect rect = this.z;
            Rect rect2 = this.y;
            rect.set(rect2.left, 0, rect2.right, i5 - i3);
            o oVar = this.x;
            if (oVar == null) {
                this.x = new o(this.z, this.y, this.mSearchSrcTextView);
                setTouchDelegate(this.x);
            } else {
                oVar.a(this.z, this.y);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        if (isIconified()) {
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            int i5 = this.T;
            size = i5 > 0 ? Math.min(i5, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.T;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i4 = this.T) > 0) {
            size = Math.min(i4, size);
        }
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onQueryRefine(CharSequence charSequence) {
        setQuery(charSequence);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        b(savedState.f1218g);
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1218g = isIconified();
        return savedState;
    }

    void onSearchClicked() {
        b(false);
        this.mSearchSrcTextView.requestFocus();
        this.mSearchSrcTextView.setImeVisibility(true);
        View.OnClickListener onClickListener = this.M;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    void onSubmitQuery() {
        Editable text = this.mSearchSrcTextView.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        l lVar = this.J;
        if (lVar == null || !lVar.onQueryTextSubmit(text.toString())) {
            if (this.mSearchable != null) {
                launchQuerySearch(0, null, text.toString());
            }
            this.mSearchSrcTextView.setImeVisibility(false);
            a();
        }
    }

    boolean onSuggestionsKey(View view, int i2, KeyEvent keyEvent) {
        if (this.mSearchable != null && this.mSuggestionsAdapter != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i2 == 66 || i2 == 84 || i2 == 61) {
                return onItemClicked(this.mSearchSrcTextView.getListSelection(), 0, null);
            }
            if (i2 != 21 && i2 != 22) {
                if (i2 != 19 || this.mSearchSrcTextView.getListSelection() == 0) {
                    return false;
                }
            } else {
                this.mSearchSrcTextView.setSelection(i2 == 21 ? 0 : this.mSearchSrcTextView.length());
                this.mSearchSrcTextView.setListSelection(0);
                this.mSearchSrcTextView.clearListSelection();
                this.mSearchSrcTextView.ensureImeVisible();
                return true;
            }
        }
        return false;
    }

    void onTextChanged(CharSequence charSequence) {
        Editable text = this.mSearchSrcTextView.getText();
        this.W = text;
        boolean z = !TextUtils.isEmpty(text);
        a(z);
        c(!z);
        e();
        h();
        if (this.J != null && !TextUtils.equals(charSequence, this.V)) {
            this.J.onQueryTextChange(charSequence.toString());
        }
        this.V = charSequence.toString();
    }

    void onTextFocusChanged() {
        b(isIconified());
        d();
        if (this.mSearchSrcTextView.hasFocus()) {
            forceSuggestionQuery();
        }
    }

    void onVoiceClicked() {
        SearchableInfo searchableInfo = this.mSearchable;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(b(this.G, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(a(this.H, searchableInfo));
            }
        } catch (ActivityNotFoundException unused) {
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        d();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i2, Rect rect) {
        if (this.S || !isFocusable()) {
            return false;
        }
        if (!isIconified()) {
            boolean requestFocus = this.mSearchSrcTextView.requestFocus(i2, rect);
            if (requestFocus) {
                b(false);
            }
            return requestFocus;
        }
        return super.requestFocus(i2, rect);
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setAppSearchData(Bundle bundle) {
        this.c0 = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            onCloseClicked();
        } else {
            onSearchClicked();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.N == z) {
            return;
        }
        this.N = z;
        b(z);
        f();
    }

    public void setImeOptions(int i2) {
        this.mSearchSrcTextView.setImeOptions(i2);
    }

    public void setInputType(int i2) {
        this.mSearchSrcTextView.setInputType(i2);
    }

    public void setMaxWidth(int i2) {
        this.T = i2;
        requestLayout();
    }

    public void setOnCloseListener(k kVar) {
        this.K = kVar;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.mOnQueryTextFocusChangeListener = onFocusChangeListener;
    }

    public void setOnQueryTextListener(l lVar) {
        this.J = lVar;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.M = onClickListener;
    }

    public void setOnSuggestionListener(m mVar) {
        this.L = mVar;
    }

    public void setQuery(CharSequence charSequence, boolean z) {
        this.mSearchSrcTextView.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.mSearchSrcTextView;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.W = charSequence;
        }
        if (!z || TextUtils.isEmpty(charSequence)) {
            return;
        }
        onSubmitQuery();
    }

    public void setQueryHint(@Nullable CharSequence charSequence) {
        this.Q = charSequence;
        f();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.R = z;
        a.j.a.a aVar = this.mSuggestionsAdapter;
        if (aVar instanceof x) {
            ((x) aVar).a(z ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.mSearchable = searchableInfo;
        if (this.mSearchable != null) {
            g();
            f();
        }
        this.U = b();
        if (this.U) {
            this.mSearchSrcTextView.setPrivateImeOptions("nm");
        }
        b(isIconified());
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.P = z;
        b(isIconified());
    }

    public void setSuggestionsAdapter(a.j.a.a aVar) {
        this.mSuggestionsAdapter = aVar;
        this.mSearchSrcTextView.setAdapter(this.mSuggestionsAdapter);
    }

    void updateFocusedState() {
        int[] iArr = this.mSearchSrcTextView.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.u.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.v.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, a.a.a.searchViewStyle);
    }

    private void c(boolean z) {
        int i2;
        if (this.U && !isIconified() && z) {
            i2 = 0;
            this.mGoButton.setVisibility(8);
        } else {
            i2 = 8;
        }
        this.mVoiceButton.setVisibility(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class n {

        /* renamed from: a, reason: collision with root package name */
        private Method f1233a;

        /* renamed from: b, reason: collision with root package name */
        private Method f1234b;

        /* renamed from: c, reason: collision with root package name */
        private Method f1235c;

        @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
        n() {
            this.f1233a = null;
            this.f1234b = null;
            this.f1235c = null;
            a();
            try {
                this.f1233a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f1233a.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                this.f1234b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f1234b.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                this.f1235c = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f1235c.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        void a(AutoCompleteTextView autoCompleteTextView) {
            a();
            Method method = this.f1234b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        void b(AutoCompleteTextView autoCompleteTextView) {
            a();
            Method method = this.f1233a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        void c(AutoCompleteTextView autoCompleteTextView) {
            a();
            Method method = this.f1235c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, true);
                } catch (Exception unused) {
                }
            }
        }

        private static void a() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.y = new Rect();
        this.z = new Rect();
        this.A = new int[2];
        this.B = new int[2];
        this.d0 = new b();
        this.e0 = new c();
        this.f0 = new WeakHashMap<>();
        this.g0 = new f();
        this.mTextKeyListener = new g();
        this.h0 = new h();
        this.i0 = new i();
        this.j0 = new j();
        this.k0 = new a();
        d0 a2 = d0.a(context, attributeSet, a.a.j.SearchView, i2, 0);
        LayoutInflater.from(context).inflate(a2.g(a.a.j.SearchView_layout, a.a.g.abc_search_view), (ViewGroup) this, true);
        this.mSearchSrcTextView = (SearchAutoComplete) findViewById(a.a.f.search_src_text);
        this.mSearchSrcTextView.setSearchView(this);
        this.t = findViewById(a.a.f.search_edit_frame);
        this.u = findViewById(a.a.f.search_plate);
        this.v = findViewById(a.a.f.submit_area);
        this.mSearchButton = (ImageView) findViewById(a.a.f.search_button);
        this.mGoButton = (ImageView) findViewById(a.a.f.search_go_btn);
        this.mCloseButton = (ImageView) findViewById(a.a.f.search_close_btn);
        this.mVoiceButton = (ImageView) findViewById(a.a.f.search_voice_btn);
        this.C = (ImageView) findViewById(a.a.f.search_mag_icon);
        ViewCompat.a(this.u, a2.b(a.a.j.SearchView_queryBackground));
        ViewCompat.a(this.v, a2.b(a.a.j.SearchView_submitBackground));
        this.mSearchButton.setImageDrawable(a2.b(a.a.j.SearchView_searchIcon));
        this.mGoButton.setImageDrawable(a2.b(a.a.j.SearchView_goIcon));
        this.mCloseButton.setImageDrawable(a2.b(a.a.j.SearchView_closeIcon));
        this.mVoiceButton.setImageDrawable(a2.b(a.a.j.SearchView_voiceIcon));
        this.C.setImageDrawable(a2.b(a.a.j.SearchView_searchIcon));
        this.D = a2.b(a.a.j.SearchView_searchHintIcon);
        f0.a(this.mSearchButton, getResources().getString(a.a.h.abc_searchview_description_search));
        this.E = a2.g(a.a.j.SearchView_suggestionRowLayout, a.a.g.abc_search_dropdown_item_icons_2line);
        this.F = a2.g(a.a.j.SearchView_commitIcon, 0);
        this.mSearchButton.setOnClickListener(this.g0);
        this.mCloseButton.setOnClickListener(this.g0);
        this.mGoButton.setOnClickListener(this.g0);
        this.mVoiceButton.setOnClickListener(this.g0);
        this.mSearchSrcTextView.setOnClickListener(this.g0);
        this.mSearchSrcTextView.addTextChangedListener(this.k0);
        this.mSearchSrcTextView.setOnEditorActionListener(this.h0);
        this.mSearchSrcTextView.setOnItemClickListener(this.i0);
        this.mSearchSrcTextView.setOnItemSelectedListener(this.j0);
        this.mSearchSrcTextView.setOnKeyListener(this.mTextKeyListener);
        this.mSearchSrcTextView.setOnFocusChangeListener(new d());
        setIconifiedByDefault(a2.a(a.a.j.SearchView_iconifiedByDefault, true));
        int c2 = a2.c(a.a.j.SearchView_android_maxWidth, -1);
        if (c2 != -1) {
            setMaxWidth(c2);
        }
        this.I = a2.e(a.a.j.SearchView_defaultQueryHint);
        this.Q = a2.e(a.a.j.SearchView_queryHint);
        int d2 = a2.d(a.a.j.SearchView_android_imeOptions, -1);
        if (d2 != -1) {
            setImeOptions(d2);
        }
        int d3 = a2.d(a.a.j.SearchView_android_inputType, -1);
        if (d3 != -1) {
            setInputType(d3);
        }
        setFocusable(a2.a(a.a.j.SearchView_android_focusable, true));
        a2.b();
        this.G = new Intent("android.speech.action.WEB_SEARCH");
        this.G.addFlags(268435456);
        this.G.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        this.H = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.H.addFlags(268435456);
        this.w = findViewById(this.mSearchSrcTextView.getDropDownAnchor());
        View view = this.w;
        if (view != null) {
            view.addOnLayoutChangeListener(new e());
        }
        b(this.N);
        f();
    }

    private void a(boolean z) {
        this.mGoButton.setVisibility((this.P && c() && hasFocus() && (z || !this.U)) ? 0 : 8);
    }

    private void setQuery(CharSequence charSequence) {
        this.mSearchSrcTextView.setText(charSequence);
        this.mSearchSrcTextView.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    private CharSequence a(CharSequence charSequence) {
        if (!this.N || this.D == null) {
            return charSequence;
        }
        double textSize = this.mSearchSrcTextView.getTextSize();
        Double.isNaN(textSize);
        int i2 = (int) (textSize * 1.25d);
        this.D.setBounds(0, 0, i2, i2);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.D), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    private boolean b() {
        SearchableInfo searchableInfo = this.mSearchable;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = null;
        if (this.mSearchable.getVoiceSearchLaunchWebSearch()) {
            intent = this.G;
        } else if (this.mSearchable.getVoiceSearchLaunchRecognizer()) {
            intent = this.H;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, AntDetector.ACTION_ID_SAMPLE) == null) ? false : true;
    }

    private void a() {
        this.mSearchSrcTextView.dismissDropDown();
    }

    private void a(int i2) {
        Editable text = this.mSearchSrcTextView.getText();
        Cursor a2 = this.mSuggestionsAdapter.a();
        if (a2 == null) {
            return;
        }
        if (a2.moveToPosition(i2)) {
            CharSequence b2 = this.mSuggestionsAdapter.b(a2);
            if (b2 != null) {
                setQuery(b2);
                return;
            } else {
                setQuery(text);
                return;
            }
        }
        setQuery(text);
    }

    private Intent b(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    private boolean a(int i2, int i3, String str) {
        Cursor a2 = this.mSuggestionsAdapter.a();
        if (a2 == null || !a2.moveToPosition(i2)) {
            return false;
        }
        a(a(a2, i3, str));
        return true;
    }

    private void a(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException unused) {
            String str = "Failed launch activity: " + intent;
        }
    }

    private Intent a(String str, Uri uri, String str2, String str3, int i2, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.W);
        if (str3 != null) {
            intent.putExtra(H5PluginHandler.HUMMER_FOUNDATION_QUERY, str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.c0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i2 != 0) {
            intent.putExtra("action_key", i2);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.mSearchable.getSearchActivity());
        return intent;
    }

    private Intent a(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.c0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    private Intent a(Cursor cursor, int i2, String str) {
        int i3;
        String a2;
        try {
            try {
                String a3 = x.a(cursor, "suggest_intent_action");
                if (a3 == null) {
                    a3 = this.mSearchable.getSuggestIntentAction();
                }
                if (a3 == null) {
                    a3 = "android.intent.action.SEARCH";
                }
                String str2 = a3;
                String a4 = x.a(cursor, "suggest_intent_data");
                if (a4 == null) {
                    a4 = this.mSearchable.getSuggestIntentData();
                }
                if (a4 != null && (a2 = x.a(cursor, "suggest_intent_data_id")) != null) {
                    a4 = a4 + "/" + Uri.encode(a2);
                }
                return a(str2, a4 == null ? null : Uri.parse(a4), x.a(cursor, "suggest_intent_extra_data"), x.a(cursor, "suggest_intent_query"), i2, str);
            } catch (RuntimeException unused) {
                i3 = -1;
                String str3 = "Search suggestions cursor at row " + i3 + " returned exception.";
                return null;
            }
        } catch (RuntimeException unused2) {
            i3 = cursor.getPosition();
            String str32 = "Search suggestions cursor at row " + i3 + " returned exception.";
            return null;
        }
    }
}
