.class final Lcom/google/android/gms/internal/clearcut/i5;
.super Lcom/google/android/gms/common/api/internal/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/d<",
        "Lcom/google/android/gms/common/api/Status;",
        "Lcom/google/android/gms/internal/clearcut/l5;",
        ">;"
    }
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/clearcut/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/clearcut/zze;Lcom/google/android/gms/common/api/f;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/clearcut/a;->o:Lcom/google/android/gms/common/api/a;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/d;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/f;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/i5;->o:Lcom/google/android/gms/clearcut/zze;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .locals 0

    return-object p1
.end method

.method protected final synthetic a(Lcom/google/android/gms/common/api/a$b;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/clearcut/l5;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/clearcut/zzi;-><init>(Lcom/google/android/gms/internal/clearcut/i5;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/i5;->o:Lcom/google/android/gms/clearcut/zze;

    iget-object v2, v1, Lcom/google/android/gms/clearcut/zze;->n:Lcom/google/android/gms/clearcut/a$c;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/clearcut/zze;->m:Lcom/google/android/gms/internal/clearcut/j5;

    iget-object v2, v2, Lcom/google/android/gms/internal/clearcut/j5;->o:[B

    array-length v2, v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/clearcut/zze;->m:Lcom/google/android/gms/internal/clearcut/j5;

    iget-object v3, v1, Lcom/google/android/gms/clearcut/zze;->n:Lcom/google/android/gms/clearcut/a$c;

    invoke-interface {v3}, Lcom/google/android/gms/clearcut/a$c;->a()[B

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/clearcut/j5;->o:[B

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/clearcut/zze;->o:Lcom/google/android/gms/clearcut/a$c;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/clearcut/zze;->m:Lcom/google/android/gms/internal/clearcut/j5;

    iget-object v2, v2, Lcom/google/android/gms/internal/clearcut/j5;->v:[B

    array-length v2, v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/clearcut/zze;->m:Lcom/google/android/gms/internal/clearcut/j5;

    iget-object v3, v1, Lcom/google/android/gms/clearcut/zze;->o:Lcom/google/android/gms/clearcut/a$c;

    invoke-interface {v3}, Lcom/google/android/gms/clearcut/a$c;->a()[B

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/clearcut/j5;->v:[B

    :cond_1
    iget-object v2, v1, Lcom/google/android/gms/clearcut/zze;->m:Lcom/google/android/gms/internal/clearcut/j5;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/u4;->a()I

    move-result v3

    new-array v3, v3, [B

    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/internal/clearcut/u4;->a(Lcom/google/android/gms/internal/clearcut/u4;[BII)V

    iput-object v3, v1, Lcom/google/android/gms/clearcut/zze;->f:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzn;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/i5;->o:Lcom/google/android/gms/clearcut/zze;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzn;->zza(Lcom/google/android/gms/internal/clearcut/zzl;Lcom/google/android/gms/clearcut/zze;)V

    return-void

    :catch_0
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    const-string v1, "MessageProducer"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/d;->c(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
