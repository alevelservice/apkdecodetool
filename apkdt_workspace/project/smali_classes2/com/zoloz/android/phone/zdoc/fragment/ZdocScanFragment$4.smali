.class Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;
.super Ljava/lang/Object;
.source "ZdocScanFragment.java"

# interfaces
.implements Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;


# instance fields
.field final synthetic this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;


# direct methods
.method constructor <init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlignDepthPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onComplete(I[B[BZ)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    invoke-static {p1}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->access$200(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->access$202(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;Z)Z

    .line 3
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    iget-object p1, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    invoke-virtual {p1, v1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordEndScan(Z)V

    .line 4
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    iput-object p2, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mContent:[B

    .line 5
    iput-object p3, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mKey:[B

    .line 6
    iput-boolean p4, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mIsUTF8:Z

    .line 7
    invoke-static {p1}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->access$000(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    invoke-static {p1}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->access$000(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->stop()V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    new-instance p2, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4$1;

    invoke-direct {p2, p0}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4$1;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;)V

    invoke-virtual {p1, p2}, Lcom/zoloz/android/phone/zdoc/fragment/BaseFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    return v0
.end method

.method public onEvent(ILjava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zdoc onEvent eventCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, -0x7

    if-eq p1, v0, :cond_1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_0

    const/4 p2, -0x5

    if-eq p1, p2, :cond_0

    const/4 p2, -0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    invoke-virtual {p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->alertSystemError()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    iget-object p1, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    invoke-virtual {p1, p2}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordCompressResult(Ljava/util/Map;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onHighQualityFrame(Landroid/graphics/Bitmap;Lcom/alipay/zoloz/toyger/ToygerAttr;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;

    invoke-virtual {p0, p1, p2}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;->onHighQualityFrame(Landroid/graphics/Bitmap;Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;)Z

    move-result p1

    return p1
.end method

.method public onHighQualityFrame(Landroid/graphics/Bitmap;Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onStateUpdated(Lcom/alipay/zoloz/toyger/ToygerState;Lcom/alipay/zoloz/toyger/ToygerAttr;Ljava/util/Map;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/alipay/zoloz/toyger/doc/ToygerDocState;

    check-cast p2, Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;->onStateUpdated(Lcom/alipay/zoloz/toyger/doc/ToygerDocState;Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public onStateUpdated(Lcom/alipay/zoloz/toyger/doc/ToygerDocState;Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/zoloz/toyger/doc/ToygerDocState;",
            "Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    invoke-static {p2}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->access$200(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return p3

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    invoke-static {p2, p1}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->access$300(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;Lcom/alipay/zoloz/toyger/doc/ToygerDocState;)V

    return p3
.end method
