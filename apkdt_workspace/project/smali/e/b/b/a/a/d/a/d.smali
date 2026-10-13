.class public Le/b/b/a/a/d/a/d;
.super Le/b/b/a/a/d/a/f;
.source "DiagnoseLogAppender.java"


# static fields
.field private static final s:I = 0x2

.field private static final t:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private h:Ljava/io/File;

.field private i:J

.field private j:J

.field private k:Ljava/io/File;

.field private volatile l:J

.field private volatile m:J

.field private volatile n:D

.field private o:Ljava/lang/StringBuilder;

.field private p:I

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/b/b/a/a/d/a/e;

    invoke-direct {v0}, Le/b/b/a/a/d/a/e;-><init>()V

    sput-object v0, Le/b/b/a/a/d/a/d;->t:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Le/b/b/a/a/a/d;Ljava/lang/String;JJJI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/b/b/a/a/d/a/f;-><init>(Le/b/b/a/a/a/d;Ljava/lang/String;)V

    const-wide/high16 p1, 0x3fd0000000000000L    # 0.25

    .line 2
    iput-wide p1, p0, Le/b/b/a/a/d/a/d;->n:D

    .line 3
    iput-wide p3, p0, Le/b/b/a/a/d/a/d;->j:J

    .line 4
    iput-wide p5, p0, Le/b/b/a/a/d/a/d;->l:J

    .line 5
    iput-wide p7, p0, Le/b/b/a/a/d/a/d;->m:J

    .line 6
    div-int/lit8 p9, p9, 0x2

    iput p9, p0, Le/b/b/a/a/d/a/d;->p:I

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    iget p2, p0, Le/b/b/a/a/d/a/d;->p:I

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Le/b/b/a/a/d/a/d;->o:Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Ljava/io/File;JJ)V
    .locals 14

    const-string v1, "cleanExpiresFile"

    const-string v2, "Appender"

    if-eqz p1, :cond_8

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v3, 0x0

    .line 37
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 38
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    invoke-interface {v0, v2, v1, v4}, Le/b/b/a/a/d/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v3, :cond_7

    .line 39
    array-length v0, v3

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 40
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, p2

    add-long v4, v4, p2

    .line 41
    array-length v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_5

    aget-object v11, v3, v10

    if-eqz v11, :cond_4

    .line 42
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 43
    :cond_2
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v12, "_"

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v9

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 45
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v0, v12, v6

    if-ltz v0, :cond_3

    cmp-long v0, v12, v4

    if-lez v0, :cond_4

    .line 46
    :cond_3
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cleanExpiresFile: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is too old !"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 48
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v12

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v12, v2, v11, v0}, Le/b/b/a/a/d/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 49
    :cond_5
    invoke-static {p1}, Le/b/b/a/a/e/g;->c(Ljava/io/File;)J

    move-result-wide v3

    cmp-long v0, v3, p4

    if-gez v0, :cond_6

    return-void

    .line 50
    :cond_6
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v3, p0

    .line 51
    :try_start_3
    invoke-virtual {p0, v0}, Le/b/b/a/a/d/a/d;->a([Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, p0

    .line 52
    :goto_3
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v4

    invoke-interface {v4, v2, v1, v0}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :cond_7
    :goto_5
    move-object v3, p0

    return-void

    :cond_8
    :goto_6
    move-object v3, p0

    return-void
.end method

.method private d()Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/a/d;->k:Ljava/io/File;

    const-string v1, "getCurrentLogsDir"

    const-string v2, "Appender"

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/b/b/a/a/d/a/b;->c:Landroid/content/Context;

    iget-object v3, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Le/b/b/a/a/e/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Le/b/b/a/a/d/a/d;->k:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v3

    invoke-interface {v3, v2, v1, v0}, Le/b/b/a/a/d/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Le/b/b/a/a/d/a/d;->k:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/b/b/a/a/d/a/d;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Le/b/b/a/a/d/a/d;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 6
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v3

    invoke-interface {v3, v2, v1, v0}, Le/b/b/a/a/d/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_1
    :goto_1
    iget-object v0, p0, Le/b/b/a/a/d/a/d;->k:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/io/File;
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Le/b/b/a/a/d/a/d;->j:J

    div-long/2addr v0, v2

    mul-long v0, v0, v2

    iput-wide v0, p0, Le/b/b/a/a/d/a/d;->i:J

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-wide v1, p0, Le/b/b/a/a/d/a/d;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/b/b/a/a/d/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Le/b/b/a/a/e/j;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "_dev"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "applog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Le/b/b/a/a/d/a/d;->h:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/b/b/a/a/d/a/d;->h:Ljava/io/File;

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 9
    :cond_1
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndRollFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Appender"

    invoke-interface {v1, v3, v2}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Le/b/b/a/a/d/a/d;->h:Ljava/io/File;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p0}, Le/b/b/a/a/d/a/d;->b()V

    .line 12
    :cond_2
    invoke-direct {p0}, Le/b/b/a/a/d/a/d;->d()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_3

    .line 13
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentLogDir is NULl with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 14
    :cond_3
    :try_start_0
    iget-wide v6, p0, Le/b/b/a/a/d/a/d;->l:J

    iget-wide v8, p0, Le/b/b/a/a/d/a/d;->m:J

    move-object v4, p0

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Le/b/b/a/a/d/a/d;->a(Ljava/io/File;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 15
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v4

    const-string v5, "clean currentLogDir"

    invoke-interface {v4, v3, v5, v2}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Le/b/b/a/a/d/a/d;->h:Ljava/io/File;

    .line 17
    :cond_4
    iget-object v0, p0, Le/b/b/a/a/d/a/d;->h:Ljava/io/File;

    return-object v0
.end method

.method public a(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 62
    iput-wide p1, p0, Le/b/b/a/a/d/a/d;->n:D

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Le/b/b/a/a/d/a/d;->l:J

    :cond_0
    return-void
.end method

.method a([Ljava/io/File;)V
    .locals 7

    const-string v0, "Appender"

    if-eqz p1, :cond_3

    .line 53
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 54
    :cond_0
    sget-object v1, Le/b/b/a/a/d/a/d;->t:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 55
    array-length v1, p1

    int-to-double v1, v1

    iget-wide v3, p0, Le/b/b/a/a/d/a/d;->n:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 56
    aget-object v3, p1, v2

    if-eqz v3, :cond_2

    .line 57
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 58
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 59
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanExpiresFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is too large !"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 60
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cleanExpiresFile"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v0, v3, v4}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    .line 18
    :try_start_0
    invoke-virtual {p0}, Le/b/b/a/a/d/a/d;->a()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 19
    invoke-static {v1, p1, v0}, Le/b/b/a/a/e/g;->a(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return v0

    :catchall_0
    move-exception p1

    .line 20
    iget-boolean v1, p0, Le/b/b/a/a/d/a/b;->e:Z

    if-nez v1, :cond_1

    .line 21
    iput-boolean v0, p0, Le/b/b/a/a/d/a/b;->e:Z

    .line 22
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    iget-object v1, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    const-string v2, "Appender"

    invoke-interface {v0, v2, v1, p1}, Le/b/b/a/a/d/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected a([BII)Z
    .locals 3

    const-string v0, "Appender"

    const/4 v1, 0x1

    .line 23
    :try_start_0
    invoke-static {p1, p2, p3}, Le/b/b/a/a/e/j;->a([BII)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 24
    iget-boolean p2, p0, Le/b/b/a/a/d/a/b;->f:Z

    if-nez p2, :cond_0

    .line 25
    iput-boolean v1, p0, Le/b/b/a/a/d/a/b;->f:Z

    .line 26
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object p2

    iget-object p3, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    invoke-interface {p2, v0, p3, p1}, Le/b/b/a/a/d/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    return p2

    .line 27
    :cond_1
    invoke-static {}, Le/b/b/a/a/e/h;->b()Le/b/b/a/a/e/h;

    move-result-object p3

    array-length v2, p1

    invoke-virtual {p3, p1, p2, v2}, Le/b/b/a/a/e/h;->a([BII)[B

    move-result-object p1

    .line 28
    invoke-static {}, Le/b/b/a/a/e/h;->b()Le/b/b/a/a/e/h;

    move-result-object p3

    invoke-virtual {p3}, Le/b/b/a/a/e/h;->a()[B

    move-result-object p3

    if-eqz p1, :cond_4

    if-nez p3, :cond_2

    goto :goto_1

    .line 29
    :cond_2
    array-length v1, p3

    const/16 v2, 0x7fff

    if-le v1, v2, :cond_3

    .line 30
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the length of secure seed is too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v0, p3}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    .line 31
    :cond_3
    invoke-virtual {p0}, Le/b/b/a/a/d/a/d;->a()Ljava/io/File;

    move-result-object p2

    .line 32
    invoke-static {p1, p3, p2}, Le/b/b/a/a/e/g;->a([B[BLjava/io/File;)Z

    move-result p1

    return p1

    .line 33
    :cond_4
    :goto_1
    iget-boolean p1, p0, Le/b/b/a/a/d/a/d;->r:Z

    if-nez p1, :cond_5

    .line 34
    iput-boolean v1, p0, Le/b/b/a/a/d/a/d;->r:Z

    .line 35
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object p1

    const-string p3, "HybridEncryption.encrypt occured error"

    invoke-interface {p1, v0, p3}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return p2
.end method

.method protected declared-synchronized b()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/b/b/a/a/d/a/d;->o:Ljava/lang/StringBuilder;

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
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    const-string v1, "Appender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Le/b/b/a/a/d/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " appender flush: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/b/b/a/a/d/a/d;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Le/b/b/a/a/d/d/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Le/b/b/a/a/d/a/d;->c()Z
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

.method public b(I)V
    .locals 2

    if-lez p1, :cond_0

    mul-int/lit16 p1, p1, 0x400

    mul-int/lit16 p1, p1, 0x400

    int-to-long v0, p1

    .line 20
    iput-wide v0, p0, Le/b/b/a/a/d/a/d;->m:J

    :cond_0
    return-void
.end method

.method protected declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 6
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/b/b/a/a/d/a/d;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Le/b/b/a/a/d/a/d;->s:I

    add-int/2addr v0, v1

    iget v1, p0, Le/b/b/a/a/d/a/d;->p:I

    if-le v0, v1, :cond_2

    .line 9
    invoke-virtual {p0}, Le/b/b/a/a/d/a/d;->c()Z

    .line 10
    iget-object v0, p0, Le/b/b/a/a/d/a/d;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Le/b/b/a/a/d/a/d;->s:I

    add-int/2addr v0, v1

    iget v1, p0, Le/b/b/a/a/d/a/d;->p:I

    if-le v0, v1, :cond_1

    .line 11
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

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 13
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Le/b/b/a/a/d/a/d;->a([BII)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 14
    :try_start_3
    iget-boolean v0, p0, Le/b/b/a/a/d/a/d;->q:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Le/b/b/a/a/d/a/d;->q:Z

    .line 16
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    const-string v1, "Appender"

    const-string v2, "appendLogEvent"

    invoke-interface {v0, v1, v2, p1}, Le/b/b/a/a/d/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0, p1}, Le/b/b/a/a/d/a/d;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p0, p1}, Le/b/b/a/a/d/a/d;->c(Ljava/lang/String;)V
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

.method protected c(Ljava/lang/String;)V
    .locals 1

    .line 9
    iget-object v0, p0, Le/b/b/a/a/d/a/d;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$$"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method c()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/b/b/a/a/d/a/d;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 2
    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Le/b/b/a/a/d/a/d;->a([BII)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v2, p0, Le/b/b/a/a/d/a/d;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return v1

    :catchall_0
    move-exception v1

    .line 4
    :try_start_1
    iget-boolean v2, p0, Le/b/b/a/a/d/a/d;->q:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Le/b/b/a/a/d/a/d;->q:Z

    .line 6
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v2

    const-string v3, "Appender"

    const-string v4, "appendLogEvent"

    invoke-interface {v2, v3, v4, v1}, Le/b/b/a/a/d/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :cond_0
    iget-object v1, p0, Le/b/b/a/a/d/a/d;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return v0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Le/b/b/a/a/d/a/d;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8
    throw v1
.end method
