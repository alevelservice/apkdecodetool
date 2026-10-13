.class final Lcom/google/android/gms/measurement/internal/z6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/measurement/internal/zzn;

.field private final synthetic f:Z

.field private final synthetic g:Lcom/google/android/gms/measurement/internal/u6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/u6;Lcom/google/android/gms/measurement/internal/zzn;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/z6;->g:Lcom/google/android/gms/measurement/internal/u6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/z6;->e:Lcom/google/android/gms/measurement/internal/zzn;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/z6;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z6;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/u6;->d(Lcom/google/android/gms/measurement/internal/u6;)Lcom/google/android/gms/measurement/internal/zzdx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z6;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u6;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send app launch"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z6;->e:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/zzdx;->zza(Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 4
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/z6;->f:Z

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z6;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/u6;->q()Lcom/google/android/gms/measurement/internal/b3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/b3;->A()Z

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z6;->g:Lcom/google/android/gms/measurement/internal/u6;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/z6;->e:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/u6;->a(Lcom/google/android/gms/measurement/internal/zzdx;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z6;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/u6;->e(Lcom/google/android/gms/measurement/internal/u6;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z6;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/u6;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Failed to send app launch to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
