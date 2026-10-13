.class public Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;
.super Ljava/lang/Object;
.source "ZdocRecordManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBasicCheck:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPageNumber:I

.field private mStartTime:J

.field private mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ZdocRecord"

    .line 2
    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mBasicCheck:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mStartTime:J

    .line 6
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v0

    .line 7
    const-class v1, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    return-void
.end method


# virtual methods
.method public appendBasicCheck(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mBasicCheck:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destory()V
    .locals 0

    return-void
.end method

.method public record(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public recordActionPrompt(Ljava/lang/String;II)I
    .locals 1

    if-eq p2, p3, :cond_0

    .line 1
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget p2, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mPageNumber:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pageNumber"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "pageContent"

    const-string v0, "doc_incomplete"

    .line 3
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz p2, :cond_0

    const-string v0, "actionPrompt"

    .line 5
    invoke-virtual {p2, v0, p1}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return p3
.end method

.method public recordAlertAppear(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget v1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mPageNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageNumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reason"

    .line 3
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz p1, :cond_0

    const-string v1, "alertAppear"

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public recordAlertChoose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget v1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mPageNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageNumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pageContent"

    .line 3
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "clickAlert"

    .line 4
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz p1, :cond_0

    const-string p2, "alertChoose"

    .line 6
    invoke-virtual {p1, p2, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public recordAuthCheck(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "authCheckResult"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz v1, :cond_0

    const-string v2, "authCheck"

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "camera_error"

    .line 5
    invoke-virtual {p0, p1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordAlertAppear(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public recordBasicCheck()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mBasicCheck:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    iget v1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mPageNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageNumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mBasicCheck:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageContent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz v1, :cond_0

    const-string v2, "basicCheck"

    .line 6
    invoke-virtual {v1, v2, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mBasicCheck:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public recordClickButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget v1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mPageNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageNumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onPage"

    .line 3
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "clickItem"

    .line 4
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz p1, :cond_0

    const-string p2, "clickButton"

    .line 6
    invoke-virtual {p1, p2, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public recordCompressResult(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz p1, :cond_1

    const-string v1, "compressResult"

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public recordEndScan(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget v1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mPageNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageNumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "scanResult"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz p1, :cond_0

    const-string v1, "endScan"

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public recordImageSize(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    const-string p2, "ztech_zdoc_frame_size"

    invoke-virtual {p1, p2, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public recordImageUploadEnd(Lcom/alipay/mobile/security/bio/service/BioUploadResult;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    iget p1, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "rpcResultCode"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "uploadTime"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz p1, :cond_0

    const-string v1, "uploadEnd"

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public recordOverThreshold()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget v1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mPageNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageNumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz v1, :cond_0

    const-string v2, "overThreshold"

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public recordOverTime()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget v1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mPageNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageNumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "overtimeReason"

    const-string v2, "scan_overtime"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz v1, :cond_0

    const-string v2, "overtime"

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public recordStartScan()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget v1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mPageNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageNumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz v1, :cond_0

    const-string v2, "startScan"

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public recordUploadEnd(III)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget v1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mPageNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageNumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "uploadResult"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "validationResult"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "serverResult"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mStartTime:J

    sub-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "uploadTime"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz p1, :cond_0

    const-string p2, "uploadEnd"

    .line 8
    invoke-virtual {p1, p2, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public recordUploadStart(J)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mStartTime:J

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget v1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mPageNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageNumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    long-to-float p1, p1

    const/high16 p2, 0x44800000    # 1024.0f

    div-float/2addr p1, p2

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string p2, "payload"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz p1, :cond_0

    const-string p2, "uploadStart"

    .line 6
    invoke-virtual {p1, p2, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public retry()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mZdocRecordService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->retry()V

    :cond_0
    return-void
.end method

.method public updatePageNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->mPageNumber:I

    return-void
.end method
