.class final Lcom/google/android/gms/internal/auth-api/zzl;
.super Lcom/google/android/gms/internal/auth-api/zzh;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/auth-api/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth-api/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api/zzl;->e:Lcom/google/android/gms/internal/auth-api/i;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth-api/zzh;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zzl;->e:Lcom/google/android/gms/internal/auth-api/i;

    new-instance v1, Lcom/google/android/gms/internal/auth-api/h;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/auth-api/h;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zzl;->e:Lcom/google/android/gms/internal/auth-api/i;

    invoke-static {p1}, Lcom/google/android/gms/internal/auth-api/h;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/auth-api/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method
