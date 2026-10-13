.class public Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;
.super Ljava/lang/Object;
.source "GenericBlobManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TOYGER"

.field public static final TYPE_DOC:Ljava/lang/String; = "doc"

.field public static final TYPE_FACE:Ljava/lang/String; = "face"


# instance fields
.field private blobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerInterface;

.field private mHasOom:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->mHasOom:Z

    const-string v1, "com.alipay.zoloz.toyger.blob.GenericBlobManagerJSON"

    .line 3
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 4
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    aput-object p2, v2, v5

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerInterface;

    iput-object p1, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->blobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public addMonitorFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->mHasOom:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->blobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerInterface;

    invoke-interface {v0, p1}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerInterface;->addMonitorFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->mHasOom:Z

    .line 4
    iget-object p1, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->blobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerInterface;

    invoke-interface {p1}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerInterface;->cleanAllData()V

    :goto_0
    return-void
.end method

.method public generateMonitorBlob()[B
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->blobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerInterface;

    invoke-interface {v0}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerInterface;->generateMonitorBlob()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->blobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerInterface;

    invoke-interface {v0}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerInterface;->cleanAllData()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->blobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerInterface;

    invoke-interface {v0}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerInterface;->getKey()[B

    move-result-object v0

    return-object v0
.end method

.method public isUTF8()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->blobManager:Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerInterface;

    invoke-interface {v0}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerInterface;->isUTF8()Z

    move-result v0

    return v0
.end method
