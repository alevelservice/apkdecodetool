.class public Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;
.super Ljava/lang/Object;
.source "DocMonitorFrameManager.java"


# instance fields
.field private mCurrentFrameNumber:I

.field private mGenericBlobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;

.field private mTimer:Ljava/util/Timer;

.field private mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

.field private n:I


# direct methods
.method public constructor <init>(Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->n:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mCurrentFrameNumber:I

    .line 4
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    .line 5
    new-instance p1, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;

    const-string v0, "doc"

    invoke-direct {p1, v0, p2}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mGenericBlobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;

    return-void
.end method

.method static synthetic access$000(Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mCurrentFrameNumber:I

    return p0
.end method

.method static synthetic access$100(Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;)Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    return-object p0
.end method

.method private cancelTimer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private isValidateTGFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I

    if-lez v1, :cond_2

    iget p1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public addMonitorFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mGenericBlobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->isValidateTGFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mGenericBlobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;

    invoke-virtual {v0, p1}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->addMonitorFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mCurrentFrameNumber:I

    .line 2
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->cancelTimer()V

    return-void
.end method

.method public getKey()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mGenericBlobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->getKey()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMonitorBlob()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mGenericBlobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->generateMonitorBlob()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isUTF8()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mGenericBlobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->isUTF8()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetCurrentFrameNummer()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mCurrentFrameNumber:I

    return-void
.end method

.method public setTimerTask(Lcom/zoloz/android/phone/zdoc/service/IMonitorCallback;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mTimer:Ljava/util/Timer;

    .line 2
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager$1;

    invoke-direct {v2, p0, p1}, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager$1;-><init>(Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;Lcom/zoloz/android/phone/zdoc/service/IMonitorCallback;)V

    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    .line 3
    invoke-virtual {p1}, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->getMonitorCaptureInterval()I

    move-result p1

    int-to-long v5, p1

    const-wide/16 v3, 0x0

    .line 4
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public updateCurrentFrameNumber()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mCurrentFrameNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->mCurrentFrameNumber:I

    return-void
.end method
