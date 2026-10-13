.class public Lcom/zoloz/webcontainer/l/a;
.super Ljava/lang/Object;
.source "H5OfflineManager.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field e:Ljava/util/concurrent/CountDownLatch;

.field private f:I

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/config/ekyc_web"

    .line 2
    iput-object v0, p0, Lcom/zoloz/webcontainer/l/a;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/zoloz/webcontainer/l/a;->d:Z

    .line 4
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/zoloz/webcontainer/l/a;->e:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static synthetic a(Lcom/zoloz/webcontainer/l/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/zoloz/webcontainer/l/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/zoloz/webcontainer/l/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/zoloz/webcontainer/l/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/zoloz/webcontainer/l/a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/zoloz/webcontainer/l/a;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/zoloz/webcontainer/l/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/zoloz/webcontainer/l/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string v0, "H5OfflineManager"

    const-string v1, "fileName"

    .line 4
    invoke-static {v0, v1}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic c(Lcom/zoloz/webcontainer/l/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/zoloz/webcontainer/l/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/zoloz/webcontainer/l/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/zoloz/webcontainer/l/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/zoloz/webcontainer/l/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/zoloz/webcontainer/l/a;->f:I

    return p0
.end method

.method static synthetic f(Lcom/zoloz/webcontainer/l/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/zoloz/webcontainer/l/a;->g:Z

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/zoloz/webcontainer/l/a;->a()Z

    move-result v1

    const-string v2, "H5OfflineManager"

    if-eqz v1, :cond_2

    .line 13
    invoke-direct {p0, p1}, Lcom/zoloz/webcontainer/l/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zoloz/webcontainer/l/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {v3}, Lcom/zoloz/webcontainer/p/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error local zip don\'t exist this page "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zoloz/webcontainer/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string p1, "don\'t run offline"

    .line 19
    invoke-static {v2, p1}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/zoloz/webcontainer/l/a;->f:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/zoloz/webcontainer/l/a;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/zoloz/webcontainer/l/a;->d:Z

    if-nez v0, :cond_1

    const-string p1, "H5OfflineManager"

    const-string v0, "isConfigOK is false from ekyc init config"

    .line 6
    invoke-static {p1, v0}, Lcom/zoloz/webcontainer/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/zoloz/webcontainer/l/a;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/zoloz/webcontainer/l/a;->g:Z

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/zoloz/webcontainer/l/a;->e:Ljava/util/concurrent/CountDownLatch;

    .line 10
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zoloz/webcontainer/l/b;

    invoke-direct {v1, p0, p1}, Lcom/zoloz/webcontainer/l/b;-><init>(Lcom/zoloz/webcontainer/l/a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/zoloz/webcontainer/l/a;->d:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/zoloz/webcontainer/l/a;->g:Z

    return-void
.end method
