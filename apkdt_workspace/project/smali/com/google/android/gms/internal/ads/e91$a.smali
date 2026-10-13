.class public Lcom/google/android/gms/internal/ads/e91$a;
.super Lcom/google/android/gms/internal/ads/l71;
.source "com.google.android.gms:play-services-ads-base@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/e91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/e91<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/e91$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/l71<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/e91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected f:Lcom/google/android/gms/internal/ads/e91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/e91;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/l71;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/e91$a;->e:Lcom/google/android/gms/internal/ads/e91;

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/e91$d;->d:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/ads/e91;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/e91;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/e91$a;->f:Lcom/google/android/gms/internal/ads/e91;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/e91$a;->g:Z

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/e91;Lcom/google/android/gms/internal/ads/e91;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/ya1;->a()Lcom/google/android/gms/internal/ads/ya1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/ya1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/db1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final b([BIILcom/google/android/gms/internal/ads/q81;)Lcom/google/android/gms/internal/ads/e91$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/ads/q81;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e91$a;->g()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/ya1;->a()Lcom/google/android/gms/internal/ads/ya1;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e91$a;->f:Lcom/google/android/gms/internal/ads/e91;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/ya1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/e91$a;->f:Lcom/google/android/gms/internal/ads/e91;

    const/4 v4, 0x0

    add-int/lit8 v5, p3, 0x0

    new-instance v6, Lcom/google/android/gms/internal/ads/s71;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/ads/s71;-><init>(Lcom/google/android/gms/internal/ads/q81;)V

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/db1;->a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/s71;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/o91; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 4
    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/o91;->zzazx()Lcom/google/android/gms/internal/ads/o91;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 5
    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/e91;)Lcom/google/android/gms/internal/ads/e91$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e91$a;->g()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e91$a;->f:Lcom/google/android/gms/internal/ads/e91;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/e91$a;->a(Lcom/google/android/gms/internal/ads/e91;Lcom/google/android/gms/internal/ads/e91;)V

    return-object p0
.end method

.method protected final synthetic a(Lcom/google/android/gms/internal/ads/m71;)Lcom/google/android/gms/internal/ads/l71;
    .locals 0

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/e91;

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/e91$a;->a(Lcom/google/android/gms/internal/ads/e91;)Lcom/google/android/gms/internal/ads/e91$a;

    return-object p0
.end method

.method public final synthetic a([BIILcom/google/android/gms/internal/ads/q81;)Lcom/google/android/gms/internal/ads/l71;
    .locals 0

    const/4 p2, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/e91$a;->b([BIILcom/google/android/gms/internal/ads/q81;)Lcom/google/android/gms/internal/ads/e91$a;

    return-object p0
.end method

.method public final synthetic a()Lcom/google/android/gms/internal/ads/oa1;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e91$a;->e:Lcom/google/android/gms/internal/ads/e91;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e91$a;->e:Lcom/google/android/gms/internal/ads/e91;

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/e91$d;->e:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/e91;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/ads/e91$a;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e91$a;->p()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/e91;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/e91$a;->a(Lcom/google/android/gms/internal/ads/e91;)Lcom/google/android/gms/internal/ads/e91$a;

    return-object v0
.end method

.method protected final g()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/e91$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e91$a;->f:Lcom/google/android/gms/internal/ads/e91;

    sget v1, Lcom/google/android/gms/internal/ads/e91$d;->d:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/e91;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/ads/e91;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/e91$a;->f:Lcom/google/android/gms/internal/ads/e91;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/e91$a;->a(Lcom/google/android/gms/internal/ads/e91;Lcom/google/android/gms/internal/ads/e91;)V

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/e91$a;->f:Lcom/google/android/gms/internal/ads/e91;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/e91$a;->g:Z

    :cond_0
    return-void
.end method

.method public h()Lcom/google/android/gms/internal/ads/e91;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/e91$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e91$a;->f:Lcom/google/android/gms/internal/ads/e91;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e91$a;->f:Lcom/google/android/gms/internal/ads/e91;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/ya1;->a()Lcom/google/android/gms/internal/ads/ya1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ya1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/db1;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/db1;->e(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/e91$a;->g:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e91$a;->f:Lcom/google/android/gms/internal/ads/e91;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/e91;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e91$a;->p()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/e91;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/wb1;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/wb1;-><init>(Lcom/google/android/gms/internal/ads/oa1;)V

    .line 4
    throw v1
.end method

.method public synthetic p()Lcom/google/android/gms/internal/ads/oa1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e91$a;->h()Lcom/google/android/gms/internal/ads/e91;

    move-result-object v0

    return-object v0
.end method

.method public synthetic s()Lcom/google/android/gms/internal/ads/oa1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e91$a;->i()Lcom/google/android/gms/internal/ads/e91;

    move-result-object v0

    return-object v0
.end method
