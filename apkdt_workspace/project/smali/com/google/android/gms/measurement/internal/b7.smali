.class final Lcom/google/android/gms/measurement/internal/b7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/measurement/internal/zzai;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Lcom/google/android/gms/internal/measurement/zzp;

.field private final synthetic h:Lcom/google/android/gms/measurement/internal/u6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/u6;Lcom/google/android/gms/measurement/internal/zzai;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b7;->h:Lcom/google/android/gms/measurement/internal/u6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/b7;->e:Lcom/google/android/gms/measurement/internal/zzai;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/b7;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/b7;->g:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b7;->h:Lcom/google/android/gms/measurement/internal/u6;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/u6;->d(Lcom/google/android/gms/measurement/internal/u6;)Lcom/google/android/gms/measurement/internal/zzdx;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b7;->h:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/u6;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Discarding data. Failed to send event to service to bundle"

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b7;->h:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/u6;->j()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b7;->g:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;[B)V

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b7;->e:Lcom/google/android/gms/measurement/internal/zzai;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/b7;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Lcom/google/android/gms/measurement/internal/zzai;Ljava/lang/String;)[B

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b7;->h:Lcom/google/android/gms/measurement/internal/u6;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/u6;->e(Lcom/google/android/gms/measurement/internal/u6;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b7;->h:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/u6;->j()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b7;->g:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;[B)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b7;->h:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/u6;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    const-string v3, "Failed to send event to the service to bundle"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b7;->h:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/u6;->j()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b7;->g:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;[B)V

    return-void

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b7;->h:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/u6;->j()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/b7;->g:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;[B)V

    throw v1
.end method
