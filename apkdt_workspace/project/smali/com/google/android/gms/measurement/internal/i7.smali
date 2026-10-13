.class final Lcom/google/android/gms/measurement/internal/i7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:Ljava/lang/String;

.field private final synthetic i:Lcom/google/android/gms/measurement/internal/zzn;

.field private final synthetic j:Lcom/google/android/gms/measurement/internal/u6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/u6;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i7;->j:Lcom/google/android/gms/measurement/internal/u6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/i7;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/i7;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/i7;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/i7;->h:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/i7;->i:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i7;->e:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i7;->j:Lcom/google/android/gms/measurement/internal/u6;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/u6;->d(Lcom/google/android/gms/measurement/internal/u6;)Lcom/google/android/gms/measurement/internal/zzdx;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i7;->j:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/u6;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Failed to get conditional properties"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/i7;->f:Ljava/lang/String;

    .line 5
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/i7;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/i7;->h:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i7;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i7;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 9
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/i7;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/i7;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/i7;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/i7;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/i7;->i:Lcom/google/android/gms/measurement/internal/zzn;

    .line 11
    invoke-interface {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzn;)Ljava/util/List;

    move-result-object v1

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/i7;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/i7;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/i7;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/i7;->h:Ljava/lang/String;

    .line 14
    invoke-interface {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzdx;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i7;->j:Lcom/google/android/gms/measurement/internal/u6;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/u6;->e(Lcom/google/android/gms/measurement/internal/u6;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i7;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 18
    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/i7;->j:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/u6;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    const-string v3, "Failed to get conditional properties"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/i7;->f:Ljava/lang/String;

    .line 20
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/i7;->g:Ljava/lang/String;

    .line 21
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i7;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i7;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 24
    :goto_1
    monitor-exit v0

    return-void

    .line 25
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/i7;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_1
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
