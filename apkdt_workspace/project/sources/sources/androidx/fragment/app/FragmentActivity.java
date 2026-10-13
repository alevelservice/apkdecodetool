package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.annotation.CallSuper;
import androidx.annotation.ContentView;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.app.a;
import androidx.lifecycle.e;
import androidx.lifecycle.r;
import androidx.lifecycle.s;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class FragmentActivity extends ComponentActivity implements a.b, a.d {
    static final String ALLOCATED_REQUEST_INDICIES_TAG = "android:support:request_indicies";
    static final String FRAGMENTS_TAG = "android:support:fragments";
    static final int MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS = 65534;
    static final String NEXT_CANDIDATE_REQUEST_INDEX_TAG = "android:support:next_request_index";
    static final String REQUEST_FRAGMENT_WHO_TAG = "android:support:request_fragment_who";
    private static final String TAG = "FragmentActivity";
    boolean mCreated;
    final androidx.lifecycle.i mFragmentLifecycleRegistry;
    final d mFragments;
    int mNextCandidateRequestIndex;
    a.e.h<String> mPendingFragmentActivityResults;
    boolean mRequestedPermissionsFromFragment;
    boolean mResumed;
    boolean mStartedActivityFromFragment;
    boolean mStartedIntentSenderFromFragment;
    boolean mStopped;

    /* loaded from: classes.dex */
    class a extends f<FragmentActivity> implements s, androidx.activity.c {
        public a() {
            super(FragmentActivity.this);
        }

        @Override // androidx.fragment.app.f
        public void a(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
            FragmentActivity.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // androidx.fragment.app.f
        public boolean b(@NonNull Fragment fragment) {
            return !FragmentActivity.this.isFinishing();
        }

        @Override // androidx.fragment.app.f
        @NonNull
        public LayoutInflater f() {
            return FragmentActivity.this.getLayoutInflater().cloneInContext(FragmentActivity.this);
        }

        @Override // androidx.fragment.app.f
        public int g() {
            Window window = FragmentActivity.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }

        @Override // androidx.lifecycle.h
        @NonNull
        public androidx.lifecycle.e getLifecycle() {
            return FragmentActivity.this.mFragmentLifecycleRegistry;
        }

        @Override // androidx.activity.c
        @NonNull
        public OnBackPressedDispatcher getOnBackPressedDispatcher() {
            return FragmentActivity.this.getOnBackPressedDispatcher();
        }

        @Override // androidx.lifecycle.s
        @NonNull
        public r getViewModelStore() {
            return FragmentActivity.this.getViewModelStore();
        }

        @Override // androidx.fragment.app.f
        public boolean h() {
            return FragmentActivity.this.getWindow() != null;
        }

        @Override // androidx.fragment.app.f
        public void i() {
            FragmentActivity.this.supportInvalidateOptionsMenu();
        }

        @Override // androidx.fragment.app.f
        public void a(@NonNull Fragment fragment, Intent intent, int i2, @Nullable Bundle bundle) {
            FragmentActivity.this.startActivityFromFragment(fragment, intent, i2, bundle);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.fragment.app.f
        public FragmentActivity e() {
            return FragmentActivity.this;
        }

        @Override // androidx.fragment.app.f
        public void a(@NonNull Fragment fragment, IntentSender intentSender, int i2, @Nullable Intent intent, int i3, int i4, int i5, Bundle bundle) {
            FragmentActivity.this.startIntentSenderFromFragment(fragment, intentSender, i2, intent, i3, i4, i5, bundle);
        }

        @Override // androidx.fragment.app.f
        public void a(@NonNull Fragment fragment, @NonNull String[] strArr, int i2) {
            FragmentActivity.this.requestPermissionsFromFragment(fragment, strArr, i2);
        }

        @Override // androidx.fragment.app.f
        public boolean a(@NonNull String str) {
            return androidx.core.app.a.a((Activity) FragmentActivity.this, str);
        }

        @Override // androidx.fragment.app.f
        public void a(@NonNull Fragment fragment) {
            FragmentActivity.this.onAttachFragment(fragment);
        }

        @Override // androidx.fragment.app.f, androidx.fragment.app.c
        @Nullable
        public View a(int i2) {
            return FragmentActivity.this.findViewById(i2);
        }

        @Override // androidx.fragment.app.f, androidx.fragment.app.c
        public boolean a() {
            Window window = FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }
    }

    public FragmentActivity() {
        this.mFragments = d.a(new a());
        this.mFragmentLifecycleRegistry = new androidx.lifecycle.i(this);
        this.mStopped = true;
    }

    private int allocateRequestIndex(@NonNull Fragment fragment) {
        if (this.mPendingFragmentActivityResults.b() < MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS) {
            while (this.mPendingFragmentActivityResults.b(this.mNextCandidateRequestIndex) >= 0) {
                this.mNextCandidateRequestIndex = (this.mNextCandidateRequestIndex + 1) % MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS;
            }
            int i2 = this.mNextCandidateRequestIndex;
            this.mPendingFragmentActivityResults.c(i2, fragment.mWho);
            this.mNextCandidateRequestIndex = (this.mNextCandidateRequestIndex + 1) % MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS;
            return i2;
        }
        throw new IllegalStateException("Too many pending Fragment activity results.");
    }

    static void checkForValidRequestCode(int i2) {
        if ((i2 & (-65536)) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    private void markFragmentsCreated() {
        do {
        } while (markState(getSupportFragmentManager(), e.b.CREATED));
    }

    private static boolean markState(g gVar, e.b bVar) {
        boolean z = false;
        for (Fragment fragment : gVar.e()) {
            if (fragment != null) {
                if (fragment.getLifecycle().a().isAtLeast(e.b.STARTED)) {
                    fragment.mLifecycleRegistry.b(bVar);
                    z = true;
                }
                if (fragment.getHost() != null) {
                    z |= markState(fragment.getChildFragmentManager(), bVar);
                }
            }
        }
        return z;
    }

    @Nullable
    final View dispatchFragmentsOnCreateView(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        return this.mFragments.a(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void dump(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.mCreated);
        printWriter.print(" mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        if (getApplication() != null) {
            a.m.a.a.a(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.mFragments.j().a(str, fileDescriptor, printWriter, strArr);
    }

    @NonNull
    public g getSupportFragmentManager() {
        return this.mFragments.j();
    }

    @NonNull
    @Deprecated
    public a.m.a.a getSupportLoaderManager() {
        return a.m.a.a.a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    @CallSuper
    public void onActivityResult(int i2, int i3, @Nullable Intent intent) {
        this.mFragments.k();
        int i4 = i2 >> 16;
        if (i4 != 0) {
            int i5 = i4 - 1;
            String a2 = this.mPendingFragmentActivityResults.a(i5);
            this.mPendingFragmentActivityResults.d(i5);
            if (a2 == null) {
                return;
            }
            Fragment a3 = this.mFragments.a(a2);
            if (a3 == null) {
                String str = "Activity result no fragment exists for who: " + a2;
                return;
            }
            a3.onActivityResult(i2 & 65535, i3, intent);
            return;
        }
        a.c a4 = androidx.core.app.a.a();
        if (a4 == null || !a4.a(this, i2, i3, intent)) {
            super.onActivityResult(i2, i3, intent);
        }
    }

    public void onAttachFragment(@NonNull Fragment fragment) {
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mFragments.k();
        this.mFragments.a(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        this.mFragments.a((Fragment) null);
        if (bundle != null) {
            this.mFragments.a(bundle.getParcelable(FRAGMENTS_TAG));
            if (bundle.containsKey(NEXT_CANDIDATE_REQUEST_INDEX_TAG)) {
                this.mNextCandidateRequestIndex = bundle.getInt(NEXT_CANDIDATE_REQUEST_INDEX_TAG);
                int[] intArray = bundle.getIntArray(ALLOCATED_REQUEST_INDICIES_TAG);
                String[] stringArray = bundle.getStringArray(REQUEST_FRAGMENT_WHO_TAG);
                if (intArray != null && stringArray != null && intArray.length == stringArray.length) {
                    this.mPendingFragmentActivityResults = new a.e.h<>(intArray.length);
                    for (int i2 = 0; i2 < intArray.length; i2++) {
                        this.mPendingFragmentActivityResults.c(intArray[i2], stringArray[i2]);
                    }
                }
            }
        }
        if (this.mPendingFragmentActivityResults == null) {
            this.mPendingFragmentActivityResults = new a.e.h<>();
            this.mNextCandidateRequestIndex = 0;
        }
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.a(e.a.ON_CREATE);
        this.mFragments.b();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i2, @NonNull Menu menu) {
        if (i2 == 0) {
            return super.onCreatePanelMenu(i2, menu) | this.mFragments.a(menu, getMenuInflater());
        }
        return super.onCreatePanelMenu(i2, menu);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    @Nullable
    public View onCreateView(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mFragments.c();
        this.mFragmentLifecycleRegistry.a(e.a.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.d();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i2, @NonNull MenuItem menuItem) {
        if (super.onMenuItemSelected(i2, menuItem)) {
            return true;
        }
        if (i2 == 0) {
            return this.mFragments.b(menuItem);
        }
        if (i2 != 6) {
            return false;
        }
        return this.mFragments.a(menuItem);
    }

    @Override // android.app.Activity
    @CallSuper
    public void onMultiWindowModeChanged(boolean z) {
        this.mFragments.a(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    @CallSuper
    public void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        super.onNewIntent(intent);
        this.mFragments.k();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i2, @NonNull Menu menu) {
        if (i2 == 0) {
            this.mFragments.a(menu);
        }
        super.onPanelClosed(i2, menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.e();
        this.mFragmentLifecycleRegistry.a(e.a.ON_PAUSE);
    }

    @Override // android.app.Activity
    @CallSuper
    public void onPictureInPictureModeChanged(boolean z) {
        this.mFragments.b(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    @Deprecated
    protected boolean onPrepareOptionsPanel(@Nullable View view, @NonNull Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i2, @Nullable View view, @NonNull Menu menu) {
        if (i2 == 0) {
            return onPrepareOptionsPanel(view, menu) | this.mFragments.b(menu);
        }
        return super.onPreparePanel(i2, view, menu);
    }

    @Override // android.app.Activity, androidx.core.app.a.b
    public void onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        this.mFragments.k();
        int i3 = (i2 >> 16) & 65535;
        if (i3 != 0) {
            int i4 = i3 - 1;
            String a2 = this.mPendingFragmentActivityResults.a(i4);
            this.mPendingFragmentActivityResults.d(i4);
            if (a2 == null) {
                return;
            }
            Fragment a3 = this.mFragments.a(a2);
            if (a3 == null) {
                String str = "Activity result no fragment exists for who: " + a2;
                return;
            }
            a3.onRequestPermissionsResult(i2 & 65535, strArr, iArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.mResumed = true;
        this.mFragments.k();
        this.mFragments.i();
    }

    protected void onResumeFragments() {
        this.mFragmentLifecycleRegistry.a(e.a.ON_RESUME);
        this.mFragments.f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        markFragmentsCreated();
        this.mFragmentLifecycleRegistry.a(e.a.ON_STOP);
        Parcelable l2 = this.mFragments.l();
        if (l2 != null) {
            bundle.putParcelable(FRAGMENTS_TAG, l2);
        }
        if (this.mPendingFragmentActivityResults.b() > 0) {
            bundle.putInt(NEXT_CANDIDATE_REQUEST_INDEX_TAG, this.mNextCandidateRequestIndex);
            int[] iArr = new int[this.mPendingFragmentActivityResults.b()];
            String[] strArr = new String[this.mPendingFragmentActivityResults.b()];
            for (int i2 = 0; i2 < this.mPendingFragmentActivityResults.b(); i2++) {
                iArr[i2] = this.mPendingFragmentActivityResults.c(i2);
                strArr[i2] = this.mPendingFragmentActivityResults.e(i2);
            }
            bundle.putIntArray(ALLOCATED_REQUEST_INDICIES_TAG, iArr);
            bundle.putStringArray(REQUEST_FRAGMENT_WHO_TAG, strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.a();
        }
        this.mFragments.k();
        this.mFragments.i();
        this.mFragmentLifecycleRegistry.a(e.a.ON_START);
        this.mFragments.g();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.k();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        this.mFragments.h();
        this.mFragmentLifecycleRegistry.a(e.a.ON_STOP);
    }

    void requestPermissionsFromFragment(@NonNull Fragment fragment, @NonNull String[] strArr, int i2) {
        if (i2 == -1) {
            androidx.core.app.a.a(this, strArr, i2);
            return;
        }
        checkForValidRequestCode(i2);
        try {
            this.mRequestedPermissionsFromFragment = true;
            androidx.core.app.a.a(this, strArr, ((allocateRequestIndex(fragment) + 1) << 16) + (i2 & 65535));
        } finally {
            this.mRequestedPermissionsFromFragment = false;
        }
    }

    public void setEnterSharedElementCallback(@Nullable androidx.core.app.l lVar) {
        androidx.core.app.a.a(this, lVar);
    }

    public void setExitSharedElementCallback(@Nullable androidx.core.app.l lVar) {
        androidx.core.app.a.b(this, lVar);
    }

    @Override // android.app.Activity
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i2) {
        if (!this.mStartedActivityFromFragment && i2 != -1) {
            checkForValidRequestCode(i2);
        }
        super.startActivityForResult(intent, i2);
    }

    public void startActivityFromFragment(@NonNull Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i2) {
        startActivityFromFragment(fragment, intent, i2, (Bundle) null);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, @Nullable Intent intent, int i3, int i4, int i5) {
        if (!this.mStartedIntentSenderFromFragment && i2 != -1) {
            checkForValidRequestCode(i2);
        }
        super.startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5);
    }

    public void startIntentSenderFromFragment(@NonNull Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, @Nullable Intent intent, int i3, int i4, int i5, @Nullable Bundle bundle) {
        this.mStartedIntentSenderFromFragment = true;
        try {
            if (i2 == -1) {
                androidx.core.app.a.a(this, intentSender, i2, intent, i3, i4, i5, bundle);
            } else {
                checkForValidRequestCode(i2);
                androidx.core.app.a.a(this, intentSender, ((allocateRequestIndex(fragment) + 1) << 16) + (i2 & 65535), intent, i3, i4, i5, bundle);
            }
        } finally {
            this.mStartedIntentSenderFromFragment = false;
        }
    }

    public void supportFinishAfterTransition() {
        androidx.core.app.a.b((Activity) this);
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateOptionsMenu();
    }

    public void supportPostponeEnterTransition() {
        androidx.core.app.a.c((Activity) this);
    }

    public void supportStartPostponedEnterTransition() {
        androidx.core.app.a.e(this);
    }

    @Override // androidx.core.app.a.d
    public final void validateRequestPermissionsRequestCode(int i2) {
        if (this.mRequestedPermissionsFromFragment || i2 == -1) {
            return;
        }
        checkForValidRequestCode(i2);
    }

    public void startActivityFromFragment(@NonNull Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i2, @Nullable Bundle bundle) {
        this.mStartedActivityFromFragment = true;
        try {
            if (i2 == -1) {
                androidx.core.app.a.a(this, intent, -1, bundle);
            } else {
                checkForValidRequestCode(i2);
                androidx.core.app.a.a(this, intent, ((allocateRequestIndex(fragment) + 1) << 16) + (i2 & 65535), bundle);
            }
        } finally {
            this.mStartedActivityFromFragment = false;
        }
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    @Nullable
    public View onCreateView(@NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i2, @Nullable Bundle bundle) {
        if (!this.mStartedActivityFromFragment && i2 != -1) {
            checkForValidRequestCode(i2);
        }
        super.startActivityForResult(intent, i2, bundle);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, @Nullable Intent intent, int i3, int i4, int i5, @Nullable Bundle bundle) {
        if (!this.mStartedIntentSenderFromFragment && i2 != -1) {
            checkForValidRequestCode(i2);
        }
        super.startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5, bundle);
    }

    @ContentView
    public FragmentActivity(@LayoutRes int i2) {
        super(i2);
        this.mFragments = d.a(new a());
        this.mFragmentLifecycleRegistry = new androidx.lifecycle.i(this);
        this.mStopped = true;
    }
}
