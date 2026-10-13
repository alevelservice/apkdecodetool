.class public Le/b/b/a/a/e/h;
.super Ljava/lang/Object;
.source "HybridEncryption.java"


# static fields
.field private static g:Le/b/b/a/a/e/h;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:[B

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Le/b/b/a/a/e/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Le/b/b/a/a/e/m;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/util/Base64;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Le/b/b/a/a/e/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Le/b/b/a/a/e/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Le/b/b/a/a/e/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/b/b/a/a/e/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Le/b/b/a/a/e/h;
    .locals 2

    const-class v0, Le/b/b/a/a/e/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/b/b/a/a/e/h;->g:Le/b/b/a/a/e/h;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Le/b/b/a/a/e/h;

    invoke-direct {v1, p0}, Le/b/b/a/a/e/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Le/b/b/a/a/e/h;->g:Le/b/b/a/a/e/h;

    .line 3
    :cond_0
    sget-object p0, Le/b/b/a/a/e/h;->g:Le/b/b/a/a/e/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b()Le/b/b/a/a/e/h;
    .locals 2

    .line 1
    sget-object v0, Le/b/b/a/a/e/h;->g:Le/b/b/a/a/e/h;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "setting.logging.encryption.pubkey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 4
    iget-object v0, p0, Le/b/b/a/a/e/h;->c:[B

    return-object v0
.end method

.method public a([BII)[B
    .locals 5

    .line 5
    iget-object v0, p0, Le/b/b/a/a/e/h;->b:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/b/b/a/a/e/h;->c:[B

    if-nez v0, :cond_3

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 7
    iget-boolean v0, p0, Le/b/b/a/a/e/h;->d:Z

    if-nez v0, :cond_1

    .line 8
    iput-boolean v1, p0, Le/b/b/a/a/e/h;->d:Z

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 9
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 10
    :cond_2
    invoke-static {v0}, Le/b/b/a/a/e/a;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Le/b/b/a/a/e/h;->b:[B

    .line 11
    iget-object v0, p0, Le/b/b/a/a/e/h;->b:[B

    iget-object v3, p0, Le/b/b/a/a/e/h;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Le/b/b/a/a/e/m;->a([BLjava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Le/b/b/a/a/e/h;->c:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    .line 12
    iget-boolean v0, p0, Le/b/b/a/a/e/h;->e:Z

    if-nez v0, :cond_3

    .line 13
    iput-boolean v1, p0, Le/b/b/a/a/e/h;->e:Z

    .line 14
    :cond_3
    :goto_1
    iget-object v0, p0, Le/b/b/a/a/e/h;->b:[B

    if-eqz v0, :cond_5

    iget-object v3, p0, Le/b/b/a/a/e/h;->c:[B

    if-nez v3, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    :try_start_2
    invoke-static {v0, p1, p2, p3}, Le/b/b/a/a/e/a;->a([B[BII)[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object p1

    .line 16
    :catchall_2
    iget-boolean p1, p0, Le/b/b/a/a/e/h;->f:Z

    if-nez p1, :cond_5

    .line 17
    iput-boolean v1, p0, Le/b/b/a/a/e/h;->f:Z

    :cond_5
    :goto_2
    return-object v2
.end method
