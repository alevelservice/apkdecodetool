.class public Lcom/google/android/gms/internal/vision/s4$a;
.super Lcom/google/android/gms/internal/vision/b3;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/s4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/vision/s4<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/vision/s4$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/vision/b3<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final e:Lcom/google/android/gms/internal/vision/s4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected f:Lcom/google/android/gms/internal/vision/s4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected g:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/vision/s4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/b3;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/s4$a;->e:Lcom/google/android/gms/internal/vision/s4;

    .line 3
    sget v0, Lcom/google/android/gms/internal/vision/s4$e;->d:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/vision/s4;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/vision/s4;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/s4$a;->f:Lcom/google/android/gms/internal/vision/s4;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/s4$a;->g:Z

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/vision/s4;Lcom/google/android/gms/internal/vision/s4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/vision/n6;->a()Lcom/google/android/gms/internal/vision/n6;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/n6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/vision/r6;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final b([BIILcom/google/android/gms/internal/vision/d4;)Lcom/google/android/gms/internal/vision/s4$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/vision/d4;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/vision/s4$a;->g:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/s4$a;->e()V

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->g:Z

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/n6;->a()Lcom/google/android/gms/internal/vision/n6;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/s4$a;->f:Lcom/google/android/gms/internal/vision/s4;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/vision/n6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/s4$a;->f:Lcom/google/android/gms/internal/vision/s4;

    const/4 v5, 0x0

    add-int/lit8 v6, p3, 0x0

    new-instance v7, Lcom/google/android/gms/internal/vision/g3;

    invoke-direct {v7, p4}, Lcom/google/android/gms/internal/vision/g3;-><init>(Lcom/google/android/gms/internal/vision/d4;)V

    move-object v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/r6;->a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/g3;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/d5; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 6
    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/d5;->zzgm()Lcom/google/android/gms/internal/vision/d5;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 7
    throw p1
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/internal/vision/y2;)Lcom/google/android/gms/internal/vision/b3;
    .locals 0

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/vision/s4;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/s4$a;->a(Lcom/google/android/gms/internal/vision/s4;)Lcom/google/android/gms/internal/vision/s4$a;

    return-object p0
.end method

.method public final synthetic a([BIILcom/google/android/gms/internal/vision/d4;)Lcom/google/android/gms/internal/vision/b3;
    .locals 0

    const/4 p2, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/vision/s4$a;->b([BIILcom/google/android/gms/internal/vision/d4;)Lcom/google/android/gms/internal/vision/s4$a;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/vision/s4;)Lcom/google/android/gms/internal/vision/s4$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/s4$a;->e()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->f:Lcom/google/android/gms/internal/vision/s4;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/vision/s4$a;->a(Lcom/google/android/gms/internal/vision/s4;Lcom/google/android/gms/internal/vision/s4;)V

    return-object p0
.end method

.method public final synthetic c()Lcom/google/android/gms/internal/vision/d6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->e:Lcom/google/android/gms/internal/vision/s4;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->e:Lcom/google/android/gms/internal/vision/s4;

    .line 2
    sget v1, Lcom/google/android/gms/internal/vision/s4$e;->e:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/s4;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/vision/s4$a;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/s4$a;->u()Lcom/google/android/gms/internal/vision/d6;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vision/s4;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/s4$a;->a(Lcom/google/android/gms/internal/vision/s4;)Lcom/google/android/gms/internal/vision/s4$a;

    return-object v0
.end method

.method protected e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->f:Lcom/google/android/gms/internal/vision/s4;

    sget v1, Lcom/google/android/gms/internal/vision/s4$e;->d:I

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/s4;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/vision/s4;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/s4$a;->f:Lcom/google/android/gms/internal/vision/s4;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/s4$a;->a(Lcom/google/android/gms/internal/vision/s4;Lcom/google/android/gms/internal/vision/s4;)V

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->f:Lcom/google/android/gms/internal/vision/s4;

    return-void
.end method

.method public f()Lcom/google/android/gms/internal/vision/s4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->f:Lcom/google/android/gms/internal/vision/s4;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->f:Lcom/google/android/gms/internal/vision/s4;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/vision/n6;->a()Lcom/google/android/gms/internal/vision/n6;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/vision/n6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/vision/r6;->e(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->g:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->f:Lcom/google/android/gms/internal/vision/s4;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/internal/vision/s4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/s4$a;->u()Lcom/google/android/gms/internal/vision/d6;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/s4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/s4;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/vision/j7;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/vision/j7;-><init>(Lcom/google/android/gms/internal/vision/d6;)V

    .line 4
    throw v1
.end method

.method public synthetic j()Lcom/google/android/gms/internal/vision/d6;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/s4$a;->g()Lcom/google/android/gms/internal/vision/s4;

    move-result-object v0

    return-object v0
.end method

.method public synthetic u()Lcom/google/android/gms/internal/vision/d6;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/s4$a;->f()Lcom/google/android/gms/internal/vision/s4;

    move-result-object v0

    return-object v0
.end method
