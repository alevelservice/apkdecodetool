package com.alipay.zoloz.zface.manager;

import android.os.Handler;
import android.os.Looper;
import com.alipay.zoloz.toyger.algorithm.TGFrame;
import com.alipay.zoloz.toyger.blob.GenericBlobManager;
import com.alipay.zoloz.toyger.upload.UploadContent;
import com.alipay.zoloz.zface.beans.FaceRemoteConfig;

/* loaded from: classes.dex */
public class NineShootManager {
    private FaceRemoteConfig mFaceRemoteProtocol;
    private GenericBlobManager mGenericBlobManager;
    private boolean recordFrame;
    private boolean isFullRequirement = false;
    private int count = 0;
    private Handler mMainHandler = new Handler(Looper.myLooper());

    public NineShootManager(FaceRemoteConfig faceRemoteConfig, String str) {
        this.mFaceRemoteProtocol = faceRemoteConfig;
        this.mGenericBlobManager = new GenericBlobManager("face", str);
    }

    static /* synthetic */ int access$208(NineShootManager nineShootManager) {
        int i2 = nineShootManager.count;
        nineShootManager.count = i2 + 1;
        return i2;
    }

    public void destroy() {
        this.mFaceRemoteProtocol = null;
        this.isFullRequirement = false;
        this.count = 0;
    }

    public UploadContent getUploadContent() {
        byte[] generateMonitorBlob;
        GenericBlobManager genericBlobManager = this.mGenericBlobManager;
        if (genericBlobManager == null || (generateMonitorBlob = genericBlobManager.generateMonitorBlob()) == null) {
            return null;
        }
        return new UploadContent(generateMonitorBlob, this.mGenericBlobManager.getKey(), this.mGenericBlobManager.isUTF8());
    }

    public boolean isNeedUpload() {
        return this.mFaceRemoteProtocol.getColl().getUploadMonitorPic() == 1;
    }

    public void shootToygerFrame(final TGFrame tGFrame) {
        if (this.mFaceRemoteProtocol.getColl().getUploadMonitorPic() != 1 || tGFrame == null || this.isFullRequirement || this.recordFrame) {
            return;
        }
        this.recordFrame = true;
        this.mMainHandler.postDelayed(new Runnable() { // from class: com.alipay.zoloz.zface.manager.NineShootManager.1
            @Override // java.lang.Runnable
            public void run() {
                NineShootManager.this.recordFrame = false;
            }
        }, 1000L);
        if (this.count >= 10) {
            this.isFullRequirement = true;
        } else {
            final TGFrame deepCopy = tGFrame.deepCopy();
            new Thread(new Runnable() { // from class: com.alipay.zoloz.zface.manager.NineShootManager.2
                @Override // java.lang.Runnable
                public void run() {
                    StringBuilder sb;
                    try {
                        if (NineShootManager.this.mGenericBlobManager != null) {
                            NineShootManager.this.mGenericBlobManager.addMonitorFrame(deepCopy);
                        }
                        NineShootManager.access$208(NineShootManager.this);
                        sb = new StringBuilder();
                    } catch (Exception unused) {
                        sb = new StringBuilder();
                    } catch (Throwable th) {
                        String str = "NineShootManager.addMonitoryFrame() : " + tGFrame + ", count=" + NineShootManager.this.count;
                        throw th;
                    }
                    sb.append("NineShootManager.addMonitoryFrame() : ");
                    sb.append(tGFrame);
                    sb.append(", count=");
                    sb.append(NineShootManager.this.count);
                    sb.toString();
                }
            }, "shootToygerFrame").start();
        }
    }
}
