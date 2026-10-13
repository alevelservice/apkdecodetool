.class final Lcom/google/android/gms/measurement/internal/j7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Z

.field private final synthetic h:Lcom/google/android/gms/measurement/internal/zzn;

.field private final synthetic i:Lcom/google/android/gms/internal/measurement/zzp;

.field private final synthetic j:Lcom/google/android/gms/measurement/internal/u6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/u6;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzn;Lcom/google/android/gms/internal/measurement/zzp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j7;->j:Lcom/google/android/gms/measurement/internal/u6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/j7;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/j7;->f:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/j7;->g:Z

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/j7;->h:Lcom/google/android/gms/measurement/internal/zzn;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/j7;->i:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "Failed to get user properties"

    .line 1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j7;->j:Lcom/google/android/gms/measurement/internal/u6;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/u6;->d(Lcom/google/android/gms/measurement/internal/u6;)Lcom/google/android/gms/measurement/internal/zzdx;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j7;->j:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/u6;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/j7;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/j7;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j7;->j:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u6;->j()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j7;->i:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;Landroid/os/Bundle;)V

    return-void

    .line 7
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/j7;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/j7;->f:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/j7;->g:Z

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/j7;->h:Lcom/google/android/gms/measurement/internal/zzn;

    .line 8
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzn;)Ljava/util/List;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/r8;->a(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j7;->j:Lcom/google/android/gms/measurement/internal/u6;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/u6;->e(Lcom/google/android/gms/measurement/internal/u6;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j7;->j:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u6;->j()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j7;->i:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 12
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/j7;->j:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/u6;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/j7;->e:Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j7;->j:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u6;->j()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j7;->i:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;Landroid/os/Bundle;)V

    return-void

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j7;->j:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/u6;->j()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/j7;->i:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;Landroid/os/Bundle;)V

    throw v0
.end method
