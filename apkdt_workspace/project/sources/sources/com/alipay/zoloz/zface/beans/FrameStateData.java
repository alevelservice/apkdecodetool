package com.alipay.zoloz.zface.beans;

import com.alipay.zoloz.toyger.algorithm.TGFaceState;
import com.alipay.zoloz.toyger.face.ToygerFaceAttr;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class FrameStateData {
    public ToygerFaceAttr attr;
    public int uiDesState = 0;
    public TGFaceState tgFaceState = new TGFaceState();
    public Map extMap = new HashMap();

    public String toString() {
        return "FrameStateData{uiDesState=" + this.uiDesState + ", attr=" + this.attr + ", extMap=" + this.extMap + '}';
    }
}
