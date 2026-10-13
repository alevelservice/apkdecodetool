.class Lcom/facebook/imagepipeline/producers/n0$a;
.super Lcom/facebook/imagepipeline/producers/m;
.source "ResizeAndRotateProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m<",
        "Le/f/i/g/e;",
        "Le/f/i/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Z

.field private final d:Lcom/facebook/imagepipeline/transcoder/d;

.field private final e:Lcom/facebook/imagepipeline/producers/j0;

.field private f:Z

.field private final g:Lcom/facebook/imagepipeline/producers/t;

.field final synthetic h:Lcom/facebook/imagepipeline/producers/n0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/n0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;ZLcom/facebook/imagepipeline/transcoder/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/i/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/j0;",
            "Z",
            "Lcom/facebook/imagepipeline/transcoder/d;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/n0$a;->h:Lcom/facebook/imagepipeline/producers/n0;

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/n0$a;->f:Z

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/n0$a;->e:Lcom/facebook/imagepipeline/producers/j0;

    .line 5
    iget-object p3, p0, Lcom/facebook/imagepipeline/producers/n0$a;->e:Lcom/facebook/imagepipeline/producers/j0;

    .line 6
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/j0;->c()Le/f/i/i/b;

    move-result-object p3

    invoke-virtual {p3}, Le/f/i/i/b;->m()Ljava/lang/Boolean;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    :cond_0
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/producers/n0$a;->c:Z

    .line 8
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/n0$a;->d:Lcom/facebook/imagepipeline/transcoder/d;

    .line 9
    new-instance p3, Lcom/facebook/imagepipeline/producers/n0$a$a;

    invoke-direct {p3, p0, p1}, Lcom/facebook/imagepipeline/producers/n0$a$a;-><init>(Lcom/facebook/imagepipeline/producers/n0$a;Lcom/facebook/imagepipeline/producers/n0;)V

    .line 10
    new-instance p4, Lcom/facebook/imagepipeline/producers/t;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/n0;->a(Lcom/facebook/imagepipeline/producers/n0;)Ljava/util/concurrent/Executor;

    move-result-object p5

    const/16 v0, 0x64

    invoke-direct {p4, p5, p3, v0}, Lcom/facebook/imagepipeline/producers/t;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/t$d;I)V

    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/n0$a;->g:Lcom/facebook/imagepipeline/producers/t;

    .line 11
    iget-object p3, p0, Lcom/facebook/imagepipeline/producers/n0$a;->e:Lcom/facebook/imagepipeline/producers/j0;

    new-instance p4, Lcom/facebook/imagepipeline/producers/n0$a$b;

    invoke-direct {p4, p0, p1, p2}, Lcom/facebook/imagepipeline/producers/n0$a$b;-><init>(Lcom/facebook/imagepipeline/producers/n0$a;Lcom/facebook/imagepipeline/producers/n0;Lcom/facebook/imagepipeline/producers/Consumer;)V

    invoke-interface {p3, p4}, Lcom/facebook/imagepipeline/producers/j0;->a(Lcom/facebook/imagepipeline/producers/k0;)V

    return-void
.end method

