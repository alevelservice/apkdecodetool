.class public Le/b/b/a/a/d/h/f;
.super Ljava/lang/Object;
.source "UploadManager.java"


# static fields
.field public static final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static e:I

.field private static f:Le/b/b/a/a/d/h/f;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/io/File;

.field private c:Lcom/alipay/iap/android/aplog/core/filter/ConfigChangeBroadCastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/b/b/a/a/d/h/g;

    invoke-direct {v0}, Le/b/b/a/a/d/h/g;-><init>()V

    sput-object v0, Le/b/b/a/a/d/h/f;->d:Ljava/util/Comparator;

    const/high16 v0, 0xa00000

    .line 2
    sput v0, Le/b/b/a/a/d/h/f;->e:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/b/b/a/a/d/h/f;->a:Landroid/content/Context;

    .line 3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/mdap/upload/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Le/b/b/a/a/d/h/f;->b:Ljava/io/File;

    .line 4
    iget-object p1, p0, Le/b/b/a/a/d/h/f;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Le/b/b/a/a/d/h/f;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_0
    invoke-direct {p0}, Le/b/b/a/a/d/h/f;->c()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Le/b/b/a/a/d/h/f;
    .locals 1

    .line 1
    sget-object v0, Le/b/b/a/a/d/h/f;->f:Le/b/b/a/a/d/h/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/b/b/a/a/d/h/f;

    invoke-direct {v0, p0}, Le/b/b/a/a/d/h/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Le/b/b/a/a/d/h/f;->f:Le/b/b/a/a/d/h/f;

    .line 3
    :cond_0
    sget-object p0, Le/b/b/a/a/d/h/f;->f:Le/b/b/a/a/d/h/f;

    return-object p0
.end method

.method public static b()Le/b/b/a/a/d/h/f;
    .locals 1

    .line 1
    sget-object v0, Le/b/b/a/a/d/h/f;->f:Le/b/b/a/a/d/h/f;

    return-object v0
.end method

.method private c()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.alipay.mobile.client.multi.CONFIG_CHANGE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/alipay/iap/android/aplog/core/filter/ConfigChangeBroadCastReceiver;

    invoke-direct {v1}, Lcom/alipay/iap/android/aplog/core/filter/ConfigChangeBroadCastReceiver;-><init>()V

    iput-object v1, p0, Le/b/b/a/a/d/h/f;->c:Lcom/alipay/iap/android/aplog/core/filter/ConfigChangeBroadCastReceiver;

    .line 4
    iget-object v1, p0, Le/b/b/a/a/d/h/f;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Le/b/b/a/a/d/h/f;->c:Lcom/alipay/iap/android/aplog/core/filter/ConfigChangeBroadCastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    const-string v0, "mdap"

    .line 5
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Le/b/b/a/a/d/h/f;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/mdap/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Le/b/b/a/a/e/j;->b()Z

    move-result v2

    const-string v3, "UploadManager"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 7
    :try_start_0
    iget-object v2, p0, Le/b/b/a/a/d/h/f;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 8
    new-instance v2, Ljava/io/File;

    const-string v5, "upload"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    move-object v4, v2

    goto :goto_1

    :catchall_0
    move-exception v4

    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    goto :goto_0

    :catchall_1
    move-exception v2

    .line 11
    :goto_0
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncLog backupFileDir: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v3, v2}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :goto_1
    :try_start_2
    iget-object v2, p0, Le/b/b/a/a/d/h/f;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 15
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncLog logFileDir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    if-nez v1, :cond_2

    return-void

    .line 16
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 17
    :cond_3
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncLog: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    array-length v1, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_6

    aget-object v5, v0, v2

    if-eqz v5, :cond_5

    .line 19
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v6, :cond_5

    .line 20
    :try_start_4
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-static {v6}, Le/b/b/a/a/e/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 22
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Le/b/b/a/a/d/h/f;->b:Ljava/io/File;

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Le/b/b/a/a/e/j;->b()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v4, :cond_4

    .line 24
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    invoke-static {v5, v8}, Le/b/b/a/a/e/g;->b(Ljava/io/File;Ljava/io/File;)V

    .line 26
    :cond_4
    invoke-static {v5, v7}, Le/b/b/a/a/e/g;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v6

    .line 27
    :try_start_5
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", syncLog: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v3, v5}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catchall_4
    move-exception v0

    .line 28
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncLog, move fail: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 4
    sput p1, Le/b/b/a/a/d/h/f;->e:I

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    monitor-enter p0

    .line 29
    :try_start_0
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    invoke-interface {v0}, Le/b/b/a/a/a/d;->t()Le/b/b/a/a/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    invoke-interface {v0}, Le/b/b/a/a/a/d;->t()Le/b/b/a/a/a/g;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Le/b/b/a/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v0

    const-string v1, "UploadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http upload logCategory = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uploadFileDir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/b/b/a/a/d/h/f;->b:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Le/b/b/a/a/d/h/b;

    iget-object v1, p0, Le/b/b/a/a/d/h/f;->b:Ljava/io/File;

    iget-object v2, p0, Le/b/b/a/a/d/h/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Le/b/b/a/a/d/h/b;-><init>(Ljava/io/File;Landroid/content/Context;)V

    .line 33
    invoke-virtual {v0, p1, p2, p3}, Le/b/b/a/a/d/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
