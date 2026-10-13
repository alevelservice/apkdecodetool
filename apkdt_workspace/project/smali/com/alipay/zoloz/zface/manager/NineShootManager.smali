.class public Lcom/alipay/zoloz/zface/manager/NineShootManager;
.super Ljava/lang/Object;
.source "NineShootManager.java"


# instance fields
.field private count:I

.field private isFullRequirement:Z

.field private mFaceRemoteProtocol:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

.field private mGenericBlobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;

.field private mMainHandler:Landroid/os/Handler;

.field private recordFrame:Z


# direct methods
.method public constructor <init>(Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->isFullRequirement:Z

    .line 3
    iput v0, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->count:I

    .line 4
    iput-object p1, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->mFaceRemoteProtocol:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->mMainHandler:Landroid/os/Handler;

    .line 6
    new-instance p1, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;

    const-string v0, "face"

    invoke-direct {p1, v0, p2}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->mGenericBlobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;

    return-void
.end method

.method static synthetic access$002(Lcom/alipay/zoloz/zface/manager/NineShootManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->recordFrame:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/zoloz/zface/manager/NineShootManager;)Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->mGenericBlobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alipay/zoloz/zface/manager/NineShootManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->count:I

    return p0
.end method

.method static synthetic access$208(Lcom/alipay/zoloz/zface/manager/NineShootManager;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->count:I

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->mFaceRemoteProtocol:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->isFullRequirement:Z

    .line 3
    iput v0, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->count:I

    return-void
.end method

.method public getUploadContent()Lcom/alipay/zoloz/toyger/upload/UploadContent;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->mGenericBlobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->generateMonitorBlob()[B

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    new-instance v1, Lcom/alipay/zoloz/toyger/upload/UploadContent;

    iget-object v2, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->mGenericBlobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;

    invoke-virtual {v2}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->getKey()[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->mGenericBlobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;

    invoke-virtual {v3}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->isUTF8()Z

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/alipay/zoloz/toyger/upload/UploadContent;-><init>([B[BZ)V

    return-object v1
.end method

.method public isNeedUpload()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->mFaceRemoteProtocol:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getUploadMonitorPic()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public shootToygerFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->mFaceRemoteProtocol:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getUploadMonitorPic()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->isFullRequirement:Z

    if-nez v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->recordFrame:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->recordFrame:Z

    .line 5
    iget-object v0, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/zoloz/zface/manager/NineShootManager$1;

    invoke-direct {v2, p0}, Lcom/alipay/zoloz/zface/manager/NineShootManager$1;-><init>(Lcom/alipay/zoloz/zface/manager/NineShootManager;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    iget v0, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->count:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    .line 7
    iput-boolean v1, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager;->isFullRequirement:Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->deepCopy()Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/zoloz/zface/manager/NineShootManager$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/alipay/zoloz/zface/manager/NineShootManager$2;-><init>(Lcom/alipay/zoloz/zface/manager/NineShootManager;Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V

    const-string p1, "shootToygerFrame"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method
