.class final Lcom/google/android/gms/internal/auth/zzav;
.super Lcom/google/android/gms/internal/auth/zzaj;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/auth/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzav;->e:Lcom/google/android/gms/internal/auth/j;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzaj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzav;->e:Lcom/google/android/gms/internal/auth/j;

    new-instance v1, Lcom/google/android/gms/internal/auth/l;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/auth/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lcom/google/android/gms/common/api/m;)V

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/auth/zzav;->e:Lcom/google/android/gms/internal/auth/j;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xbbe

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/g;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/proxy/a$b;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method
