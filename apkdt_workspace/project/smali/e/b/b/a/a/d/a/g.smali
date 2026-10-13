.class public Le/b/b/a/a/d/a/g;
.super Le/b/b/a/a/d/a/a;
.source "LogFileLogAppender.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final s:I = 0x2

.field protected static final t:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected i:Ljava/lang/StringBuilder;

.field protected j:I

.field protected k:Z

.field protected l:Ljava/io/File;

.field protected m:J

.field protected n:Ljava/io/File;

.field protected o:J

.field protected p:J

.field protected q:J

.field r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/b/b/a/a/d/a/h;

    invoke-direct {v0}, Le/b/b/a/a/d/a/h;-><init>()V

    sput-object v0, Le/b/b/a/a/d/a/g;->t:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Le/b/b/a/a/a/d;Ljava/lang/String;JJJI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/b/b/a/a/d/a/a;-><init>(Le/b/b/a/a/a/d;Ljava/lang/String;)V

    .line 2
    iput-wide p3, p0, Le/b/b/a/a/d/a/g;->o:J

    .line 3
    iput-wide p5, p0, Le/b/b/a/a/d/a/g;->p:J

    .line 4
    iput-wide p7, p0, Le/b/b/a/a/d/a/g;->q:J

    .line 5
    iput-object p2, p0, Le/b/b/a/a/d/a/g;->r:Ljava/lang/String;

    .line 6
    div-int/lit8 p9, p9, 0x2

    iput p9, p0, Le/b/b/a/a/d/a/g;->j:I

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    iget p2, p0, Le/b/b/a/a/d/a/g;->j:I

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Le/b/b/a/a/d/a/g;->i:Ljava/lang/StringBuilder;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Le/b/b/a/a/d/a/g;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$$"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private e()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/b/b/a/a/d/a/g;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 2
    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Le/b/b/a/a/d/a/a;->a([BII)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v2, p0, Le/b/b/a/a/d/a/g;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return v1

    .line 4
    :catchall_0
    :try_start_1
    iget-boolean v1, p0, Le/b/b/a/a/d/a/g;->k:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Le/b/b/a/a/d/a/g;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :cond_0
    iget-object v1, p0, Le/b/b/a/a/d/a/g;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return v0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Le/b/b/a/a/d/a/g;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7
    throw v1
.end method


# virtual methods
.method protected a()Ljava/io/File;
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Le/b/b/a/a/d/a/g;->o:J

    div-long/2addr v0, v2

    mul-long v0, v0, v2

    iput-wide v0, p0, Le/b/b/a/a/d/a/g;->m:J

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-wide v1, p0, Le/b/b/a/a/d/a/g;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/b/b/a/a/d/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/b/b/a/a/d/a/g;->l:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Le/b/b/a/a/d/a/g;->l:Ljava/io/File;

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndRollFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Le/b/b/a/a/d/a/g;->d()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentLogDir is NULl with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/b/b/a/a/d/a/g;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0

    .line 10
    :cond_1
    :try_start_0
    iget-wide v5, p0, Le/b/b/a/a/d/a/g;->p:J

    iget-wide v7, p0, Le/b/b/a/a/d/a/g;->q:J

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Le/b/b/a/a/d/a/g;->a(Ljava/io/File;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 11
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Le/b/b/a/a/d/a/g;->l:Ljava/io/File;

    .line 12
    invoke-static {}, Le/b/b/a/a/e/j;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Le/b/b/a/a/d/a/i;

    invoke-direct {v1, p0}, Le/b/b/a/a/d/a/i;-><init>(Le/b/b/a/a/d/a/g;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Le/b/b/a/a/d/a/g;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Extras"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 15
    :cond_2
    iget-object v0, p0, Le/b/b/a/a/d/a/g;->l:Ljava/io/File;

    return-object v0
.end method

.method protected a(Ljava/io/File;JJ)V
    .locals 14

    if-eqz p1, :cond_a

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_a

    .line 18
    array-length v2, v1

    if-nez v2, :cond_1

    goto/16 :goto_6

    .line 19
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, p2

    add-long v2, v2, p2

    .line 20
    array-length v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    const-string v9, "cleanExpiresFile: "

    if-ge v8, v6, :cond_5

    aget-object v10, v1, v8

    if-eqz v10, :cond_4

    .line 21
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_2

    .line 22
    :cond_2
    :try_start_1
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v7

    .line 23
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v13, v11, v4

    if-ltz v13, :cond_3

    cmp-long v13, v11, v2

    if-lez v13, :cond_4

    .line 24
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 25
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is too old !"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 26
    :catchall_1
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 27
    :cond_5
    invoke-static {p1}, Le/b/b/a/a/e/g;->c(Ljava/io/File;)J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-gez v3, :cond_6

    return-void

    .line 28
    :cond_6
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    nop

    :goto_3
    if-eqz v0, :cond_a

    .line 29
    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_7

    goto :goto_6

    .line 30
    :cond_7
    sget-object v1, Le/b/b/a/a/d/a/g;->t:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 31
    array-length v1, v0

    div-int/2addr v1, v2

    :goto_4
    if-ge v7, v1, :cond_a

    .line 32
    aget-object v2, v0, v7

    if-eqz v2, :cond_9

    .line 33
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_5

    .line 34
    :cond_8
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is too large !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    .line 36
    :catchall_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cleanExpiresFile"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    :goto_6
    return-void
.end method

.method protected declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/b/b/a/a/d/a/g;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/b/b/a/a/d/a/g;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appender flush: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/b/b/a/a/d/a/g;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Le/b/b/a/a/d/a/g;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 6
    :try_start_0
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v0

    const-string v1, "LogFileAppender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogFileAppender write log: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/b/b/a/a/d/a/g;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Le/b/b/a/a/d/a/g;->s:I

    add-int/2addr v0, v1

    iget v1, p0, Le/b/b/a/a/d/a/g;->j:I

    if-le v0, v1, :cond_2

    .line 10
    invoke-direct {p0}, Le/b/b/a/a/d/a/g;->e()Z

    .line 11
    iget-object v0, p0, Le/b/b/a/a/d/a/g;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Le/b/b/a/a/d/a/g;->s:I

    add-int/2addr v0, v1

    iget v1, p0, Le/b/b/a/a/d/a/g;->j:I

    if-le v0, v1, :cond_1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$$"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "UTF-8"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 14
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Le/b/b/a/a/d/a/a;->a([BII)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 15
    :catchall_0
    :try_start_3
    iget-boolean p1, p0, Le/b/b/a/a/d/a/g;->k:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Le/b/b/a/a/d/a/g;->k:Z

    goto :goto_0

    .line 17
    :cond_1
    invoke-direct {p0, p1}, Le/b/b/a/a/d/a/g;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-direct {p0, p1}, Le/b/b/a/a/d/a/g;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected c()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleExtrasOnGetNewFile, priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    return-void
.end method

.method protected d()Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/a/g;->n:Ljava/io/File;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/b/b/a/a/d/a/b;->c:Landroid/content/Context;

    iget-object v1, p0, Le/b/b/a/a/d/a/g;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Le/b/b/a/a/d/a/g;->n:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :catchall_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/b/b/a/a/d/a/g;->n:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/b/b/a/a/d/a/g;->n:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/b/b/a/a/d/a/g;->n:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :catchall_1
    :cond_1
    iget-object v0, p0, Le/b/b/a/a/d/a/g;->n:Ljava/io/File;

    return-object v0
.end method
