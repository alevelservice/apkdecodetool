.class final Lcom/google/android/gms/measurement/internal/n7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/measurement/internal/zzdx;

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/m7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/m7;Lcom/google/android/gms/measurement/internal/zzdx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/n7;->f:Lcom/google/android/gms/measurement/internal/m7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/n7;->e:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/n7;->f:Lcom/google/android/gms/measurement/internal/m7;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/n7;->f:Lcom/google/android/gms/measurement/internal/m7;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/m7;->a(Lcom/google/android/gms/measurement/internal/m7;Z)Z

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/n7;->f:Lcom/google/android/gms/measurement/internal/m7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/m7;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/u6;->z()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/n7;->f:Lcom/google/android/gms/measurement/internal/m7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/m7;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/u6;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Connected to remote service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/n7;->f:Lcom/google/android/gms/measurement/internal/m7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/m7;->g:Lcom/google/android/gms/measurement/internal/u6;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/n7;->e:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/u6;->a(Lcom/google/android/gms/measurement/internal/zzdx;)V

    .line 6
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
