package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.annotation.CallSuper;
import androidx.annotation.ContentView;
import androidx.annotation.LayoutRes;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.e;
import androidx.lifecycle.r;
import androidx.lifecycle.s;
import androidx.savedstate.SavedStateRegistry;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, androidx.lifecycle.h, s, androidx.savedstate.b {
    static final int ACTIVITY_CREATED = 2;
    static final int CREATED = 1;
    static final int INITIALIZING = 0;
    static final int RESUMED = 4;
    static final int STARTED = 3;
    static final Object USE_DEFAULT_TRANSITION = new Object();
    boolean mAdded;
    d mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    private boolean mCalled;

    @NonNull
    h mChildFragmentManager;
    ViewGroup mContainer;
    int mContainerId;

    @LayoutRes
    private int mContentLayoutId;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    h mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mHiddenChanged;
    androidx.fragment.app.f mHost;
    boolean mInLayout;
    View mInnerView;
    boolean mIsCreated;
    boolean mIsNewlyAdded;
    private Boolean mIsPrimaryNavigationFragment;
    LayoutInflater mLayoutInflater;
    androidx.lifecycle.i mLifecycleRegistry;
    e.b mMaxState;
    boolean mMenuVisible;
    Fragment mParentFragment;
    boolean mPerformedCreateView;
    float mPostponedAlpha;
    Runnable mPostponedDurationRunnable;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetainInstanceChangedWhileDetached;
    Bundle mSavedFragmentState;
    androidx.savedstate.a mSavedStateRegistryController;

    @Nullable
    Boolean mSavedUserVisibleHint;
    SparseArray<Parcelable> mSavedViewState;
    int mState;
    String mTag;
    Fragment mTarget;
    int mTargetRequestCode;
    String mTargetWho;
    boolean mUserVisibleHint;
    View mView;

    @Nullable
    n mViewLifecycleOwner;
    androidx.lifecycle.m<androidx.lifecycle.h> mViewLifecycleOwnerLiveData;

    @NonNull
    String mWho;

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {

        @NonNull
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: e, reason: collision with root package name */
        final Bundle f2135e;

        /* loaded from: classes.dex */
        static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }
        }

        SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            Bundle bundle;
            this.f2135e = parcel.readBundle();
            if (classLoader == null || (bundle = this.f2135e) == null) {
                return;
            }
            bundle.setClassLoader(classLoader);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i2) {
            parcel.writeBundle(this.f2135e);
        }
    }

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.startPostponedEnterTransition();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.callStartTransitionListener();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        View f2139a;

        /* renamed from: b, reason: collision with root package name */
        Animator f2140b;

        /* renamed from: c, reason: collision with root package name */
        int f2141c;

        /* renamed from: d, reason: collision with root package name */
        int f2142d;

        /* renamed from: e, reason: collision with root package name */
        int f2143e;

        /* renamed from: f, reason: collision with root package name */
        int f2144f;

        /* renamed from: g, reason: collision with root package name */
        Object f2145g = null;

        /* renamed from: h, reason: collision with root package name */
        Object f2146h;

        /* renamed from: i, reason: collision with root package name */
        Object f2147i;

        /* renamed from: j, reason: collision with root package name */
        Object f2148j;

        /* renamed from: k, reason: collision with root package name */
        Object f2149k;

        /* renamed from: l, reason: collision with root package name */
        Object f2150l;
        Boolean m;
        Boolean n;
        androidx.core.app.l o;
        androidx.core.app.l p;
        boolean q;
        f r;
        boolean s;

        d() {
            Object obj = Fragment.USE_DEFAULT_TRANSITION;
            this.f2146h = obj;
            this.f2147i = null;
            this.f2148j = obj;
            this.f2149k = null;
            this.f2150l = obj;
            this.o = null;
            this.p = null;
        }
    }

    /* loaded from: classes.dex */
    public static class e extends RuntimeException {
        public e(@NonNull String str, @Nullable Exception exc) {
            super(str, exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface f {
        void a();

        void b();
    }

    public Fragment() {
        this.mState = 0;
        this.mWho = UUID.randomUUID().toString();
        this.mTargetWho = null;
        this.mIsPrimaryNavigationFragment = null;
        this.mChildFragmentManager = new h();
        this.mMenuVisible = true;
        this.mUserVisibleHint = true;
        this.mPostponedDurationRunnable = new a();
        this.mMaxState = e.b.RESUMED;
        this.mViewLifecycleOwnerLiveData = new androidx.lifecycle.m<>();
        initLifecycle();
    }

    private d ensureAnimationInfo() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new d();
        }
        return this.mAnimationInfo;
    }

    private void initLifecycle() {
        this.mLifecycleRegistry = new androidx.lifecycle.i(this);
        this.mSavedStateRegistryController = androidx.savedstate.a.a(this);
        if (Build.VERSION.SDK_INT >= 19) {
            this.mLifecycleRegistry.a(new androidx.lifecycle.f() { // from class: androidx.fragment.app.Fragment.2
                @Override // androidx.lifecycle.f
                public void a(@NonNull androidx.lifecycle.h hVar, @NonNull e.a aVar) {
                    View view;
                    if (aVar != e.a.ON_STOP || (view = Fragment.this.mView) == null) {
                        return;
                    }
                    view.cancelPendingInputEvents();
                }
            });
        }
    }

    @NonNull
    @Deprecated
    public static Fragment instantiate(@NonNull Context context, @NonNull String str) {
        return instantiate(context, str, null);
    }

    void callStartTransitionListener() {
        d dVar = this.mAnimationInfo;
        f fVar = null;
        if (dVar != null) {
            dVar.q = false;
            f fVar2 = dVar.r;
            dVar.r = null;
            fVar = fVar2;
        }
        if (fVar != null) {
            fVar.b();
        }
    }

    public void dump(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        Fragment targetFragment = getTargetFragment();
        if (targetFragment != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(targetFragment);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        if (getNextAnim() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(getNextAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (this.mInnerView != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(getStateAfterAnimating());
        }
        if (getContext() != null) {
            a.m.a.a.a(this).a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        this.mChildFragmentManager.a(str + "  ", fileDescriptor, printWriter, strArr);
    }

    public final boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Fragment findFragmentByWho(@NonNull String str) {
        return str.equals(this.mWho) ? this : this.mChildFragmentManager.b(str);
    }

    @Nullable
    public final FragmentActivity getActivity() {
        androidx.fragment.app.f fVar = this.mHost;
        if (fVar == null) {
            return null;
        }
        return (FragmentActivity) fVar.b();
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        d dVar = this.mAnimationInfo;
        if (dVar == null || (bool = dVar.n) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        d dVar = this.mAnimationInfo;
        if (dVar == null || (bool = dVar.m) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View getAnimatingAway() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        return dVar.f2139a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Animator getAnimator() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        return dVar.f2140b;
    }

    @Nullable
    public final Bundle getArguments() {
        return this.mArguments;
    }

    @NonNull
    public final g getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    @Nullable
    public Context getContext() {
        androidx.fragment.app.f fVar = this.mHost;
        if (fVar == null) {
            return null;
        }
        return fVar.c();
    }

    @Nullable
    public Object getEnterTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        return dVar.f2145g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public androidx.core.app.l getEnterTransitionCallback() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        return dVar.o;
    }

    @Nullable
    public Object getExitTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        return dVar.f2147i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public androidx.core.app.l getExitTransitionCallback() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        return dVar.p;
    }

    @Nullable
    public final g getFragmentManager() {
        return this.mFragmentManager;
    }

    @Nullable
    public final Object getHost() {
        androidx.fragment.app.f fVar = this.mHost;
        if (fVar == null) {
            return null;
        }
        return fVar.e();
    }

    public final int getId() {
        return this.mFragmentId;
    }

    @NonNull
    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        return layoutInflater == null ? performGetLayoutInflater(null) : layoutInflater;
    }

    @Override // androidx.lifecycle.h
    @NonNull
    public androidx.lifecycle.e getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @NonNull
    @Deprecated
    public a.m.a.a getLoaderManager() {
        return a.m.a.a.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getNextAnim() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return 0;
        }
        return dVar.f2142d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getNextTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return 0;
        }
        return dVar.f2143e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getNextTransitionStyle() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return 0;
        }
        return dVar.f2144f;
    }

    @Nullable
    public final Fragment getParentFragment() {
        return this.mParentFragment;
    }

    @Nullable
    public Object getReenterTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        Object obj = dVar.f2148j;
        return obj == USE_DEFAULT_TRANSITION ? getExitTransition() : obj;
    }

    @NonNull
    public final Resources getResources() {
        return requireContext().getResources();
    }

    public final boolean getRetainInstance() {
        return this.mRetainInstance;
    }

    @Nullable
    public Object getReturnTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        Object obj = dVar.f2146h;
        return obj == USE_DEFAULT_TRANSITION ? getEnterTransition() : obj;
    }

    @Override // androidx.savedstate.b
    @NonNull
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.mSavedStateRegistryController.a();
    }

    @Nullable
    public Object getSharedElementEnterTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        return dVar.f2149k;
    }

    @Nullable
    public Object getSharedElementReturnTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        Object obj = dVar.f2150l;
        return obj == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getStateAfterAnimating() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return 0;
        }
        return dVar.f2141c;
    }

    @NonNull
    public final String getString(@StringRes int i2) {
        return getResources().getString(i2);
    }

    @Nullable
    public final String getTag() {
        return this.mTag;
    }

    @Nullable
    public final Fragment getTargetFragment() {
        String str;
        Fragment fragment = this.mTarget;
        if (fragment != null) {
            return fragment;
        }
        h hVar = this.mFragmentManager;
        if (hVar == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return hVar.f2201k.get(str);
    }

    public final int getTargetRequestCode() {
        return this.mTargetRequestCode;
    }

    @NonNull
    public final CharSequence getText(@StringRes int i2) {
        return getResources().getText(i2);
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    @Nullable
    public View getView() {
        return this.mView;
    }

    @NonNull
    @MainThread
    public androidx.lifecycle.h getViewLifecycleOwner() {
        n nVar = this.mViewLifecycleOwner;
        if (nVar != null) {
            return nVar;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    @NonNull
    public LiveData<androidx.lifecycle.h> getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // androidx.lifecycle.s
    @NonNull
    public r getViewModelStore() {
        h hVar = this.mFragmentManager;
        if (hVar != null) {
            return hVar.g(this);
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initState() {
        initLifecycle();
        this.mWho = UUID.randomUUID().toString();
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = new h();
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        return this.mHidden;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isHideReplaced() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return false;
        }
        return dVar.s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public final boolean isMenuVisible() {
        return this.mMenuVisible;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isPostponed() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return false;
        }
        return dVar.q;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isResumed() {
        return this.mState >= 4;
    }

    public final boolean isStateSaved() {
        h hVar = this.mFragmentManager;
        if (hVar == null) {
            return false;
        }
        return hVar.y();
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.mView) == null || view.getWindowToken() == null || this.mView.getVisibility() != 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void noteStateNotSaved() {
        this.mChildFragmentManager.z();
    }

    @CallSuper
    public void onActivityCreated(@Nullable Bundle bundle) {
        this.mCalled = true;
    }

    public void onActivityResult(int i2, int i3, @Nullable Intent intent) {
    }

    @CallSuper
    public void onAttach(@NonNull Context context) {
        this.mCalled = true;
        androidx.fragment.app.f fVar = this.mHost;
        Activity b2 = fVar == null ? null : fVar.b();
        if (b2 != null) {
            this.mCalled = false;
            onAttach(b2);
        }
    }

    public void onAttachFragment(@NonNull Fragment fragment) {
    }

    @Override // android.content.ComponentCallbacks
    @CallSuper
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(@NonNull MenuItem menuItem) {
        return false;
    }

    @CallSuper
    public void onCreate(@Nullable Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState(bundle);
        if (this.mChildFragmentManager.c(1)) {
            return;
        }
        this.mChildFragmentManager.j();
    }

    @Nullable
    public Animation onCreateAnimation(int i2, boolean z, int i3) {
        return null;
    }

    @Nullable
    public Animator onCreateAnimator(int i2, boolean z, int i3) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(@NonNull ContextMenu contextMenu, @NonNull View view, @Nullable ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void onCreateOptionsMenu(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
    }

    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        int i2 = this.mContentLayoutId;
        if (i2 != 0) {
            return layoutInflater.inflate(i2, viewGroup, false);
        }
        return null;
    }

    @CallSuper
    public void onDestroy() {
        this.mCalled = true;
    }

    public void onDestroyOptionsMenu() {
    }

    @CallSuper
    public void onDestroyView() {
        this.mCalled = true;
    }

    @CallSuper
    public void onDetach() {
        this.mCalled = true;
    }

    @NonNull
    public LayoutInflater onGetLayoutInflater(@Nullable Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z) {
    }

    @CallSuper
    public void onInflate(@NonNull Context context, @NonNull AttributeSet attributeSet, @Nullable Bundle bundle) {
        this.mCalled = true;
        androidx.fragment.app.f fVar = this.mHost;
        Activity b2 = fVar == null ? null : fVar.b();
        if (b2 != null) {
            this.mCalled = false;
            onInflate(b2, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    @CallSuper
    public void onLowMemory() {
        this.mCalled = true;
    }

    public void onMultiWindowModeChanged(boolean z) {
    }

    public boolean onOptionsItemSelected(@NonNull MenuItem menuItem) {
        return false;
    }

    public void onOptionsMenuClosed(@NonNull Menu menu) {
    }

    @CallSuper
    public void onPause() {
        this.mCalled = true;
    }

    public void onPictureInPictureModeChanged(boolean z) {
    }

    public void onPrepareOptionsMenu(@NonNull Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z) {
    }

    public void onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
    }

    @CallSuper
    public void onResume() {
        this.mCalled = true;
    }

    public void onSaveInstanceState(@NonNull Bundle bundle) {
    }

    @CallSuper
    public void onStart() {
        this.mCalled = true;
    }

    @CallSuper
    public void onStop() {
        this.mCalled = true;
    }

    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
    }

    @CallSuper
    public void onViewStateRestored(@Nullable Bundle bundle) {
        this.mCalled = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performActivityCreated(Bundle bundle) {
        this.mChildFragmentManager.z();
        this.mState = 2;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (this.mCalled) {
            this.mChildFragmentManager.i();
            return;
        }
        throw new o("Fragment " + this + " did not call through to super.onActivityCreated()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performAttach() {
        this.mChildFragmentManager.a(this.mHost, new c(), this);
        this.mCalled = false;
        onAttach(this.mHost.c());
        if (this.mCalled) {
            return;
        }
        throw new o("Fragment " + this + " did not call through to super.onAttach()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performConfigurationChanged(@NonNull Configuration configuration) {
        onConfigurationChanged(configuration);
        this.mChildFragmentManager.a(configuration);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean performContextItemSelected(@NonNull MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        return onContextItemSelected(menuItem) || this.mChildFragmentManager.a(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performCreate(Bundle bundle) {
        this.mChildFragmentManager.z();
        this.mState = 1;
        this.mCalled = false;
        this.mSavedStateRegistryController.a(bundle);
        onCreate(bundle);
        this.mIsCreated = true;
        if (this.mCalled) {
            this.mLifecycleRegistry.a(e.a.ON_CREATE);
            return;
        }
        throw new o("Fragment " + this + " did not call through to super.onCreate()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean performCreateOptionsMenu(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            z = true;
            onCreateOptionsMenu(menu, menuInflater);
        }
        return z | this.mChildFragmentManager.a(menu, menuInflater);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        this.mChildFragmentManager.z();
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new n();
        this.mView = onCreateView(layoutInflater, viewGroup, bundle);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a();
            this.mViewLifecycleOwnerLiveData.b((androidx.lifecycle.m<androidx.lifecycle.h>) this.mViewLifecycleOwner);
        } else {
            if (!this.mViewLifecycleOwner.b()) {
                this.mViewLifecycleOwner = null;
                return;
            }
            throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performDestroy() {
        this.mChildFragmentManager.k();
        this.mLifecycleRegistry.a(e.a.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (this.mCalled) {
            return;
        }
        throw new o("Fragment " + this + " did not call through to super.onDestroy()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performDestroyView() {
        this.mChildFragmentManager.l();
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(e.a.ON_DESTROY);
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (this.mCalled) {
            a.m.a.a.a(this).a();
            this.mPerformedCreateView = false;
        } else {
            throw new o("Fragment " + this + " did not call through to super.onDestroyView()");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performDetach() {
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (this.mCalled) {
            if (this.mChildFragmentManager.x()) {
                return;
            }
            this.mChildFragmentManager.k();
            this.mChildFragmentManager = new h();
            return;
        }
        throw new o("Fragment " + this + " did not call through to super.onDetach()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public LayoutInflater performGetLayoutInflater(@Nullable Bundle bundle) {
        this.mLayoutInflater = onGetLayoutInflater(bundle);
        return this.mLayoutInflater;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performLowMemory() {
        onLowMemory();
        this.mChildFragmentManager.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performMultiWindowModeChanged(boolean z) {
        onMultiWindowModeChanged(z);
        this.mChildFragmentManager.a(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean performOptionsItemSelected(@NonNull MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        return (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) || this.mChildFragmentManager.b(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performOptionsMenuClosed(@NonNull Menu menu) {
        if (this.mHidden) {
            return;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onOptionsMenuClosed(menu);
        }
        this.mChildFragmentManager.a(menu);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performPause() {
        this.mChildFragmentManager.n();
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(e.a.ON_PAUSE);
        }
        this.mLifecycleRegistry.a(e.a.ON_PAUSE);
        this.mState = 3;
        this.mCalled = false;
        onPause();
        if (this.mCalled) {
            return;
        }
        throw new o("Fragment " + this + " did not call through to super.onPause()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performPictureInPictureModeChanged(boolean z) {
        onPictureInPictureModeChanged(z);
        this.mChildFragmentManager.b(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean performPrepareOptionsMenu(@NonNull Menu menu) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            z = true;
            onPrepareOptionsMenu(menu);
        }
        return z | this.mChildFragmentManager.b(menu);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performPrimaryNavigationFragmentChanged() {
        boolean i2 = this.mFragmentManager.i(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != i2) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(i2);
            onPrimaryNavigationFragmentChanged(i2);
            this.mChildFragmentManager.o();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performResume() {
        this.mChildFragmentManager.z();
        this.mChildFragmentManager.t();
        this.mState = 4;
        this.mCalled = false;
        onResume();
        if (this.mCalled) {
            this.mLifecycleRegistry.a(e.a.ON_RESUME);
            if (this.mView != null) {
                this.mViewLifecycleOwner.a(e.a.ON_RESUME);
            }
            this.mChildFragmentManager.p();
            this.mChildFragmentManager.t();
            return;
        }
        throw new o("Fragment " + this + " did not call through to super.onResume()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.b(bundle);
        Parcelable B = this.mChildFragmentManager.B();
        if (B != null) {
            bundle.putParcelable("android:support:fragments", B);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performStart() {
        this.mChildFragmentManager.z();
        this.mChildFragmentManager.t();
        this.mState = 3;
        this.mCalled = false;
        onStart();
        if (this.mCalled) {
            this.mLifecycleRegistry.a(e.a.ON_START);
            if (this.mView != null) {
                this.mViewLifecycleOwner.a(e.a.ON_START);
            }
            this.mChildFragmentManager.q();
            return;
        }
        throw new o("Fragment " + this + " did not call through to super.onStart()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performStop() {
        this.mChildFragmentManager.r();
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(e.a.ON_STOP);
        }
        this.mLifecycleRegistry.a(e.a.ON_STOP);
        this.mState = 2;
        this.mCalled = false;
        onStop();
        if (this.mCalled) {
            return;
        }
        throw new o("Fragment " + this + " did not call through to super.onStop()");
    }

    public void postponeEnterTransition() {
        ensureAnimationInfo().q = true;
    }

    public void registerForContextMenu(@NonNull View view) {
        view.setOnCreateContextMenuListener(this);
    }

    public final void requestPermissions(@NonNull String[] strArr, int i2) {
        androidx.fragment.app.f fVar = this.mHost;
        if (fVar != null) {
            fVar.a(this, strArr, i2);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    @NonNull
    public final FragmentActivity requireActivity() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    @NonNull
    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException("Fragment " + this + " does not have any arguments.");
    }

    @NonNull
    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    @NonNull
    public final g requireFragmentManager() {
        g fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            return fragmentManager;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    @NonNull
    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a host.");
    }

    @NonNull
    public final Fragment requireParentFragment() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        if (getContext() == null) {
            throw new IllegalStateException("Fragment " + this + " is not attached to any Fragment or host");
        }
        throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
    }

    @NonNull
    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void restoreChildFragmentState(@Nullable Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.mChildFragmentManager.a(parcelable);
        this.mChildFragmentManager.j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mInnerView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (this.mCalled) {
            if (this.mView != null) {
                this.mViewLifecycleOwner.a(e.a.ON_CREATE);
            }
        } else {
            throw new o("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        ensureAnimationInfo().n = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        ensureAnimationInfo().m = Boolean.valueOf(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAnimatingAway(View view) {
        ensureAnimationInfo().f2139a = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAnimator(Animator animator) {
        ensureAnimationInfo().f2140b = animator;
    }

    public void setArguments(@Nullable Bundle bundle) {
        if (this.mFragmentManager != null && isStateSaved()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.mArguments = bundle;
    }

    public void setEnterSharedElementCallback(@Nullable androidx.core.app.l lVar) {
        ensureAnimationInfo().o = lVar;
    }

    public void setEnterTransition(@Nullable Object obj) {
        ensureAnimationInfo().f2145g = obj;
    }

    public void setExitSharedElementCallback(@Nullable androidx.core.app.l lVar) {
        ensureAnimationInfo().p = lVar;
    }

    public void setExitTransition(@Nullable Object obj) {
        ensureAnimationInfo().f2147i = obj;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.mHasMenu != z) {
            this.mHasMenu = z;
            if (!isAdded() || isHidden()) {
                return;
            }
            this.mHost.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHideReplaced(boolean z) {
        ensureAnimationInfo().s = z;
    }

    public void setInitialSavedState(@Nullable SavedState savedState) {
        Bundle bundle;
        if (this.mFragmentManager != null) {
            throw new IllegalStateException("Fragment already added");
        }
        if (savedState == null || (bundle = savedState.f2135e) == null) {
            bundle = null;
        }
        this.mSavedFragmentState = bundle;
    }

    public void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                this.mHost.i();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNextAnim(int i2) {
        if (this.mAnimationInfo == null && i2 == 0) {
            return;
        }
        ensureAnimationInfo().f2142d = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNextTransition(int i2, int i3) {
        if (this.mAnimationInfo == null && i2 == 0 && i3 == 0) {
            return;
        }
        ensureAnimationInfo();
        d dVar = this.mAnimationInfo;
        dVar.f2143e = i2;
        dVar.f2144f = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnStartEnterTransitionListener(f fVar) {
        ensureAnimationInfo();
        f fVar2 = this.mAnimationInfo.r;
        if (fVar == fVar2) {
            return;
        }
        if (fVar != null && fVar2 != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        d dVar = this.mAnimationInfo;
        if (dVar.q) {
            dVar.r = fVar;
        }
        if (fVar != null) {
            fVar.a();
        }
    }

    public void setReenterTransition(@Nullable Object obj) {
        ensureAnimationInfo().f2148j = obj;
    }

    public void setRetainInstance(boolean z) {
        this.mRetainInstance = z;
        h hVar = this.mFragmentManager;
        if (hVar == null) {
            this.mRetainInstanceChangedWhileDetached = true;
        } else if (z) {
            hVar.a(this);
        } else {
            hVar.p(this);
        }
    }

    public void setReturnTransition(@Nullable Object obj) {
        ensureAnimationInfo().f2146h = obj;
    }

    public void setSharedElementEnterTransition(@Nullable Object obj) {
        ensureAnimationInfo().f2149k = obj;
    }

    public void setSharedElementReturnTransition(@Nullable Object obj) {
        ensureAnimationInfo().f2150l = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStateAfterAnimating(int i2) {
        ensureAnimationInfo().f2141c = i2;
    }

    public void setTargetFragment(@Nullable Fragment fragment, int i2) {
        g fragmentManager = getFragmentManager();
        g fragmentManager2 = fragment != null ? fragment.getFragmentManager() : null;
        if (fragmentManager != null && fragmentManager2 != null && fragmentManager != fragmentManager2) {
            throw new IllegalArgumentException("Fragment " + fragment + " must share the same FragmentManager to be set as a target fragment");
        }
        for (Fragment fragment2 = fragment; fragment2 != null; fragment2 = fragment2.getTargetFragment()) {
            if (fragment2 == this) {
                throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
            }
        }
        if (fragment == null) {
            this.mTargetWho = null;
            this.mTarget = null;
        } else if (this.mFragmentManager != null && fragment.mFragmentManager != null) {
            this.mTargetWho = fragment.mWho;
            this.mTarget = null;
        } else {
            this.mTargetWho = null;
            this.mTarget = fragment;
        }
        this.mTargetRequestCode = i2;
    }

    @Deprecated
    public void setUserVisibleHint(boolean z) {
        if (!this.mUserVisibleHint && z && this.mState < 3 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            this.mFragmentManager.n(this);
        }
        this.mUserVisibleHint = z;
        this.mDeferStart = this.mState < 3 && !z;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(@NonNull String str) {
        androidx.fragment.app.f fVar = this.mHost;
        if (fVar != null) {
            return fVar.a(str);
        }
        return false;
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent) {
        startActivity(intent, null);
    }

    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i2) {
        startActivityForResult(intent, i2, null);
    }

    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, @Nullable Intent intent, int i3, int i4, int i5, @Nullable Bundle bundle) {
        androidx.fragment.app.f fVar = this.mHost;
        if (fVar != null) {
            fVar.a(this, intentSender, i2, intent, i3, i4, i5, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void startPostponedEnterTransition() {
        h hVar = this.mFragmentManager;
        if (hVar != null && hVar.u != null) {
            if (Looper.myLooper() != this.mFragmentManager.u.d().getLooper()) {
                this.mFragmentManager.u.d().postAtFrontOfQueue(new b());
                return;
            } else {
                callStartTransitionListener();
                return;
            }
        }
        ensureAnimationInfo().q = false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        a.i.m.b.a(this, sb);
        sb.append(" (");
        sb.append(this.mWho);
        sb.append(")");
        if (this.mFragmentId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(HanziToPinyin.Token.SEPARATOR);
            sb.append(this.mTag);
        }
        sb.append('}');
        return sb.toString();
    }

    public void unregisterForContextMenu(@NonNull View view) {
        view.setOnCreateContextMenuListener(null);
    }

    @NonNull
    @Deprecated
    public static Fragment instantiate(@NonNull Context context, @NonNull String str, @Nullable Bundle bundle) {
        try {
            Fragment newInstance = androidx.fragment.app.e.d(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(newInstance.getClass().getClassLoader());
                newInstance.setArguments(bundle);
            }
            return newInstance;
        } catch (IllegalAccessException e2) {
            throw new e("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (InstantiationException e3) {
            throw new e("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e3);
        } catch (NoSuchMethodException e4) {
            throw new e("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e4);
        } catch (InvocationTargetException e5) {
            throw new e("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e5);
        }
    }

    @NonNull
    public final String getString(@StringRes int i2, @Nullable Object... objArr) {
        return getResources().getString(i2, objArr);
    }

    public final void postponeEnterTransition(long j2, @NonNull TimeUnit timeUnit) {
        Handler handler;
        ensureAnimationInfo().q = true;
        h hVar = this.mFragmentManager;
        if (hVar != null) {
            handler = hVar.u.d();
        } else {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.removeCallbacks(this.mPostponedDurationRunnable);
        handler.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j2));
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent, @Nullable Bundle bundle) {
        androidx.fragment.app.f fVar = this.mHost;
        if (fVar != null) {
            fVar.a(this, intent, -1, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i2, @Nullable Bundle bundle) {
        androidx.fragment.app.f fVar = this.mHost;
        if (fVar != null) {
            fVar.a(this, intent, i2, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    /* loaded from: classes.dex */
    class c extends androidx.fragment.app.c {
        c() {
        }

        @Override // androidx.fragment.app.c
        @Nullable
        public View a(int i2) {
            View view = Fragment.this.mView;
            if (view != null) {
                return view.findViewById(i2);
            }
            throw new IllegalStateException("Fragment " + this + " does not have a view");
        }

        @Override // androidx.fragment.app.c
        public boolean a() {
            return Fragment.this.mView != null;
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public LayoutInflater getLayoutInflater(@Nullable Bundle bundle) {
        androidx.fragment.app.f fVar = this.mHost;
        if (fVar != null) {
            LayoutInflater f2 = fVar.f();
            h hVar = this.mChildFragmentManager;
            hVar.u();
            androidx.core.view.g.b(f2, hVar);
            return f2;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    @CallSuper
    @Deprecated
    public void onAttach(@NonNull Activity activity) {
        this.mCalled = true;
    }

    @CallSuper
    @Deprecated
    public void onInflate(@NonNull Activity activity, @NonNull AttributeSet attributeSet, @Nullable Bundle bundle) {
        this.mCalled = true;
    }

    @ContentView
    public Fragment(@LayoutRes int i2) {
        this();
        this.mContentLayoutId = i2;
    }
}
