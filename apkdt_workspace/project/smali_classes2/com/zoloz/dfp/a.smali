.class public Lcom/zoloz/dfp/a;
.super Ljava/lang/Object;
.source "DfpGenerator.java"


# static fields
.field private static e:Lcom/zoloz/dfp/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/SharedPreferences;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/zoloz/temp"

    .line 2
    iput-object v0, p0, Lcom/zoloz/dfp/a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/zoloz/dfp/a;->d:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/zoloz/dfp/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoloz/dfp/a;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/zoloz/dfp/a;
    .locals 2

    const-class v0, Lcom/zoloz/dfp/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/zoloz/dfp/a;->e:Lcom/zoloz/dfp/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/zoloz/dfp/a;

    invoke-direct {v1, p0}, Lcom/zoloz/dfp/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/zoloz/dfp/a;->e:Lcom/zoloz/dfp/a;

    .line 3
    :cond_0
    sget-object p0, Lcom/zoloz/dfp/a;->e:Lcom/zoloz/dfp/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-direct {p0, p2}, Lcom/zoloz/dfp/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "dp.xx.zzz.dd"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "dfp.value.save.key"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/zoloz/dfp/a;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dfp.value.save.key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "dp.xx.zzz.dd"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zoloz/dfp/a;->b:Landroid/content/SharedPreferences;

    .line 2
    iget-object v0, p0, Lcom/zoloz/dfp/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "dfp.value.save.key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zoloz/dfp/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    :try_start_0
    invoke-static {v1}, Lcom/zoloz/dfp/b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0, v0}, Lcom/zoloz/dfp/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/zoloz/dfp/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    iget-boolean v1, p0, Lcom/zoloz/dfp/a;->d:Z

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/zoloz/dfp/a;->a(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/zoloz/dfp/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized c()Lcom/zoloz/dfp/a;
    .locals 3

    const-class v0, Lcom/zoloz/dfp/a;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/zoloz/dfp/a;->e:Lcom/zoloz/dfp/a;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/zoloz/dfp/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/zoloz/dfp/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/zoloz/dfp/a;->e:Lcom/zoloz/dfp/a;

    .line 4
    :cond_0
    sget-object v1, Lcom/zoloz/dfp/a;->e:Lcom/zoloz/dfp/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/dfp/a;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/zoloz/dfp/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/zoloz/dfp/Signer;->sign([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 2
    iget-boolean v1, p0, Lcom/zoloz/dfp/a;->d:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encriptData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 4
    iget-boolean v1, p0, Lcom/zoloz/dfp/a;->d:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :cond_1
    return-object p1
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zoloz/dfp/Signer;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 4
    iget-boolean v0, p0, Lcom/zoloz/dfp/a;->d:Z

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deEncriDfp "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    .line 6
    iget-boolean v1, p0, Lcom/zoloz/dfp/a;->d:Z

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :cond_2
    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 10
    iget-boolean v1, p0, Lcom/zoloz/dfp/a;->d:Z

    if-eqz v1, :cond_0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-direct {p0, v0}, Lcom/zoloz/dfp/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/zoloz/dfp/a;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/zoloz/dfp/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoloz/dfp/a;->a:Ljava/lang/String;

    .line 11
    iget-boolean v0, p0, Lcom/zoloz/dfp/a;->d:Z

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generate enc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zoloz/dfp/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/zoloz/dfp/a;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zoloz/dfp/a;->b(Ljava/lang/String;)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/zoloz/dfp/a;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zoloz/dfp/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
