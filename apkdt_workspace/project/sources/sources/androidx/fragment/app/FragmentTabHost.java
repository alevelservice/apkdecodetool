package androidx.fragment.app;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;

@Deprecated
/* loaded from: classes.dex */
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    /* renamed from: e, reason: collision with root package name */
    private final ArrayList<b> f2165e;

    /* renamed from: f, reason: collision with root package name */
    private FrameLayout f2166f;

    /* renamed from: g, reason: collision with root package name */
    private Context f2167g;

    /* renamed from: h, reason: collision with root package name */
    private g f2168h;

    /* renamed from: i, reason: collision with root package name */
    private int f2169i;

    /* renamed from: j, reason: collision with root package name */
    private TabHost.OnTabChangeListener f2170j;

    /* renamed from: k, reason: collision with root package name */
    private b f2171k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f2172l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: e, reason: collision with root package name */
        String f2173e;

        /* loaded from: classes.dex */
        static class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f2173e + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeString(this.f2173e);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f2173e = parcel.readString();
        }
    }

    /* loaded from: classes.dex */
    static class a implements TabHost.TabContentFactory {

        /* renamed from: a, reason: collision with root package name */
        private final Context f2174a;

        public a(Context context) {
            this.f2174a = context;
        }

        @Override // android.widget.TabHost.TabContentFactory
        public View createTabContent(String str) {
            View view = new View(this.f2174a);
            view.setMinimumWidth(0);
            view.setMinimumHeight(0);
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        final String f2175a;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        final Class<?> f2176b;

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        final Bundle f2177c;

        /* renamed from: d, reason: collision with root package name */
        Fragment f2178d;

        b(@NonNull String str, @NonNull Class<?> cls, @Nullable Bundle bundle) {
            this.f2175a = str;
            this.f2176b = cls;
            this.f2177c = bundle;
        }
    }

    @Deprecated
    public FragmentTabHost(@NonNull Context context) {
        super(context, null);
        this.f2165e = new ArrayList<>();
        a(context, (AttributeSet) null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.inflatedId}, 0, 0);
        this.f2169i = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Deprecated
    public void addTab(@NonNull TabHost.TabSpec tabSpec, @NonNull Class<?> cls, @Nullable Bundle bundle) {
        tabSpec.setContent(new a(this.f2167g));
        String tag = tabSpec.getTag();
        b bVar = new b(tag, cls, bundle);
        if (this.f2172l) {
            bVar.f2178d = this.f2168h.a(tag);
            Fragment fragment = bVar.f2178d;
            if (fragment != null && !fragment.isDetached()) {
                j a2 = this.f2168h.a();
                a2.b(bVar.f2178d);
                a2.a();
            }
        }
        this.f2165e.add(bVar);
        addTab(tabSpec);
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.f2165e.size();
        j jVar = null;
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f2165e.get(i2);
            bVar.f2178d = this.f2168h.a(bVar.f2175a);
            Fragment fragment = bVar.f2178d;
            if (fragment != null && !fragment.isDetached()) {
                if (bVar.f2175a.equals(currentTabTag)) {
                    this.f2171k = bVar;
                } else {
                    if (jVar == null) {
                        jVar = this.f2168h.a();
                    }
                    jVar.b(bVar.f2178d);
                }
            }
        }
        this.f2172l = true;
        j a2 = a(currentTabTag, jVar);
        if (a2 != null) {
            a2.a();
            this.f2168h.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f2172l = false;
    }

    @Override // android.view.View
    @Deprecated
    protected void onRestoreInstanceState(@SuppressLint({"UnknownNullness"}) Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.f2173e);
    }

    @Override // android.view.View
    @NonNull
    @Deprecated
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f2173e = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    @Deprecated
    public void onTabChanged(@Nullable String str) {
        j a2;
        if (this.f2172l && (a2 = a(str, (j) null)) != null) {
            a2.a();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.f2170j;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(@Nullable TabHost.OnTabChangeListener onTabChangeListener) {
        this.f2170j = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    @Deprecated
    public void setup(@NonNull Context context, @NonNull g gVar) {
        a(context);
        super.setup();
        this.f2167g = context;
        this.f2168h = gVar;
        a();
    }

    @Deprecated
    public FragmentTabHost(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2165e = new ArrayList<>();
        a(context, attributeSet);
    }

    private void a(Context context) {
        if (findViewById(R.id.tabs) == null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
            TabWidget tabWidget = new TabWidget(context);
            tabWidget.setId(R.id.tabs);
            tabWidget.setOrientation(0);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, -2, 0.0f));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setId(R.id.tabcontent);
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(0, 0, 0.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.f2166f = frameLayout2;
            this.f2166f.setId(this.f2169i);
            linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
    }

    @Deprecated
    public void setup(@NonNull Context context, @NonNull g gVar, int i2) {
        a(context);
        super.setup();
        this.f2167g = context;
        this.f2168h = gVar;
        this.f2169i = i2;
        a();
        this.f2166f.setId(i2);
        if (getId() == -1) {
            setId(R.id.tabhost);
        }
    }

    private void a() {
        if (this.f2166f == null) {
            this.f2166f = (FrameLayout) findViewById(this.f2169i);
            if (this.f2166f != null) {
                return;
            }
            throw new IllegalStateException("No tab content FrameLayout found for id " + this.f2169i);
        }
    }

    @Nullable
    private j a(@Nullable String str, @Nullable j jVar) {
        Fragment fragment;
        b a2 = a(str);
        if (this.f2171k != a2) {
            if (jVar == null) {
                jVar = this.f2168h.a();
            }
            b bVar = this.f2171k;
            if (bVar != null && (fragment = bVar.f2178d) != null) {
                jVar.b(fragment);
            }
            if (a2 != null) {
                Fragment fragment2 = a2.f2178d;
                if (fragment2 == null) {
                    a2.f2178d = this.f2168h.d().a(this.f2167g.getClassLoader(), a2.f2176b.getName());
                    a2.f2178d.setArguments(a2.f2177c);
                    jVar.a(this.f2169i, a2.f2178d, a2.f2175a);
                } else {
                    jVar.a(fragment2);
                }
            }
            this.f2171k = a2;
        }
        return jVar;
    }

    @Nullable
    private b a(String str) {
        int size = this.f2165e.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f2165e.get(i2);
            if (bVar.f2175a.equals(str)) {
                return bVar;
            }
        }
        return null;
    }
}
