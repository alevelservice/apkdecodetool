package com.alipay.mobile.security.bio.workspace;

import android.app.Activity;
import androidx.fragment.app.Fragment;
import com.alipay.mobile.security.bio.exception.BioObjectNotInitialException;
import com.alipay.mobile.security.bio.service.BioServiceManager;

/* loaded from: classes.dex */
public class BioFragment extends Fragment {
    protected BioFragmentCallBack mBioFragmentCallBack;
    protected BioServiceManager mBioServiceManager;

    public void backward() {
        BioFragmentCallBack bioFragmentCallBack = this.mBioFragmentCallBack;
        if (bioFragmentCallBack != null) {
            bioFragmentCallBack.backward(null);
        }
    }

    protected void finish() {
        BioFragmentCallBack bioFragmentCallBack = this.mBioFragmentCallBack;
        if (bioFragmentCallBack != null) {
            bioFragmentCallBack.finish(null);
        }
    }

    public void forward(BioFragment bioFragment) {
        BioFragmentCallBack bioFragmentCallBack = this.mBioFragmentCallBack;
        if (bioFragmentCallBack != null) {
            bioFragmentCallBack.forward(null, bioFragment);
        }
    }

    protected <T> T getExtService(Class<T> cls) {
        BioServiceManager bioServiceManager = this.mBioServiceManager;
        if (bioServiceManager != null) {
            return (T) bioServiceManager.getBioService(cls);
        }
        throw new BioObjectNotInitialException("");
    }

    protected <T> T getSystemService(Class<T> cls) {
        BioServiceManager bioServiceManager = this.mBioServiceManager;
        if (bioServiceManager != null) {
            return (T) bioServiceManager.getBioService(cls);
        }
        throw new BioObjectNotInitialException("");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.mBioServiceManager = BioServiceManager.getCurrentInstance();
        if (this.mBioServiceManager == null) {
            new RuntimeException("null == BioServiceManager.getCurrentInstance()");
            ((BioFragmentContainer) activity).sendResponse(206);
            finish();
        } else {
            try {
                this.mBioFragmentCallBack = (BioFragmentCallBack) activity;
            } catch (ClassCastException unused) {
                throw new ClassCastException(activity.toString() + " must BioFragmentService");
            }
        }
    }
}
