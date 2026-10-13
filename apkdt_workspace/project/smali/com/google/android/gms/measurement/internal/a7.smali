.class final Lcom/google/android/gms/measurement/internal/a7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/measurement/internal/zzn;

.field private final synthetic f:Lcom/google/android/gms/internal/measurement/zzp;

.field private final synthetic g:Lcom/google/android/gms/measurement/internal/u6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/u6;Lcom/google/android/gms/measurement/internal/zzn;Lcom/google/android/gms/internal/measurement/zzp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/u6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/a7;->e:Lcom/google/android/gms/measurement/internal/zzn;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/a7;->f:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/u6;->d(Lcom/google/android/gms/measurement/internal/u6;)Lcom/google/android/gms/measurement/internal/zzdx;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/u6;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u6;->j()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a7;->f:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/a7;->e:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-interface {v2, v3}, Lcom/google/android/gms/measurement/internal/zzdx;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/u6;->m()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/p5;->a(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/u6;->c()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/o3;->l:Lcom/google/android/gms/measurement/internal/v3;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/v3;->a(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/u6;->e(Lcom/google/android/gms/measurement/internal/u6;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u6;->j()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a7;->f:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/u6;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u6;->j()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a7;->f:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;Ljava/lang/String;)V

    return-void

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/u6;->j()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/a7;->f:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/r8;->a(Lcom/google/android/gms/internal/measurement/zzp;Ljava/lang/String;)V

    throw v0
.end method
