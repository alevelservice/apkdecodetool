.class public Le/b/b/a/a/d/a/j;
.super Le/b/b/a/a/d/a/a;
.source "MdapFileLogAppender.java"


# static fields
.field protected static final n:Ljava/lang/String;


# instance fields
.field protected i:Ljava/io/File;

.field protected j:I

.field protected k:I

.field protected l:Z

.field protected m:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/b/b/a/a/d/a/j;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Le/b/b/a/a/a/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/b/b/a/a/d/a/a;-><init>(Le/b/b/a/a/a/d;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/b/b/a/a/d/a/j;->l:Z

    .line 3
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Le/b/b/a/a/d/a/j;->m:Ljava/lang/StringBuffer;

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-string v1, "needMove"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Le/b/b/a/a/d/a/j;->a()Ljava/io/File;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Le/b/b/a/a/d/a/j;->c()Ljava/io/File;

    move-result-object v1

    invoke-static {p1, v1}, Le/b/b/a/a/e/g;->a(Ljava/io/File;Ljava/io/File;)V

    .line 9
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object p1

    const-string v1, "MdapFileAppender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " appender flush move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Le/b/b/a/a/d/a/j;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :catchall_0
    iput v0, p0, Le/b/b/a/a/d/a/j;->j:I

    :cond_1
    return-void
.end method


# virtual methods
.method protected a()Ljava/io/File;
    .locals 6

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/a/j;->i:Ljava/io/File;

    const-string v1, "_"

    const-string v2, "mdap"

    if-nez v0, :cond_1

    invoke-static {}, Le/b/b/a/a/e/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Le/b/b/a/a/d/a/b;->c:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Le/b/b/a/a/d/a/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Le/b/b/a/a/d/a/j;->i:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    .line 6
    :cond_1
    :goto_1
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentMdapFile debug: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le/b/b/a/a/d/a/j;->i:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MdapFileAppender"

    invoke-interface {v0, v4, v3}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Le/b/b/a/a/d/a/j;->i:Ljava/io/File;

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Le/b/b/a/a/d/a/b;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 11
    :catchall_2
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Le/b/b/a/a/d/a/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Le/b/b/a/a/d/a/j;->i:Ljava/io/File;

    .line 12
    :cond_3
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentMdapFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/b/b/a/a/d/a/j;->i:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Le/b/b/a/a/d/a/j;->i:Ljava/io/File;

    return-object v0
.end method

.method protected declared-synchronized a(Landroid/os/Bundle;)V
    .locals 4

    monitor-enter p0

    .line 14
    :try_start_0
    iget v0, p0, Le/b/b/a/a/d/a/j;->k:I

    if-lez v0, :cond_0

    .line 15
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    const-string v1, "MdapFileAppender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " appender flush: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Le/b/b/a/a/d/a/j;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    iget-object v0, p0, Le/b/b/a/a/d/a/j;->m:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 17
    invoke-direct {p0, p1}, Le/b/b/a/a/d/a/j;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 19
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/iap/android/aplog/core/filter/g;->b()Lcom/alipay/iap/android/aplog/core/filter/g;

    move-result-object v0

    iget-object v1, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/iap/android/aplog/core/filter/g;->b(Ljava/lang/String;)Z

    move-result v0

    .line 20
    iget-object v1, p0, Le/b/b/a/a/d/a/j;->m:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Le/b/b/a/a/d/a/f;->a(Ljava/lang/String;Z)Z

    .line 21
    iget-object v0, p0, Le/b/b/a/a/d/a/j;->m:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 22
    iget v0, p0, Le/b/b/a/a/d/a/j;->j:I

    iget v2, p0, Le/b/b/a/a/d/a/j;->k:I

    add-int/2addr v0, v2

    iput v0, p0, Le/b/b/a/a/d/a/j;->j:I

    .line 23
    iput v1, p0, Le/b/b/a/a/d/a/j;->k:I

    .line 24
    invoke-direct {p0, p1}, Le/b/b/a/a/d/a/j;->b(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "MdapFileAppender"

    .line 26
    iget v1, p0, Le/b/b/a/a/d/a/j;->j:I

    if-nez v1, :cond_0

    return-void

    .line 27
    :cond_0
    :try_start_0
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "move file form: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/b/b/a/a/d/a/j;->a()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/b/b/a/a/d/a/j;->c()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Le/b/b/a/a/d/a/j;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Le/b/b/a/a/d/a/j;->c()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Le/b/b/a/a/e/g;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 29
    :try_start_1
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    .line 30
    iput v1, p0, Le/b/b/a/a/d/a/j;->j:I

    .line 31
    iget-object v1, p0, Le/b/b/a/a/d/a/b;->a:Le/b/b/a/a/a/d;

    iget-object v2, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Le/b/b/a/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 32
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object p2

    iget-object v1, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    invoke-interface {p2, v0, v1, p1}, Le/b/b/a/a/d/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method protected declared-synchronized b()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "needMove"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {p0, v0}, Le/b/b/a/a/d/a/j;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 11
    :try_start_0
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    const-string v1, "MdapFileAppender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write log: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-boolean v0, p0, Le/b/b/a/a/d/a/j;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    const-string v2, "MdapFileAppender"

    const-string v3, " isFirstAppend "

    invoke-interface {v0, v2, v3}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-boolean v1, p0, Le/b/b/a/a/d/a/j;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    invoke-virtual {p0}, Le/b/b/a/a/d/a/j;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Le/b/b/a/a/e/g;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\\$\\$"

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Le/b/b/a/a/d/a/j;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 18
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " first append: [just check, not a real error] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Le/b/b/a/a/d/a/j;->m:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    iget p1, p0, Le/b/b/a/a/d/a/j;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/b/b/a/a/d/a/j;->k:I

    .line 21
    invoke-static {}, Le/b/b/a/a/d/i;->b()Le/b/b/a/a/a/f;

    move-result-object p1

    invoke-interface {p1}, Le/b/b/a/a/a/f;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Le/b/b/a/a/d/f/a;->f:Z

    if-nez p1, :cond_1

    iget p1, p0, Le/b/b/a/a/d/a/j;->k:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 22
    invoke-static {}, Le/b/b/a/a/e/j;->b()Z

    move-result p1

    if-nez p1, :cond_1

    .line 23
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    invoke-interface {p1}, Le/b/b/a/a/a/d;->p()Lcom/alipay/iap/android/aplog/core/filter/a;

    move-result-object p1

    iget-object v0, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    iget v2, p0, Le/b/b/a/a/d/a/j;->k:I

    invoke-interface {p1, v0, v2}, Lcom/alipay/iap/android/aplog/core/filter/a;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 24
    :cond_1
    invoke-static {}, Lcom/alipay/iap/android/aplog/core/filter/g;->b()Lcom/alipay/iap/android/aplog/core/filter/g;

    move-result-object p1

    iget-object v0, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/iap/android/aplog/core/filter/g;->b(Ljava/lang/String;)Z

    move-result p1

    .line 25
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    const-string v2, "MdapFileAppender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEncrypt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Le/b/b/a/a/d/a/j;->m:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Le/b/b/a/a/d/a/f;->a(Ljava/lang/String;Z)Z

    .line 27
    iget p1, p0, Le/b/b/a/a/d/a/j;->j:I

    iget v0, p0, Le/b/b/a/a/d/a/j;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Le/b/b/a/a/d/a/j;->j:I

    .line 28
    iget-object p1, p0, Le/b/b/a/a/d/a/j;->m:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 29
    iput v1, p0, Le/b/b/a/a/d/a/j;->k:I

    .line 30
    :cond_2
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    invoke-interface {p1}, Le/b/b/a/a/a/d;->p()Lcom/alipay/iap/android/aplog/core/filter/a;

    move-result-object p1

    iget-object v0, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    iget v2, p0, Le/b/b/a/a/d/a/j;->j:I

    invoke-interface {p1, v0, v2}, Lcom/alipay/iap/android/aplog/core/filter/a;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "upload: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "event"

    const-string v2, "maxLogCount"

    .line 33
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0, p1}, Le/b/b/a/a/d/a/j;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 35
    iput v1, p0, Le/b/b/a/a/d/a/j;->j:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    :cond_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected c()Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/a/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    sget-object v2, Le/b/b/a/a/d/a/j;->n:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/b/b/a/a/d/a/j;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Le/b/b/a/a/e/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file to upload: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MdapFileAppender"

    invoke-interface {v0, v3, v1}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
