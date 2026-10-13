.class final Lcom/google/android/gms/internal/auth/zzk;
.super Lcom/google/android/gms/internal/auth/zzn;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/auth/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzk;->e:Lcom/google/android/gms/internal/auth/o;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/accounts/Account;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzk;->e:Lcom/google/android/gms/internal/auth/o;

    new-instance v1, Lcom/google/android/gms/internal/auth/q;

    if-eqz p1, :cond_0

    .line 2
    sget-object v2, Lcom/google/android/gms/common/api/Status;->i:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/n;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    :goto_0
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/auth/q;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/accounts/Account;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method
