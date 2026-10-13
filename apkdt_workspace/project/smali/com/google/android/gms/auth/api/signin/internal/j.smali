.class final Lcom/google/android/gms/auth/api/signin/internal/j;
.super Lcom/google/android/gms/auth/api/signin/internal/m;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/signin/internal/m<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/m;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .locals 0

    return-object p1
.end method

.method protected final synthetic a(Lcom/google/android/gms/common/api/a$b;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/h;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->u()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/zzv;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/zzk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;-><init>(Lcom/google/android/gms/auth/api/signin/internal/j;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/h;->B()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzv;->zzd(Lcom/google/android/gms/auth/api/signin/internal/zzt;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method