.method private a(Le/f/i/g/e;)Le/f/i/g/e;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n0$a;->e:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/j0;->c()Le/f/i/i/b;

    move-result-object v0

    invoke-virtual {v0}, Le/f/i/i/b;->n()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/RotationOptions;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/RotationOptions;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/RotationOptions;->b()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/producers/n0$a;->b(Le/f/i/g/e;I)Le/f/i/g/e;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private a(Le/f/i/g/e;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/transcoder/b;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p2    # Lcom/facebook/imagepipeline/common/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/imagepipeline/transcoder/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/g/e;",
            "Lcom/facebook/imagepipeline/common/e;",
            "Lcom/facebook/imagepipeline/transcoder/b;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n0$a;->e:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/j0;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n0$a;->e:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/j0;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/f/i/g/e;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Le/f/i/g/e;->o()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lcom/facebook/imagepipeline/common/e;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/facebook/imagepipeline/common/e;->b:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "Unspecified"

    .line 62
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 63
    invoke-virtual {p1}, Le/f/i/g/e;->p()Le/f/h/c;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Image format"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Original size"

    .line 64
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Requested size"

    .line 65
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/n0$a;->g:Lcom/facebook/imagepipeline/producers/t;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/t;->b()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "queueTime"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Transcoder id"

    .line 67
    invoke-interface {v1, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Transcoding result"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {v1}, Lcom/facebook/common/internal/e;->copyOf(Ljava/util/Map;)Lcom/facebook/common/internal/e;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/n0$a;Le/f/i/g/e;ILcom/facebook/imagepipeline/transcoder/c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/n0$a;->a(Le/f/i/g/e;ILcom/facebook/imagepipeline/transcoder/c;)V

    return-void
.end method

.method private a(Le/f/i/g/e;ILcom/facebook/imagepipeline/transcoder/c;)V
    .locals 11

    .line 26
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n0$a;->e:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/j0;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n0$a;->e:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/j0;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResizeAndRotateProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n0$a;->e:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/j0;->c()Le/f/i/i/b;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n0$a;->h:Lcom/facebook/imagepipeline/producers/n0;

    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/n0;->b(Lcom/facebook/imagepipeline/producers/n0;)Le/f/c/f/h;

    move-result-object v1

    invoke-interface {v1}, Le/f/c/f/h;->a()Le/f/c/f/j;

    move-result-object v1

    const/4 v10, 0x0

    .line 29
    :try_start_0
    invoke-virtual {v0}, Le/f/i/i/b;->n()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v6

    .line 30
    invoke-virtual {v0}, Le/f/i/i/b;->l()Lcom/facebook/imagepipeline/common/e;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v3, 0x55

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v3, p3

    move-object v4, p1

    move-object v5, v1

    .line 32
    invoke-interface/range {v3 .. v9}, Lcom/facebook/imagepipeline/transcoder/c;->a(Le/f/i/g/e;Ljava/io/OutputStream;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/e;Le/f/h/c;Ljava/lang/Integer;)Lcom/facebook/imagepipeline/transcoder/b;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/transcoder/b;->a()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 34
    invoke-virtual {v0}, Le/f/i/i/b;->l()Lcom/facebook/imagepipeline/common/e;

    move-result-object v0

    .line 35
    invoke-interface {p3}, Lcom/facebook/imagepipeline/transcoder/c;->a()Ljava/lang/String;

    move-result-object p3

    .line 36
    invoke-direct {p0, p1, v0, v3, p3}, Lcom/facebook/imagepipeline/producers/n0$a;->a(Le/f/i/g/e;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/transcoder/b;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 37
    invoke-virtual {v1}, Le/f/c/f/j;->i()Le/f/c/f/g;

    move-result-object p1

    invoke-static {p1}, Le/f/c/g/a;->a(Ljava/io/Closeable;)Le/f/c/g/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 38
    :try_start_1
    new-instance p3, Le/f/i/g/e;

    invoke-direct {p3, p1}, Le/f/i/g/e;-><init>(Le/f/c/g/a;)V

    .line 39
    sget-object v0, Le/f/h/b;->a:Le/f/h/c;

    invoke-virtual {p3, v0}, Le/f/i/g/e;->a(Le/f/h/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    :try_start_2
    invoke-virtual {p3}, Le/f/i/g/e;->z()V

    .line 41
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n0$a;->e:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/j0;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v0

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/n0$a;->e:Lcom/facebook/imagepipeline/producers/j0;

    .line 42
    invoke-interface {v4}, Lcom/facebook/imagepipeline/producers/j0;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2, v10}, Lcom/facebook/imagepipeline/producers/l0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/transcoder/b;->a()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    or-int/lit8 p2, p2, 0x10

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p3, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    :try_start_3
    invoke-static {p3}, Le/f/i/g/e;->c(Le/f/i/g/e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    :try_start_4
    invoke-static {p1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 47
    invoke-virtual {v1}, Le/f/c/f/j;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 48
    :try_start_5
    invoke-static {p3}, Le/f/i/g/e;->c(Le/f/i/g/e;)V

    .line 49
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p3

    .line 50
    :try_start_6
    invoke-static {p1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 51
    throw p3

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p3, "Error while transcoding the image"

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    :try_start_7
    iget-object p3, p0, Lcom/facebook/imagepipeline/producers/n0$a;->e:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/j0;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object p3

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n0$a;->e:Lcom/facebook/imagepipeline/producers/j0;

    .line 54
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/j0;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, v2, p1, v10}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 55
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 56
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 57
    :cond_2
    invoke-virtual {v1}, Le/f/c/f/j;->close()V

    return-void

    :goto_0
    invoke-virtual {v1}, Le/f/c/f/j;->close()V

    .line 58
    throw p1
.end method

.method private a(Le/f/i/g/e;ILe/f/h/c;)V
    .locals 1

    .line 19
    sget-object v0, Le/f/h/b;->a:Le/f/h/c;

    if-eq p3, v0, :cond_1

    sget-object v0, Le/f/h/b;->k:Le/f/h/c;

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/n0$a;->a(Le/f/i/g/e;)Le/f/i/g/e;

    move-result-object p1

    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/n0$a;->b(Le/f/i/g/e;)Le/f/i/g/e;

    move-result-object p1

    .line 22
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/n0$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/producers/n0$a;->c:Z

    return p0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/n0$a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/n0$a;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/producers/n0$a;)Lcom/facebook/imagepipeline/transcoder/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/n0$a;->d:Lcom/facebook/imagepipeline/transcoder/d;

    return-object p0
.end method

.method private b(Le/f/i/g/e;)Le/f/i/g/e;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n0$a;->e:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/j0;->c()Le/f/i/i/b;

    move-result-object v0

    invoke-virtual {v0}, Le/f/i/i/b;->n()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/RotationOptions;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Le/f/i/g/e;->r()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Le/f/i/g/e;->r()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/producers/n0$a;->b(Le/f/i/g/e;I)Le/f/i/g/e;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private b(Le/f/i/g/e;I)Le/f/i/g/e;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 7
    invoke-static {p1}, Le/f/i/g/e;->b(Le/f/i/g/e;)Le/f/i/g/e;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Le/f/i/g/e;->close()V

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p2}, Le/f/i/g/e;->g(I)V

    :cond_0
    return-object v0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/n0$a;)Lcom/facebook/imagepipeline/producers/j0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/n0$a;->e:Lcom/facebook/imagepipeline/producers/j0;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/producers/n0$a;)Lcom/facebook/imagepipeline/producers/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/n0$a;->g:Lcom/facebook/imagepipeline/producers/t;

    return-object p0
.end method


# virtual methods
.method protected a(Le/f/i/g/e;I)V
    .locals 5
    .param p1    # Le/f/i/g/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/n0$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->a(I)Z

    move-result v0

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V

    :cond_1
    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Le/f/i/g/e;->p()Le/f/h/c;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/n0$a;->e:Lcom/facebook/imagepipeline/producers/j0;

    .line 9
    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/j0;->c()Le/f/i/i/b;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/n0$a;->d:Lcom/facebook/imagepipeline/transcoder/d;

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/producers/n0$a;->c:Z

    .line 10
    invoke-interface {v3, v1, v4}, Lcom/facebook/imagepipeline/transcoder/d;->createImageTranscoder(Le/f/h/c;Z)Lcom/facebook/imagepipeline/transcoder/c;

    move-result-object v3

    .line 11
    invoke-static {v3}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Lcom/facebook/imagepipeline/transcoder/c;

    .line 12
    invoke-static {v2, p1, v3}, Lcom/facebook/imagepipeline/producers/n0;->a(Le/f/i/i/b;Le/f/i/g/e;Lcom/facebook/imagepipeline/transcoder/c;)Le/f/c/j/e;

    move-result-object v2

    if-nez v0, :cond_3

    .line 13
    sget-object v3, Le/f/c/j/e;->UNSET:Le/f/c/j/e;

    if-ne v2, v3, :cond_3

    return-void

    .line 14
    :cond_3
    sget-object v3, Le/f/c/j/e;->YES:Le/f/c/j/e;

    if-eq v2, v3, :cond_4

    .line 15
    invoke-direct {p0, p1, p2, v1}, Lcom/facebook/imagepipeline/producers/n0$a;->a(Le/f/i/g/e;ILe/f/h/c;)V

    return-void

    .line 16
    :cond_4
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n0$a;->g:Lcom/facebook/imagepipeline/producers/t;

    invoke-virtual {v1, p1, p2}, Lcom/facebook/imagepipeline/producers/t;->a(Le/f/i/g/e;I)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    if-nez v0, :cond_6

    .line 17
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/n0$a;->e:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/j0;->f()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18
    :cond_6
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/n0$a;->g:Lcom/facebook/imagepipeline/producers/t;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/t;->c()Z

    :cond_7
    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    check-cast p1, Le/f/i/g/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/n0$a;->a(Le/f/i/g/e;I)V

    return-void
.end method
