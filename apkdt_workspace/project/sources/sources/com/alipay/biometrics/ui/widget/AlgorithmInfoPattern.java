package com.alipay.biometrics.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.alipay.mobile.security.bio.utils.DeviceUtil;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import e.b.a.a.a.a.a.b;
import e.b.a.a.a.a.a.c;

/* loaded from: classes.dex */
public class AlgorithmInfoPattern extends RelativeLayout {
    private TextView mTxtCode;
    private TextView mTxtDistance;
    private TextView mTxtFaceID;
    private TextView mTxtFaceLight;
    private TextView mTxtFacePitch;
    private TextView mTxtFaceQuality;
    private TextView mTxtFaceYaw;
    private TextView mTxtGaussian;
    private TextView mTxtHasFace;
    private TextView mTxtIntegrity;
    private TextView mTxtLeftEyeOcclusion;
    private TextView mTxtLiveScore;
    private TextView mTxtMotion;
    private TextView mTxtRectWidth;
    private TextView mTxtRightEyeOcclusion;
    private TextView mTxtVersionName;

    public AlgorithmInfoPattern(Context context) {
        super(context);
        this.mTxtHasFace = null;
        this.mTxtFaceID = null;
        this.mTxtFaceQuality = null;
        this.mTxtLiveScore = null;
        this.mTxtFaceLight = null;
        this.mTxtIntegrity = null;
        this.mTxtFacePitch = null;
        this.mTxtFaceYaw = null;
        this.mTxtGaussian = null;
        this.mTxtMotion = null;
        this.mTxtLeftEyeOcclusion = null;
        this.mTxtRightEyeOcclusion = null;
        this.mTxtDistance = null;
        this.mTxtRectWidth = null;
        this.mTxtVersionName = null;
        this.mTxtCode = null;
        initViews();
    }

    private void initViews() {
        View inflate = LayoutInflater.from(getContext()).inflate(c.f16852a, (ViewGroup) this, true);
        this.mTxtHasFace = (TextView) inflate.findViewById(b.o);
        this.mTxtFaceID = (TextView) inflate.findViewById(b.f16843d);
        this.mTxtFaceQuality = (TextView) inflate.findViewById(b.f16850k);
        this.mTxtLiveScore = (TextView) inflate.findViewById(b.f16847h);
        this.mTxtFaceLight = (TextView) inflate.findViewById(b.f16846g);
        this.mTxtFacePitch = (TextView) inflate.findViewById(b.f16849j);
        this.mTxtFaceYaw = (TextView) inflate.findViewById(b.n);
        this.mTxtGaussian = (TextView) findViewById(b.f16842c);
        this.mTxtMotion = (TextView) findViewById(b.f16848i);
        this.mTxtIntegrity = (TextView) findViewById(b.f16844e);
        this.mTxtLeftEyeOcclusion = (TextView) findViewById(b.f16845f);
        this.mTxtRightEyeOcclusion = (TextView) findViewById(b.m);
        this.mTxtDistance = (TextView) findViewById(b.f16841b);
        this.mTxtRectWidth = (TextView) findViewById(b.f16851l);
        this.mTxtVersionName = (TextView) findViewById(b.q);
        this.mTxtCode = (TextView) findViewById(b.p);
        this.mTxtVersionName.setText(DeviceUtil.getVersionName(getContext()));
        this.mTxtCode.setText(DeviceUtil.getUtdid(getContext()));
    }

    public void showInfo(AlgorithmInfo algorithmInfo) {
        if (algorithmInfo != null && algorithmInfo.isHasFace()) {
            this.mTxtHasFace.setText("" + algorithmInfo.isHasFace());
            this.mTxtFaceID.setText("" + algorithmInfo.getFaceId());
            this.mTxtFaceQuality.setText("" + algorithmInfo.getQuality());
            this.mTxtFaceLight.setText("" + algorithmInfo.getBrightness());
            this.mTxtFacePitch.setText("" + algorithmInfo.getPitch());
            this.mTxtFaceYaw.setText("" + algorithmInfo.getYaw());
            this.mTxtGaussian.setText("" + algorithmInfo.getGaussian());
            this.mTxtMotion.setText("" + algorithmInfo.getMotion());
            this.mTxtIntegrity.setText("" + algorithmInfo.getIntegrity());
            this.mTxtLeftEyeOcclusion.setText("" + algorithmInfo.getLeftEyeBlinkRatio());
            this.mTxtRightEyeOcclusion.setText("" + algorithmInfo.getRightEyeBlinkRatio());
            this.mTxtDistance.setText("" + ((int) algorithmInfo.getDistance()));
            this.mTxtLiveScore.setText("" + algorithmInfo.getDeepLiveness());
            return;
        }
        this.mTxtHasFace.setText("false");
        this.mTxtFaceID.setText("-1");
        this.mTxtFaceQuality.setText(ZimPlatform.REASON_0);
        this.mTxtLiveScore.setText(ZimPlatform.REASON_0);
        this.mTxtFaceLight.setText(ZimPlatform.REASON_0);
        this.mTxtFacePitch.setText(ZimPlatform.REASON_0);
        this.mTxtFaceYaw.setText(ZimPlatform.REASON_0);
        this.mTxtGaussian.setText(ZimPlatform.REASON_0);
        this.mTxtMotion.setText(ZimPlatform.REASON_0);
        this.mTxtIntegrity.setText(ZimPlatform.REASON_0);
        this.mTxtLeftEyeOcclusion.setText(ZimPlatform.REASON_0);
        this.mTxtRightEyeOcclusion.setText(ZimPlatform.REASON_0);
        this.mTxtDistance.setText(ZimPlatform.REASON_0);
        this.mTxtRectWidth.setText(ZimPlatform.REASON_0);
    }

    public AlgorithmInfoPattern(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTxtHasFace = null;
        this.mTxtFaceID = null;
        this.mTxtFaceQuality = null;
        this.mTxtLiveScore = null;
        this.mTxtFaceLight = null;
        this.mTxtIntegrity = null;
        this.mTxtFacePitch = null;
        this.mTxtFaceYaw = null;
        this.mTxtGaussian = null;
        this.mTxtMotion = null;
        this.mTxtLeftEyeOcclusion = null;
        this.mTxtRightEyeOcclusion = null;
        this.mTxtDistance = null;
        this.mTxtRectWidth = null;
        this.mTxtVersionName = null;
        this.mTxtCode = null;
        initViews();
    }

    public AlgorithmInfoPattern(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mTxtHasFace = null;
        this.mTxtFaceID = null;
        this.mTxtFaceQuality = null;
        this.mTxtLiveScore = null;
        this.mTxtFaceLight = null;
        this.mTxtIntegrity = null;
        this.mTxtFacePitch = null;
        this.mTxtFaceYaw = null;
        this.mTxtGaussian = null;
        this.mTxtMotion = null;
        this.mTxtLeftEyeOcclusion = null;
        this.mTxtRightEyeOcclusion = null;
        this.mTxtDistance = null;
        this.mTxtRectWidth = null;
        this.mTxtVersionName = null;
        this.mTxtCode = null;
        initViews();
    }
}
