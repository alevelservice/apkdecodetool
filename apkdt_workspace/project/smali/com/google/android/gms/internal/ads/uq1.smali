.class public abstract Lcom/google/android/gms/internal/ads/uq1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/ads/uq1<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/w1$a;

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Ljava/lang/Object;

.field private j:Lcom/google/android/gms/internal/ads/iv1;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/Integer;

.field private l:Lcom/google/android/gms/internal/ads/bu1;

.field private m:Z

.field private n:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private o:Lcom/google/android/gms/internal/ads/t;

.field private p:Lcom/google/android/gms/internal/ads/zw0;

.field private q:Lcom/google/android/gms/internal/ads/ls1;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/iv1;)V
    .locals 2
    .param p3    # Lcom/google/android/gms/internal/ads/iv1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lcom/google/android/gms/internal/ads/w1$a;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/w1$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/w1$a;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->e:Lcom/google/android/gms/internal/ads/w1$a;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->i:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/uq1;->m:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/uq1;->n:Z

    .line 6
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/uq1;->p:Lcom/google/android/gms/internal/ads/zw0;

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/uq1;->f:I

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uq1;->g:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/uq1;->j:Lcom/google/android/gms/internal/ads/iv1;

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/ads/ug1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ug1;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uq1;->o:Lcom/google/android/gms/internal/ads/t;

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 13
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 16
    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/uq1;->h:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/uq1;)Lcom/google/android/gms/internal/ads/w1$a;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/uq1;->e:Lcom/google/android/gms/internal/ads/w1$a;

    return-object p0
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/ads/uo1;)Lcom/google/android/gms/internal/ads/hw1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/uo1;",
            ")",
            "Lcom/google/android/gms/internal/ads/hw1<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final a(Lcom/google/android/gms/internal/ads/bu1;)Lcom/google/android/gms/internal/ads/uq1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bu1;",
            ")",
            "Lcom/google/android/gms/internal/ads/uq1<",
            "*>;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uq1;->l:Lcom/google/android/gms/internal/ads/bu1;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zw0;)Lcom/google/android/gms/internal/ads/uq1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zw0;",
            ")",
            "Lcom/google/android/gms/internal/ads/uq1<",
            "*>;"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uq1;->p:Lcom/google/android/gms/internal/ads/zw0;

    return-object p0
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final a(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->l:Lcom/google/android/gms/internal/ads/bu1;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/bu1;->a(Lcom/google/android/gms/internal/ads/uq1;I)V

    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/hw1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/hw1<",
            "*>;)V"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uq1;->q:Lcom/google/android/gms/internal/ads/ls1;

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 19
    invoke-interface {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ls1;->a(Lcom/google/android/gms/internal/ads/uq1;Lcom/google/android/gms/internal/ads/hw1;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final a(Lcom/google/android/gms/internal/ads/ls1;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uq1;->q:Lcom/google/android/gms/internal/ads/ls1;

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/r0;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uq1;->j:Lcom/google/android/gms/internal/ads/iv1;

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/iv1;->a(Lcom/google/android/gms/internal/ads/r0;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/w1$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->e:Lcom/google/android/gms/internal/ads/w1$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/w1$a;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/uq1;->f:I

    return v0
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/uq1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/ads/uq1<",
            "*>;"
        }
    .end annotation

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uq1;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method final b(Ljava/lang/String;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->l:Lcom/google/android/gms/internal/ads/bu1;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/bu1;->b(Lcom/google/android/gms/internal/ads/uq1;)V

    .line 4
    :cond_0
    sget-boolean v0, Lcom/google/android/gms/internal/ads/w1$a;->c:Z

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 7
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    new-instance v3, Lcom/google/android/gms/internal/ads/lt1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/lt1;-><init>(Lcom/google/android/gms/internal/ads/uq1;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uq1;->e:Lcom/google/android/gms/internal/ads/w1$a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/w1$a;->a(Ljava/lang/String;J)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uq1;->e:Lcom/google/android/gms/internal/ads/w1$a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/uq1;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/w1$a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->g:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/uq1;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/nu1;->zzbd:Lcom/google/android/gms/internal/ads/nu1;

    if-ne v0, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/uq1;->k:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->g:Ljava/lang/String;

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/ads/uq1;->f:I

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/zw0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->p:Lcom/google/android/gms/internal/ads/zw0;

    return-object v0
.end method

.method public g()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/uq1;->m:Z

    return v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->o:Lcom/google/android/gms/internal/ads/t;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/t;->a()I

    move-result v0

    return v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->o:Lcom/google/android/gms/internal/ads/t;

    return-object v0
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/uq1;->n:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/uq1;->n:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq1;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uq1;->q:Lcom/google/android/gms/internal/ads/ls1;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/ls1;->a(Lcom/google/android/gms/internal/ads/uq1;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/uq1;->h:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "0x"

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/uq1;->d()Z

    const-string v1, "[ ] "

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uq1;->g:Ljava/lang/String;

    .line 5
    sget-object v3, Lcom/google/android/gms/internal/ads/nu1;->zzbd:Lcom/google/android/gms/internal/ads/nu1;

    .line 6
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/uq1;->k:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/uq1;->h:I

    return v0
.end method
