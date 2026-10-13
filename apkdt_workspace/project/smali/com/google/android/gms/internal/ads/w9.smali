.class public final Lcom/google/android/gms/internal/ads/w9;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/common/util/e;

.field private final b:Lcom/google/android/gms/internal/ads/ka;

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/z9;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private h:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private i:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private j:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private k:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private l:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/util/e;Lcom/google/android/gms/internal/ads/ka;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/w9;->d:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/w9;->g:J

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/w9;->h:J

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/w9;->i:J

    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/w9;->j:J

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/w9;->k:J

    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/w9;->l:J

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/w9;->a:Lcom/google/android/gms/common/util/e;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/w9;->b:Lcom/google/android/gms/internal/ads/ka;

    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/w9;->e:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/w9;->f:Ljava/lang/String;

    .line 13
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/w9;->c:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/w9;)Lcom/google/android/gms/common/util/e;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/w9;->a:Lcom/google/android/gms/common/util/e;

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 5

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/w9;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "seq_num"

    .line 16
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/w9;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "slotid"

    .line 17
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/w9;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ismediation"

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "treq"

    .line 19
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/w9;->k:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tresponse"

    .line 20
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/w9;->l:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "timp"

    .line 21
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/w9;->h:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tload"

    .line 22
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/w9;->i:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "pcc"

    .line 23
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/w9;->j:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tfetch"

    .line 24
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/w9;->g:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/w9;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/z9;

    .line 27
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/z9;->a()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "tclick"

    .line 28
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 29
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final a(J)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/w9;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/w9;->l:J

    .line 7
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/w9;->l:J

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/w9;->b:Lcom/google/android/gms/internal/ads/ka;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/ka;->a(Lcom/google/android/gms/internal/ads/w9;)V

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zztp;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/w9;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/w9;->a:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->c()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/w9;->k:J

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/w9;->b:Lcom/google/android/gms/internal/ads/ka;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/w9;->k:J

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ka;->a(Lcom/google/android/gms/internal/ads/zztp;J)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Z)V
    .locals 5

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/w9;->d:Ljava/lang/Object;

    monitor-enter p1

    .line 11
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/w9;->l:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/w9;->a:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/w9;->i:J

    .line 13
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/w9;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/w9;->l:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/w9;->h:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/w9;->a:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->c()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/w9;->h:J

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/w9;->b:Lcom/google/android/gms/internal/ads/ka;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/ka;->a(Lcom/google/android/gms/internal/ads/w9;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/w9;->b:Lcom/google/android/gms/internal/ads/ka;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ka;->a()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/w9;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/w9;->l:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/z9;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/z9;-><init>(Lcom/google/android/gms/internal/ads/w9;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/z9;->d()V

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/w9;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/w9;->j:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/w9;->j:J

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/w9;->b:Lcom/google/android/gms/internal/ads/ka;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ka;->b()V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/w9;->b:Lcom/google/android/gms/internal/ads/ka;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/ka;->a(Lcom/google/android/gms/internal/ads/w9;)V

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/w9;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/w9;->l:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/w9;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/w9;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/z9;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/z9;->b()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/z9;->c()V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/w9;->b:Lcom/google/android/gms/internal/ads/ka;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/ka;->a(Lcom/google/android/gms/internal/ads/w9;)V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/w9;->e:Ljava/lang/String;

    return-object v0
.end method
