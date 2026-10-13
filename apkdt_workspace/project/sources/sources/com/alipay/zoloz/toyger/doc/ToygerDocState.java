package com.alipay.zoloz.toyger.doc;

import com.alipay.zoloz.toyger.ToygerState;
import com.alipay.zoloz.toyger.algorithm.TGDocState;

/* loaded from: classes.dex */
public class ToygerDocState extends TGDocState implements ToygerState {
    public ToygerDocState() {
    }

    @Override // com.alipay.zoloz.toyger.ToygerState
    public int brightness() {
        return 0;
    }

    @Override // com.alipay.zoloz.toyger.ToygerState
    public int distance() {
        return 0;
    }

    @Override // com.alipay.zoloz.toyger.ToygerState
    public int getMessageCode() {
        return 0;
    }

    @Override // com.alipay.zoloz.toyger.ToygerState
    public float getProgress() {
        return 0.0f;
    }

    @Override // com.alipay.zoloz.toyger.ToygerState
    public int getStaticMessage() {
        return 0;
    }

    @Override // com.alipay.zoloz.toyger.ToygerState
    public boolean hasTarget() {
        return false;
    }

    @Override // com.alipay.zoloz.toyger.ToygerState
    public boolean isGoodQuality() {
        return false;
    }

    @Override // com.alipay.zoloz.toyger.ToygerState
    public boolean isInCenter() {
        return false;
    }

    @Override // com.alipay.zoloz.toyger.ToygerState
    public boolean isMoving() {
        return false;
    }

    public ToygerDocState(TGDocState tGDocState) {
        this.hasDoc = tGDocState.hasDoc;
        this.isCompleted = tGDocState.isCompleted;
        this.isReflected = tGDocState.isReflected;
        this.isBlur = tGDocState.isBlur;
        this.isCopy = tGDocState.isCopy;
    }
}
