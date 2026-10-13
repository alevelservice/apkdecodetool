.class final Lcom/google/android/gms/internal/auth/zzat;
.super Lcom/google/android/gms/internal/auth/zzaj;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/auth/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzat;->e:Lcom/google/android/gms/internal/auth/i;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzaj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzat;->e:Lcom/google/android/gms/internal/auth/i;

    new-instance v1, Lcom/google/android/gms/internal/auth/k;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/auth/k;-><init>(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method
