.class public Lcom/alipay/zoloz/toyger/doc/ToygerDocService;
.super Lcom/alipay/zoloz/toyger/ToygerService;
.source "ToygerDocService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/zoloz/toyger/ToygerService<",
        "Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;",
        "Lcom/alipay/zoloz/toyger/doc/ToygerDocState;",
        "Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;",
        "Lcom/alipay/zoloz/toyger/doc/ToygerDocInfo;",
        "Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final IMAGE_CONTENT_LENGTH:Ljava/lang/String; = "image_content_length"

.field public static final KEY:Ljava/lang/String; = "key"

.field private static model:[B


# instance fields
.field private blobManager:Lcom/alipay/zoloz/toyger/doc/DocBlobManager;

.field private mBlobConfig:Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;

.field private mOriginalPicSize:J

.field private mProcessThread:Landroid/os/HandlerThread;

.field private mProcessThreadHandler:Landroid/os/Handler;

.field private mPubkey:Ljava/lang/String;

.field private mRect:Landroid/graphics/Rect;

.field private mRotateTimes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/alipay/zoloz/toyger/ToygerService;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mPubkey:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->model:[B

    return-object v0
.end method

.method static synthetic access$002([B)[B
    .locals 0

    .line 1
    sput-object p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->model:[B

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/zoloz/toyger/doc/ToygerDocService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mRotateTimes:I

    return p0
.end method

.method static synthetic access$200(Lcom/alipay/zoloz/toyger/doc/ToygerDocService;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/zoloz/toyger/doc/ToygerDocService;)Lcom/alipay/zoloz/toyger/ToygerCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/zoloz/toyger/ToygerService;->mToygerCallback:Lcom/alipay/zoloz/toyger/ToygerCallback;

    return-object p0
.end method

.method public static generateDocBlob(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;Landroid/graphics/Rect;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/zoloz/toyger/algorithm/TGFrame;",
            "Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "com.alipay.zoloz.toyger.doc.DocBlobManagerJson"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v5

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;

    .line 5
    invoke-virtual {v0, p2}, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->setCropRect(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v3, Lcom/alipay/zoloz/toyger/doc/ToygerDocInfo;

    new-instance v4, Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;

    invoke-direct {v4}, Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/alipay/zoloz/toyger/doc/ToygerDocInfo;-><init>(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v0, p2, v1}, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->generateBlob(Ljava/util/List;Ljava/util/Map;)[B

    move-result-object p2

    .line 9
    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->getKey()[B

    move-result-object v1

    .line 10
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string v4, "content"

    .line 11
    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "key"

    .line 12
    invoke-virtual {v3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "isUTF8"

    invoke-virtual {v3, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget p1, p1, Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;->pageNo:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pageNumber"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B

    array-length p0, p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "preCompressSize"

    invoke-virtual {v3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->getPicSize()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "postCompressSize"

    invoke-virtual {v3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :catchall_0
    return-object v1
.end method

.method private static load(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "toyger.doc.dat"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    sput-object v1, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->model:[B

    .line 3
    sget-object v1, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->model:[B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    sget-object p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->model:[B

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static preLoad(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->model:[B

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->load(Landroid/content/Context;)Z

    move-result p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ToygerDocService.preLoad() : bRet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return p0
.end method


# virtual methods
.method public config(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mProcessThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$4;

    invoke-direct {v1, p0, p1, p0}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$4;-><init>(Lcom/alipay/zoloz/toyger/doc/ToygerDocService;Ljava/lang/String;Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2
    iget-object p1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->blobManager:Lcom/alipay/zoloz/toyger/doc/DocBlobManager;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mPubkey:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mBlobConfig:Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;

    .line 4
    iget-object p1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->blobManager:Lcom/alipay/zoloz/toyger/doc/DocBlobManager;

    iget-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mBlobConfig:Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;

    invoke-virtual {p1, p2}, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->setBlobConfig(Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;)V

    :cond_0
    return-void
.end method

.method public handleCaptureCompleted(ILjava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/alipay/zoloz/toyger/doc/ToygerDocInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic handleInfoReady(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/ToygerAttr;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->handleInfoReady(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;)V

    return-void
.end method

.method public handleInfoReady(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;)V
    .locals 0

    return-void
.end method

.method public handleScanCompleted(ILjava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/alipay/zoloz/toyger/doc/ToygerDocInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->blobManager:Lcom/alipay/zoloz/toyger/doc/DocBlobManager;

    invoke-virtual {v0, p2, p3}, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->generateBlob(Ljava/util/List;Ljava/util/Map;)[B

    move-result-object p2

    .line 2
    iget-object p3, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->blobManager:Lcom/alipay/zoloz/toyger/doc/DocBlobManager;

    invoke-virtual {p3}, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->getKey()[B

    move-result-object p3

    .line 3
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/ToygerService;->mToygerCallback:Lcom/alipay/zoloz/toyger/ToygerCallback;

    check-cast v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;

    iget-object v1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->blobManager:Lcom/alipay/zoloz/toyger/doc/DocBlobManager;

    invoke-virtual {v1}, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->isUTF8()Z

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/alipay/zoloz/toyger/ToygerCallback;->onComplete(I[B[BZ)Z

    .line 4
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    iget-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mBlobConfig:Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;

    iget p2, p2, Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;->pageNo:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "pageNumber"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-wide p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mOriginalPicSize:J

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "preCompressSize"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->blobManager:Lcom/alipay/zoloz/toyger/doc/DocBlobManager;

    invoke-virtual {p2}, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->getPicSize()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "postCompressSize"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p2, p0, Lcom/alipay/zoloz/toyger/ToygerService;->mToygerCallback:Lcom/alipay/zoloz/toyger/ToygerCallback;

    check-cast p2, Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;

    const/4 p3, -0x7

    invoke-interface {p2, p3, p1}, Lcom/alipay/zoloz/toyger/ToygerCallback;->onEvent(ILjava/util/Map;)Z

    return-void
.end method

.method public bridge synthetic handleStateUpdated(Lcom/alipay/zoloz/toyger/ToygerState;Lcom/alipay/zoloz/toyger/ToygerAttr;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/alipay/zoloz/toyger/doc/ToygerDocState;

    check-cast p2, Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->handleStateUpdated(Lcom/alipay/zoloz/toyger/doc/ToygerDocState;Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;)V

    return-void
.end method

.method public handleStateUpdated(Lcom/alipay/zoloz/toyger/doc/ToygerDocState;Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;)V
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/alipay/zoloz/toyger/ToygerService;->mToygerCallback:Lcom/alipay/zoloz/toyger/ToygerCallback;

    check-cast p2, Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, v0}, Lcom/alipay/zoloz/toyger/ToygerCallback;->onStateUpdated(Lcom/alipay/zoloz/toyger/ToygerState;Lcom/alipay/zoloz/toyger/ToygerAttr;Ljava/util/Map;)Z

    return-void
.end method

.method public bridge synthetic init(Landroid/content/Context;Lcom/alipay/zoloz/toyger/ToygerCallback;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;

    invoke-virtual/range {p0 .. p5}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->init(Landroid/content/Context;Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public init(Landroid/content/Context;Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 2
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/ToygerService;->mToygerCallback:Lcom/alipay/zoloz/toyger/ToygerCallback;

    .line 3
    sget-object p2, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->model:[B

    if-nez p2, :cond_0

    .line 4
    invoke-static {p1}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->load(Landroid/content/Context;)Z

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mProcessThread:Landroid/os/HandlerThread;

    if-nez p2, :cond_1

    .line 6
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "ToygerProcessQueue"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mProcessThread:Landroid/os/HandlerThread;

    .line 7
    iget-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mProcessThreadHandler:Landroid/os/Handler;

    if-nez p2, :cond_2

    .line 9
    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mProcessThreadHandler:Landroid/os/Handler;

    :cond_2
    if-eqz p5, :cond_3

    const-string p2, "pubkey"

    .line 10
    invoke-interface {p5, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mPubkey:Ljava/lang/String;

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mPubkey:Ljava/lang/String;

    invoke-static {p4, p2}, Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mBlobConfig:Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;

    .line 13
    iget-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mBlobConfig:Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;

    const/4 p4, 0x0

    if-nez p2, :cond_4

    return p4

    :cond_4
    const/4 p2, 0x2

    if-eqz p5, :cond_5

    const-string v0, "meta_serializer"

    .line 14
    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    :goto_0
    if-eqz p5, :cond_6

    const-string v1, "docFrameRect"

    .line 16
    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 17
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mRect:Landroid/graphics/Rect;

    .line 18
    :cond_6
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mRect:Landroid/graphics/Rect;

    if-nez v1, :cond_7

    return p4

    :cond_7
    if-eqz p5, :cond_8

    const-string v1, "rotateTimes"

    .line 19
    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 20
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    iput p5, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mRotateTimes:I

    :cond_8
    if-eq v0, p2, :cond_9

    const-string p2, "com.alipay.zoloz.toyger.doc.DocBlobManagerJson"

    goto :goto_1

    :cond_9
    const-string p2, "com.alipay.zoloz.toyger.doc.DocBlobManagerPb"

    .line 21
    :goto_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const/4 p5, 0x1

    new-array v0, p5, [Ljava/lang/Class;

    .line 22
    const-class v1, Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;

    aput-object v1, v0, p4

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 23
    invoke-virtual {p2, p5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v0, p5, [Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mBlobConfig:Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;

    aput-object v1, v0, p4

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;

    iput-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->blobManager:Lcom/alipay/zoloz/toyger/doc/DocBlobManager;

    .line 25
    iget-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->blobManager:Lcom/alipay/zoloz/toyger/doc/DocBlobManager;

    iget-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->setCropRect(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object p2, p0, Lcom/alipay/zoloz/toyger/ToygerService;->mToygerCallback:Lcom/alipay/zoloz/toyger/ToygerCallback;

    move-object v7, p2

    check-cast v7, Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;

    .line 27
    iget-object v5, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mRect:Landroid/graphics/Rect;

    .line 28
    iget v4, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mRotateTimes:I

    .line 29
    iget-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mProcessThreadHandler:Landroid/os/Handler;

    new-instance p4, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;-><init>(Lcom/alipay/zoloz/toyger/doc/ToygerDocService;Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/Rect;Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;)V

    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return p5

    :catchall_0
    return p4
.end method

.method public processImage(Ljava/util/List;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/zoloz/toyger/algorithm/TGFrame;",
            ">;",
            "Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;",
            ")Z"
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    .line 3
    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->deepCopy()Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mOriginalPicSize:J

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mProcessThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$3;

    invoke-direct {v0, p0, p2}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$3;-><init>(Lcom/alipay/zoloz/toyger/doc/ToygerDocService;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mProcessThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$2;

    invoke-direct {v2, p0, v0}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$2;-><init>(Lcom/alipay/zoloz/toyger/doc/ToygerDocService;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 6
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mProcessThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mProcessThread:Landroid/os/HandlerThread;

    .line 11
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mProcessThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->mProcessThreadHandler:Landroid/os/Handler;

    .line 13
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/ToygerService;->mToygerCallback:Lcom/alipay/zoloz/toyger/ToygerCallback;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    :goto_2
    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/alipay/zoloz/toyger/algorithm/Toyger;->reset()V

    return-void
.end method
