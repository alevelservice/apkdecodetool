package androidx.fragment.app;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;

/* compiled from: DialogFragment.java */
/* loaded from: classes.dex */
public class b extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* renamed from: e, reason: collision with root package name */
    private Handler f2179e;

    /* renamed from: f, reason: collision with root package name */
    private Runnable f2180f = new a();

    /* renamed from: g, reason: collision with root package name */
    int f2181g = 0;

    /* renamed from: h, reason: collision with root package name */
    int f2182h = 0;

    /* renamed from: i, reason: collision with root package name */
    boolean f2183i = true;

    /* renamed from: j, reason: collision with root package name */
    boolean f2184j = true;

    /* renamed from: k, reason: collision with root package name */
    int f2185k = -1;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    Dialog f2186l;
    boolean m;
    boolean n;
    boolean o;

    /* compiled from: DialogFragment.java */
    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            Dialog dialog = bVar.f2186l;
            if (dialog != null) {
                bVar.onDismiss(dialog);
            }
        }
    }

    public void a(int i2, @StyleRes int i3) {
        this.f2181g = i2;
        int i4 = this.f2181g;
        if (i4 == 2 || i4 == 3) {
            this.f2182h = R.style.Theme.Panel;
        }
        if (i3 != 0) {
            this.f2182h = i3;
        }
    }

    public void b(boolean z) {
        this.f2184j = z;
    }

    public void g() {
        a(true, false);
    }

    @StyleRes
    public int h() {
        return this.f2182h;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        Bundle bundle2;
        super.onActivityCreated(bundle);
        if (this.f2184j) {
            View view = getView();
            if (view != null) {
                if (view.getParent() == null) {
                    this.f2186l.setContentView(view);
                } else {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
            }
            FragmentActivity activity = getActivity();
            if (activity != null) {
                this.f2186l.setOwnerActivity(activity);
            }
            this.f2186l.setCancelable(this.f2183i);
            this.f2186l.setOnCancelListener(this);
            this.f2186l.setOnDismissListener(this);
            if (bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
                return;
            }
            this.f2186l.onRestoreInstanceState(bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        if (this.o) {
            return;
        }
        this.n = false;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(@NonNull DialogInterface dialogInterface) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f2179e = new Handler();
        this.f2184j = this.mContainerId == 0;
        if (bundle != null) {
            this.f2181g = bundle.getInt("android:style", 0);
            this.f2182h = bundle.getInt("android:theme", 0);
            this.f2183i = bundle.getBoolean("android:cancelable", true);
            this.f2184j = bundle.getBoolean("android:showsDialog", this.f2184j);
            this.f2185k = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.f2186l;
        if (dialog != null) {
            this.m = true;
            dialog.setOnDismissListener(null);
            this.f2186l.dismiss();
            if (!this.n) {
                onDismiss(this.f2186l);
            }
            this.f2186l = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (this.o || this.n) {
            return;
        }
        this.n = true;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NonNull DialogInterface dialogInterface) {
        if (this.m) {
            return;
        }
        a(true, true);
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public LayoutInflater onGetLayoutInflater(@Nullable Bundle bundle) {
        if (!this.f2184j) {
            return super.onGetLayoutInflater(bundle);
        }
        this.f2186l = a(bundle);
        Dialog dialog = this.f2186l;
        if (dialog != null) {
            a(dialog, this.f2181g);
            return (LayoutInflater) this.f2186l.getContext().getSystemService("layout_inflater");
        }
        return (LayoutInflater) this.mHost.c().getSystemService("layout_inflater");
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        Bundle onSaveInstanceState;
        super.onSaveInstanceState(bundle);
        Dialog dialog = this.f2186l;
        if (dialog != null && (onSaveInstanceState = dialog.onSaveInstanceState()) != null) {
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i2 = this.f2181g;
        if (i2 != 0) {
            bundle.putInt("android:style", i2);
        }
        int i3 = this.f2182h;
        if (i3 != 0) {
            bundle.putInt("android:theme", i3);
        }
        boolean z = this.f2183i;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.f2184j;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i4 = this.f2185k;
        if (i4 != -1) {
            bundle.putInt("android:backStackId", i4);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = this.f2186l;
        if (dialog != null) {
            this.m = false;
            dialog.show();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        Dialog dialog = this.f2186l;
        if (dialog != null) {
            dialog.hide();
        }
    }

    public void a(@NonNull g gVar, @Nullable String str) {
        this.n = false;
        this.o = true;
        j a2 = gVar.a();
        a2.a(this, str);
        a2.a();
    }

    void a(boolean z, boolean z2) {
        if (this.n) {
            return;
        }
        this.n = true;
        this.o = false;
        Dialog dialog = this.f2186l;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.f2186l.dismiss();
            if (!z2) {
                if (Looper.myLooper() == this.f2179e.getLooper()) {
                    onDismiss(this.f2186l);
                } else {
                    this.f2179e.post(this.f2180f);
                }
            }
        }
        this.m = true;
        if (this.f2185k >= 0) {
            requireFragmentManager().a(this.f2185k, 1);
            this.f2185k = -1;
            return;
        }
        j a2 = requireFragmentManager().a();
        a2.c(this);
        if (z) {
            a2.b();
        } else {
            a2.a();
        }
    }

    public void a(boolean z) {
        this.f2183i = z;
        Dialog dialog = this.f2186l;
        if (dialog != null) {
            dialog.setCancelable(z);
        }
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void a(@NonNull Dialog dialog, int i2) {
        if (i2 != 1 && i2 != 2) {
            if (i2 != 3) {
                return;
            } else {
                dialog.getWindow().addFlags(24);
            }
        }
        dialog.requestWindowFeature(1);
    }

    @NonNull
    public Dialog a(@Nullable Bundle bundle) {
        return new Dialog(requireContext(), h());
    }
}
