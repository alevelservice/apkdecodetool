.class final Lcom/google/android/gms/measurement/internal/v6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Z

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/zzjn;

.field private final synthetic g:Lcom/google/android/gms/measurement/internal/zzn;

.field private final synthetic h:Lcom/google/android/gms/measurement/internal/u6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/u6;ZLcom/google/android/gms/measurement/internal/zzjn;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/v6;->h:Lcom/google/android/gms/measurement/internal/u6;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/v6;->e:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/v6;->f:Lcom/google/android/gms/measurement/internal/zzjn;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/v6;->g:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v6;->h:Lcom/google/android/gms/measurement/internal/u6;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/u6;->d(Lcom/google/android/gms/measurement/internal/u6;)Lcom/google/android/gms/measurement/internal/zzdx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v6;->h:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u6;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/v6;->h:Lcom/google/android/gms/measurement/internal/u6;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/v6;->e:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/v6;->f:Lcom/google/android/gms/measurement/internal/zzjn;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/v6;->g:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/u6;->a(Lcom/google/android/gms/measurement/internal/zzdx;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v6;->h:Lcom/google/android/gms/measurement/internal/u6;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/u6;->e(Lcom/google/android/gms/measurement/internal/u6;)V

    return-void
.end method
